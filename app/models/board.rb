class Board < ApplicationRecord
    validates :title, presence: true
    mount_uploaders :images, ImageUploader
    serialize :images
end
