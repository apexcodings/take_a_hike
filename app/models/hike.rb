class Hike < ApplicationRecord
  has_many :reviews

  has_attached_file :image, default_url: "/images/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
