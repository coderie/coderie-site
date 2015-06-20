class Location < ActiveRecord::Base
  has_many :meetups

  def to_s
    "#{address}\n#{city}, #{state} #{zip}"
  end
end
