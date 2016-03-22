class ImagesController < ApplicationController
      def new
        @image = Image.new
      end

      def create
        @image = Image.new(image_params) ##assign image params here
        if @image.save
          redirect_to @image
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
