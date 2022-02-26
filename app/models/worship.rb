class Worship < ApplicationRecord
  validates :text, presence: true

  belongs_to :user
  has_many :comments 
  

  def self.search(search)
    if search != ""
      Worship.where('text LIKE(?)', "%#{search}%")
    else
      Worship.all
    end
  end
end
