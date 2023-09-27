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
  enum role: %i[user collaborator author admin]
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end

  private

  def photo_content_type
    if photo.present? && !photo.content_type.in?(%w(image/jpeg image/png))
      errors.add(:photo, "must be a valid JPEG or PNG image")
    end
  end
end
