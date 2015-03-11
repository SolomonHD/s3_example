class AddUploadToShare < ActiveRecord::Migration
  def change
    add_attachment :shares, :upload
  end
end
