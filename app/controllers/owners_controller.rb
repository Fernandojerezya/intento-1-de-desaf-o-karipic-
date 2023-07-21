class OwnersController < ApplicationController
  def home
    unless current_user.owner?
      redirect_to root_path, alert: 'Acceso denegado. Debes ser propietario para acceder a esta página.'
    end
  end
end
