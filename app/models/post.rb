class Post < ApplicationRecord
  has_attached_file :image, styles: { :medium => "640x" }
  validates :image, presence: true
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
