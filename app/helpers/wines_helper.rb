module WinesHelper

  def formatted_time(time)
    time.strftime("%B %d, %Y at %l:%M %P")
  end

  def format_average_stars(wine)
  	average = wine.average_stars
  	if average
  	  pluralize(number_with_precision(average, precision: 1), 'star')
  	else
  	  'No Reviews'
  	end
 end

end

