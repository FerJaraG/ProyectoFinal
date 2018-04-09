ActiveAdmin.register Camping do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

permit_params :name, :description, :user_id, :camping_type, :commune_id, :address, :info, :phone, :email, :tourism, :web, :facebook


form do |f|
    input :name
    input :description
    input :user_id, :as => :select, :collection => User.all.collect {|user| [user.name, user.id] }
    input :camping_type,:as => :select, :collection => Camping.camping_types.keys
    input :commune_id, :as => :select, :collection => Commune.all.collect {|commune| [commune.name, commune.id] }
    input :address
    input :info
    input :phone
    input :email
    input :tourism
    input :web
    input :facebook
    actions
   end
end

