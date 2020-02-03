class BandPassFilter

  def initialize(soundwave, lower_limit = 40)
    @soundwave = soundwave
    @lower_limit = lower_limit
  end

 def filter(soundwave = @soundwave)
   filtered_soundwave = []
   @soundwave.each do |frequency|
     if frequency < 40
       filtered_soundwave << 40
     else
       filtered_soundwave << frequency
     end
   end
   filtered_soundwave
 end

end
