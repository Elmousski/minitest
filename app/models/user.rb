class User < ApplicationRecord
 belongs_to :user, optional: false


 validates :name, presence: true, format: { without: /\s/ }


 before_save { email.downcase! }
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email, presence: true, length: { maximum: 255 },
                   format: { with: VALID_EMAIL_REGEX },
                   uniqueness: true
end


