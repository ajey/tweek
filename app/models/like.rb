class Like < ActiveRecord::Base
   attr_accessible :user_id, :movie_id
   belongs_to :user
   belongs_to :movie
   validates :movie_id,   
            :uniqueness => {:scope => :user_id}
end
