class PhotosController < ApplicationController

  def new
   post = Photo.save(params[:upload])
   flash[:notice] = "File has been uploaded successfully"
  end

end
