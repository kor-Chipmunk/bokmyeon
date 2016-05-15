class User < ActiveRecord::Base
    belongs_to :post
    mount_uploader :avatar, ThumbnailUploader
end
