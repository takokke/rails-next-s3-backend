class Api::V1::ImagesController < ApplicationController
    def index
        images = Image.order(created_at: :desc)
        render json: images, methods: [:thumbnail_url]
    end

    def create
        image = Image.new(image_params)
        if image.save
            render json: image, methods: [:thumbnail_url]
        else
            render json: image.errors, status: :unprocessable_entity
        end
    end

    def show
        image = Image.find(params[:id])
        render json: image, methods: [:thumbnail_url]
    end

    def destroy
        image = Image.find(params[:id])
        image.destroy!
        render json: image
    end

    private

    def image_params
        params.require(:image).permit(:thumbnail)
    end
end
