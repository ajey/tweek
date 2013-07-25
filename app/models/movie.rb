class Movie < ActiveRecord::Base

  attr_accessible :title, :year, :tag_list
  acts_as_taggable
#  has_many :likes
#  has_many :users, :through => :likes
  has_and_belongs_to_many :users, :join_table => 'likes'

end
