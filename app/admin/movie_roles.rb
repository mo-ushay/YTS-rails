ActiveAdmin.register MovieRole do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :acting_as, :role_played, :movie_id, :actor_id, :roles
  #
  # or
  #
  # permit_params do
  #   permitted = [:acting_as, :role_played, :movie_id, :actor_id, :roles]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
