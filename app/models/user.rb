require 'net/http'
class User < ActiveRecord::Base
	has_many :photos
	has_attached_file :avatar
	has_many :user_places
	has_many :user_place_categories, through: :user_places
	has_many :matches
<<<<<<< HEAD
	validates :name, :email, presence: true
	#has_attached_file :image
	#validates_attachment :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
=======
	validates :name, presence: true
	# :email
>>>>>>> ba49b5bf9b30f6afc5645c2495b8b74b9bab52aa
	has_many :authorizations
	# in case we ever include oauth beyond FB, eg Twitter, Insta, etc
<<<<<<< HEAD
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
=======
	# geocoded_by :address
	# after_validation :geocode, :if => :address_changed?
	before_save :find_lat_long_for_zipcode

	def address
		location
	end

>>>>>>> 25d10278b8286e2981efc3ed806f5832efd411d8

	def add_provider(auth_hash)
  	# Check if the provider already exists, so we don't add it twice
		unless authorizations.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
		    Authorization.create user: self, provider: auth_hash["provider"], uid: auth_hash["uid"]
		end
	end
  

  def nearby_users
  	User.find_by_sql "SELECT name,distance(#{self.latitude},#{self.longitude}
  				,latitude,longitude)
  			 FROM users left outer join user_places on users.id = user_places.user_id
  			 WHERE users.id != #{self.id} AND distance(#{self.latitude},#{self.longitude},latitude,longitude)<radius AND distance(#{self.latitude},#{self.longitude},latitude,longitude)<#{self.radius}" 
  end


  	def find_lat_long_for_zipcode
  		response = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{self.location}")
  		location = response.parsed_response['results'].first['geometry']['location']
  		self.latitude = location['lat']
  		self.longitude = location['lng']
  	end
# SELECT name,distance(34.0448583,-118.4484367,latitude,longitude) FROM users WHERE id != 7 AND distance(34.0448583,-118.4484367,latitude,longitude)<radius AND distance(34.0448583,-118.4484367,latitude,longitude)<6 
  	 # CREATE OR REPLACE FUNCTION distance(lat1 FLOAT, lon1 FLOAT, lat2 FLOAT, lon2 FLOAT) RETURNS FLOAT AS $$
				# 			DECLARE                                                   
			 #    			x float = 69.1 * (lat2 - lat1);                           
				# 		    y float = 69.1 * (lon2 - lon1) * cos(lat1 / 57.3);        
				# 		BEGIN                                                     
				# 		    RETURN sqrt(x * x + y * y);                               
			

	
  
end



