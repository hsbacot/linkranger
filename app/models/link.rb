class Link < ActiveRecord::Base
  attr_accessible :address, :description

  belongs_to :user
end
