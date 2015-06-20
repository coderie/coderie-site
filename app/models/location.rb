class Location < ActiveRecord::Base
  has_many :meetups
end
