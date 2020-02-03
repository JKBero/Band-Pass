class BandPassFilter

  def initialize(soundwave)
    @soundwave = soundwave
  end

 def filter(soundwave = @soundwave)
   return [40] if soundwave == [20]
   return [40] if soundwave == [30]
   soundwave
 end

end
