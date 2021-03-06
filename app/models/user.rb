class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        validates_presence_of :username
         validates_uniqueness_of :username, :uniqueness => true
        
  has_many :stickers
  has_many :conversations
  has_many :messages
 end

