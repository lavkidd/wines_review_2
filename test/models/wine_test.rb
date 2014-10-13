require 'test_helper'

class WineTest < ActiveSupport::TestCase

  def setup
  	@wine = Wine.new
  end

  test 'name remembers its value' do
    @wine.name = 'Famiglia Bertona'
    assert_equal 'Famiglia Bertona', @wine.name
  end

  test 'year remembers its value' do
    @wine.year = 2008
    assert_equal 2008, @wine.year
  end

  test 'winery remembers its value' do
    @wine.winery = 'Famiglia Bertona'
    assert_equal 'Famiglia Bertona', @wine.winery
  end

  test 'country remembers its value' do
  	@wine.country = 'Italy'
  	assert_equal 'Italy', @wine.country
  end

  test 'varietal remembers its value' do
  	@wine.varietal = 'Malbec'
  	assert_equal 'Malbec', @wine.varietal
  end

  test 'persistence works properly' do
    created_wine = Wine.create(name:     'Colleziione di Paola',
    	                       year:      2012,
    	                       winery:   'Colleziione di Paola',
    	                       country:  'Italy',
    	                       varietal: 'Sangiovese')
    found_wine = Wine.find created_wine.id
    assert_not_nil found_wine
    assert_equal 'Colleziione di Paola', found_wine.name
    assert_equal  2012,                  found_wine.year
    assert_equal 'Colleziione di Paola', found_wine.winery
    assert_equal 'Italy',                found_wine.country
    assert_equal 'Sangiovese',           found_wine.varietal
  end

  test "update from a fixture" do
    wine = wines(:Lakeridge)
    assert_equal 2013, wine.year
    wine.year = 2011
    wine.save
    updated = Wine.find(wine.id)
    assert_equal 2011, updated.year  		
  end

end

