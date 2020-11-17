class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    
  has_many :stickers
  has_many :sales, class_name: 'Transactions', foreign_key: :seller_id
  has_many :purchases, class_name: 'Transactions', foreign_key: :buyer_id

  has_many :sold_stickers, through: :sales, source: :sticker
  has_many :purchased_stickers, through: :purchases, source: :sticker

  scope :sellers, -> { joins(:sales) }
  scope :buyers, -> { joins(:purchases) }

  has_secure_password
end
