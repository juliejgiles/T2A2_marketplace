class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
         validates_presence_of :username
         validates_uniqueness_of :username, :uniqueness => true
         validate :validate_username
         before_validation :sanitize_user_inputs
    
  has_many :stickers


# Sanitizes user input using regex format requirement
  private
    def sanitize_user_inputs
        self.username = username.downcase
        if self.bio != nil
          self.bio.gsub!(/[^0-9A-Za-z ,.'!"]/, '')
        else
        end
    end

 end

