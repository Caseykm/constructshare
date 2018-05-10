class Tool < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  # mount_uploader :avatar, AvatarUploader
end
