class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_create :default_role       
  has_many :bookings
  has_many :courses, through: :bookings  

  def admin?
    self.role == 'admin'  
  end

  def default_role
    self.role = "student"  
  end      
end
