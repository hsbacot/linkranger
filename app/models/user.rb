class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :bio, :motto
  # attr_accessible :title, :body

  # forces a unique username
  validates :username, :uniqueness => true

  # Create permalink when created
  before_save :create_permalink

  # linking links to user
  has_many :links
    
  def to_param
    permalink
  end

  private
    def create_permalink
      self.permalink = username.downcase
    end

end
