class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :email, :password, :password_confirmation, :presence => true

  has_one :room, :dependent => :destroy
  has_many :messages, :dependent => :destroy
end
