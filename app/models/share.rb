class Share < ActiveRecord::Base
  has_attached_file :upload
  validates_attachment_content_type :upload, :content_type => /\Atext\/.*\Z/
end
