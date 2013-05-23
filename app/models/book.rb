class Book < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :jokes, :dependent => :delete_all
  belongs_to :in_the_know_peeps

  validates :name, :presence => true
  validates :description, :presence => true
end
