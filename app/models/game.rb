class Game < ActiveRecord::Base
  has_many :users
  belongs_to :creator, :class_name => 'User'

  validates :name, :presence => true, :length => {:within => 1..30}
  validates :creator, :presence => true
end
