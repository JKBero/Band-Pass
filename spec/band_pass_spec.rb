require 'band_pass'

describe BandPassFilter do

  it 'returns a soundwave when it is within the limits' do
    band_pass = BandPassFilter.new([90])
    (expect(band_pass.filter)).to eq [90]

    band_pass = BandPassFilter.new([90, 100])
    (expect(band_pass.filter)).to eq [90, 100]
  end

  it 'returns the lower limit frequency if frequency is below limit' do
    band_pass = BandPassFilter.new([20])
    (expect(band_pass.filter)).to eq [40]

    band_pass = BandPassFilter.new([30])
    (expect(band_pass.filter)).to eq [40]
  end

  describe 'with a default lower limit' do

    it 'returns a soundwave of lower limit frequencies if array digits are below limit' do
      band_pass = BandPassFilter.new([20, 30])
      (expect(band_pass.filter)).to eq [40, 40]

      band_pass = BandPassFilter.new([20, 30, 10, 1])
      (expect(band_pass.filter)).to eq [40, 40, 40, 40]
    end

  end

  describe 'when given a custom lower limit' do

    it 'returns a soundwave of lower limit frequencies if array digits are below limit' do
      band_pass = BandPassFilter.new([20, 30], 90)
      (expect(band_pass.filter)).to eq [90, 90]
    end

  end

end
