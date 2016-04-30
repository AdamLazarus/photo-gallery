class ImagesController < ApplicationController
      def new
        @image = current_user.images.build
      end

      def create
        @image = current_user.images.build(image_params)
        @image.user_id = current_user.id
        if @image.save
          redirect_to user_images_path(current_user, @image)
        end
      end

      def show
        @image = Image.find_by_id(params[:id])
      end


     private
       def image_params
         params.require(:image).permit(:image)
       end

    end
