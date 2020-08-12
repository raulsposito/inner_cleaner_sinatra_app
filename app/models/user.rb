class User < ActiveRecord::Base 
    has_secure_password

    has_many :jobs
    validates :name, :bio, :image_url, :email, presence: true
    validates :email, uniqueness: true 
end