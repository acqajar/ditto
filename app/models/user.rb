class User < ActiveRecord::Base
	has_many :photos
	has_many :user_places
	has_many :user_place_categories, through: :user_places
	has_many :matches
	validates :name, presence: true
	# :email
	has_many :authorizations
	# in case we ever include oauth beyond FB, eg Twitter, Insta, etc


	def add_provider(auth_hash)
  	# Check if the provider already exists, so we don't add it twice
	  unless authorizations.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
	    Authorization.create user: self, provider: auth_hash["provider"], uid: auth_hash["uid"]
  	end
  
  end
end
