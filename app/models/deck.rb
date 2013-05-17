class Deck < ActiveRecord::Base
  has_many :cards
  has_and_belongs_to_many :users
end
