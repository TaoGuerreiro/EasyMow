module ApplicationHelper

  def tractor_photo_path(tractor)
    tractor.photo.attached? ? cl_image_path(tractor.photo.key, height: 300, width: 400, crop: :fill) :  image_path('default-tractor.png')
  end
end
