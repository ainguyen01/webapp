class Copay < ApplicationRecord

    belongs_to :user, :required => false
    has_many :comments, :dependent => :destroy
    has_many :dislikes, :dependent => :destroy
end
