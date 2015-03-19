class PhotosController < ApplicationController

  before_action :find_photo, except: [:create]
  before_action :find_user

  def show
  end

  def create
    @photo = Photo.new(photo_params)
    @photo = params[:title][:photo]
  end

  #  post = @user.photos.new(photo_params)
  #  if photo.save
  #    flash[:notice] = "File has been uploaded successfully"
  #  else
  #    flash[:error] = "File not created."
  #  end
  #  redirect_to user_path(@user)
  # end

  def destroy
    @photo.photo = nil
    @phot.save
    @photo.destroy
    flash[:alert] = 'Photo Deleted'
    redirect_to user_path(@user)
  end

  private

    def find_user
      @user = User.find(params[:user_id])
    end

    def find_photo
      @photo = Photo.find(params[:id])
    end

    def photo_params
      params.require(:photo).permit(:photo, :title)
    end

end
