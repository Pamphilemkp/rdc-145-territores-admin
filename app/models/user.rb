class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  include Trestle::Auth::ModelMethods
  include Trestle::Auth::ModelMethods::Rememberable
  attribute :email, :string
  has_secure_password
  attr_accessor :remember_token, :remember_token_expires_at
  validates :password, presence: true
end
