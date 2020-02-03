class BandPassFilter

  def initialize(soundwave, lower_limit: 40, upper_limit: 1000)
    @soundwave = soundwave
    @lower_limit = lower_limit
    @upper_limit = upper_limit
  end

 def filter
  return nil unless @soundwave
   filtered_soundwave = @soundwave.map do |frequency|
     frequency < @lower_limit ? lower_filter(frequency) : upper_filter(frequency)
   end
   filtered_soundwave
 end

 private

 def lower_filter(frequency)
   frequency < @lower_limit ? @lower_limit : frequency
 end

 def upper_filter(frequency)
   frequency > @upper_limit ? @upper_limit : frequency
 end

end
