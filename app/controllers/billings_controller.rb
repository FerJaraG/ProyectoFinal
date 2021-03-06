class BillingsController < ApplicationController

	def pre_pay
	#Consultar carro de compra.
		booking = current_user.pay
		@currency = Currency.find(2).iso
	#Cálculo del total.
		response = HTTParty.get("http://www.mindicador.cl/api")
		dolar = response['dolar']['valor'].to_f
		@total = (booking.pluck('total_price')[0] / dolar).round(2)
		#Generando array de hashes con los productos.
		@bookings = booking.map do |book|
				bookpay = {}
				bookpay[:name] = "reserva#{book.id}"
				bookpay[:sku] = book.id.to_s
				bookpay[:price] = @total
				bookpay[:currency] = @currency
				bookpay[:quantity] = 1
				bookpay
		end


		@payment = PayPal::SDK::REST::Payment.new(
			{
				:intent =>  "sale",
				:payer =>  {
					:payment_method =>  "paypal" },
				:redirect_urls => {
					:return_url => "#{request.base_url}/billings/execute",
					:cancel_url => "#{request.base_url}/" },
				:transactions =>  [{
					:item_list => {
						:items => @bookings},
					:amount =>  {
						:total =>  @total.to_s,
						:currency =>  @currency },
					:description =>  "Pago de la reserva" }]}
		)

		if @payment.create
			#Redirige a PayPal
			redirect_url = @payment.links.find{|v| v.method == "REDIRECT" }.href
				redirect_to redirect_url
		else
			@payment.error
		end
	end

	def execute
		@currency = Currency.find(2).id
		@paypal_payment = PayPal::SDK::REST::Payment.find(params[:paymentId])

		if @paypal_payment.execute(payer_id: params[:PayerID])

			amount = @paypal_payment.transactions.first.amount.total

			billing = Billing.create(
				user_id: current_user.id,
				code: @paypal_payment.id,
				payment_method: 'paypal',
				amount: amount,
				currency_id: @currency
				)
				
			booking = current_user.pay
			booking.update_all(status: 'pagado', billing_id: billing.id)

			redirect_to campings_path, notice: "El pago se realizó con éxito!"
		else
			redirect_to campings_path, notice: "El pago no se realizó :("
		end
	end
end
