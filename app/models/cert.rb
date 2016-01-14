class Cert < ActiveRecord::Base
	belongs_to :user
	
	#has_attached_file :image
	#validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif","image/pdf"]

	has_attached_file :document
	validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
end
