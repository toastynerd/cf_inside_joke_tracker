class InTheKnowPeep < ActiveRecord::Base
  attr_accessible :name

  has_many :books
  has_many :jokes, :through => :books
end
