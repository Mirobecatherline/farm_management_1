class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  def admin?
  has_role?(:admin)
end

def client?
  has_role?(:client)
end 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
