class Users::SessionsController < Devise::SessionsController
    # ...
  
    private
  
    def after_sign_in_path_for(resource)
      if resource.role == "owner"
        # Utilizamos el nombre de la ruta para la acción 'new' de photos.
        respond_to do |format|
          format.html { redirect_to new_photo_path }
          format.turbo_stream { render turbo_stream: turbo_stream.replace('some_target', partial: 'photos/new') }
        end
      else
        root_path
      end
    end
  end
  