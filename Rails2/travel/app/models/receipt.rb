class Receipt < ApplicationRecord
	#belongs_to :imageable, polymorphic: true
	mount_uploader :attachment, AttachmentUploader 
	validates :name, presence: true
end
