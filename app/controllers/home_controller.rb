class HomeController < ApplicationController
  def location
    now = Time.now.in_time_zone("Central Time (US & Canada)")
    @location = "She's Missing!!"
    if now.hour < 6 and now.hour > 5
      @location = 'Driving'
    end
    if now.hour >=6 and now.hour<17
      @location = 'Working'
    end
    if now.hour >=17 and now.hour < 20
      @location = "Biking"
    end
    if now.hour >= 20 and now.hour < 22
      @location = "Home"
    end
    if now.hour >= 22 and now.hour <5
    @location = "Sleeping"
    end
  end
end
