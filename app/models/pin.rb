class Pin < ActiveRecord::Base
     belongs_to :user
     has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
     #had to add otherwise got errors when trying to upload pic with validation
     do_not_validate_attachment_file_type :image
end