class Wine < ActiveRecord::Base

validates :name, :presence => true, allow_blank: false

validates :year, :winery, :country, :varietal, presence: true

validates :year,
  numericality: { only_integer: true, greater_than_or_equal_to: 2000 },
  unless: "year.blank?"

has_many :reviews

end



#validates :pages,
#  numericality: { only_integer: true, greater_than_or_equal_to: 0 },
#  unless: "pages.blank?"
