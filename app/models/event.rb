class Event < ApplicationRecord

  has_many :travels
  has_many :physical_goods
  has_many :sponsorships

end
