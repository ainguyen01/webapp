class Copay < ApplicationRecord

  def self.search(search)
    where("name LIKE ? ", "%#{search}%")
  end

    belongs_to :user, :required => false
    has_many :comments, :dependent => :destroy
    has_many :dislikes, :dependent => :destroy
end
