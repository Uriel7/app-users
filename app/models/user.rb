class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates_presence_of :name, :surnames, :phone, :address

  def is_image?
    %w(JPEG jpeg GIF gif TIFF tiff PNG png JPG jpg).include? self.image.url.split('.').last
  end
end
