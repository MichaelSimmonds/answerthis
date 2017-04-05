ActiveAdmin.register Questionnaire do

  permit_params :title, :description, :profile_id

  ActiveAdmin.register User do
    
  index do
    selectable_column
    column :title
    column :description
    column :profile_id

    actions
  end
end


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

end
