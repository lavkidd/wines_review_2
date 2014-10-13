class Wine < ActiveRecord::Base

validates :name, :year, :winery, :country, :varietal, presence: true
validates :year,
  numericality: { only_integer: true, greater_than_or_equal_to: 2000 },
  unless: "year.blank?"

end



#validates :pages,
#  numericality: { only_integer: true, greater_than_or_equal_to: 0 },
#  unless: "pages.blank?"
