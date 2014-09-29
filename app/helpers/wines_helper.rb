module WinesHelper
  def formatted_time(time)
    time.strftime("%B %d, %Y at %l:%M %P")
  end
end

