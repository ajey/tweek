class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :validatable, :rememberable 
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

#  has_many :likes
#  has_many :movies, :through => :likes

  has_and_belongs_to_many :movies, :join_table => 'likes'

  validates :email,   
            :presence => true,   
            :uniqueness => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i } 


end
