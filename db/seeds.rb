# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Wine.create(name:'Famiglia Bertona', year:2008, winery:'Famglia Bertona', country:'Italy', varietal:'Malbec')

Wine.create(name:'Lakeridge',        year:2013, winery:'Lakeridge',       country:'USA',   varietal:'Reserve Cuvee Noir')

Wine.create(name:'Alta Tierra',      year:2012, winery:'Titon Vineyard',  country:'Chile', varietal:'Chardonnay')

Wine.create(name:'Three Mounts',     year:2011, winery:'Yakima Valley',   country:'USA',   varietal:'Pinot Gris')

