class Match < ActiveRecord::Base
	belongs_to :users, :class_name => 'User', :foreign_key =>'user1_id', :foreign_key =>'user2_id'
	# has_many :user_place_categories, :class_name => 'UserPlaceCategory', :foreign_key => "userplace_id"
	has_many :user_place_category_matches, :class_name => "UserPlaceCategory", :foreign_key => "userplace_id"
	has_many :user_place_categories, :foreign_key => "userplace_id"
	# through: :user_place_category_matches

<<<<<<< HEAD
	def index
		Post.find_by_sql 'SELECT* FROM '
	end

=======
	
>>>>>>> 25d10278b8286e2981efc3ed806f5832efd411d8
end