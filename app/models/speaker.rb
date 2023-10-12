class Speaker < ApplicationRecord
  mount_uploader :photo, PhotoUploader

    validate :photo_content_type

    private

    def photo_content_type
      if photo.present? && !photo.content_type.in?(%w(image/svg+xml image/jpeg image/jpg image/webm))
        errors.add(:photo, "must be a valid JPEG ,PNG,SVG,jpg and webm image")
      end
    end
end
