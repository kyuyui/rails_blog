class Board < ApplicationRecord
    validates :title, presence: true
    mount_uploader :image, ImageUploader
    mount_uploader :images, ImageUploader
end
