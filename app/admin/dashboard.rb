ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Usuarios" do
          ul do
            li "Usuarios registrados: #{User.count}"
            li "Administradores registrados: #{AdminUser.count}"
          end
        end
      end
      column do
        panel "Camping" do
          ul do
            li "Campings creados: #{Camping.count}"
            li "Reservas creadas: #{Booking.count}"
            li "Reviews creados: #{Review.count}"
            li "Pagos online: #{Billing.count}"
          end
        end
      end
  end
  end # content
end
