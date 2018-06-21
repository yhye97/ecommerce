class Product < ApplicationRecord
	has_many :order_items
	mount_uploader :UploadUploader
end
