class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable   
  has_one :owner    
  has_many :tools
  # callback
  after_create do
    self.create_owner
  end
end
