class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :lists

  def address
    [city, postcode, country].compact.join(', ')
  end

  geocoded_by :address,
        :latitude => :lat, :longitude => :long
  after_validation :geocode
end
