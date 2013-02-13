class Link < ActiveRecord::Base
  attr_accessible :address, :description, :linkname

  belongs_to :user

  validates :user_id, presence: true
  validates :linkname, :length => { :maximum => 50 }
end
