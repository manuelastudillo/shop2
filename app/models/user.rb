class User < ActiveRecord::Base
  authenticates_with_sorcery!

	belongs_to :comuna

 validates :password, length: { minimum: 3 }
validates :password, confirmation: true
validates :email, uniqueness: true
end