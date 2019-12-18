class ApplicationController < ActionController::Base
  before_action :authenticate_user!


# def after_sign_in_path_for(resource)
#   # Here you can write logic based on roles to return different after sign in paths
#   if current_user.has_role? :Cinema
#     cinema_page_path
#   elsif current_user.has_role? :Intervenant
#     intervenant_page_path

#  elsif current_user.has_role? :Distributeur
#     distributeur_page_path
#   elsif current_user.has_role? :Intervenant
#     intervenant_page_path
#   else
#     new_user_path
#   end
# end
end


