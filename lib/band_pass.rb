class BandPassFilter

  def initialize(soundwave, lower_limit: 40, upper_limit: 1000)
    @soundwave = soundwave
    @lower_limit = lower_limit
    @upper_limit = upper_limit
  end

 def filter(soundwave = @soundwave)
   filtered_soundwave = []
   @soundwave.each do |frequency|
     if frequency < @lower_limit
       filtered_soundwave << @lower_limit
     elsif frequency > @upper_limit
       filtered_soundwave << @upper_limit
     else
       filtered_soundwave << frequency
     end
   end
   filtered_soundwave
 end

end
