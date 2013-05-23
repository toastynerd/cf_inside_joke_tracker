class Joke < ActiveRecord::Base
  attr_accessible :meaning, :name
  belongs_to :book
end
