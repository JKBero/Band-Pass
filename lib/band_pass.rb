class BandPassFilter

  def initialize(soundwave, lower_limit = 40)
    @soundwave = soundwave
    @lower_limit = lower_limit
  end

 def filter(soundwave = @soundwave)
   filtered_soundwave = []
   @soundwave.each do |frequency|
     if frequency < @lower_limit
       filtered_soundwave << @lower_limit
     elsif frequency > 1000
       filtered_soundwave << 1000
     else
       filtered_soundwave << frequency
     end
   end
   filtered_soundwave
 end

end
