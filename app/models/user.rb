class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  include Trestle::Auth::ModelMethods
  include Trestle::Auth::ModelMethods::Rememberable
  attribute :email, :string
  has_secure_password
  attr_accessor :remember_token, :remember_token_expires_at
  validates :password, presence: true
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :address, presence: true
  validates :phone, presence: true, length: { maximum: 20 }
  validate :photo_content_type

  private

  def photo_content_type
    if photo.present? && !photo.content_type.in?(%w(image/svg+xml image/jpeg image/jpg image/webm))
      errors.add(:photo, "must be a valid JPEG ,PNG,SVG,jpg and webm image")
    end
  end
end
