require 'band_pass'

describe BandPassFilter do

  it 'it returns a soundwave when it is within the limits' do
    band_pass = BandPassFilter.new([90])
    (expect(band_pass.filter)).to eq [90]

    band_pass = BandPassFilter.new([90, 100])
    (expect(band_pass.filter)).to eq [90, 100]
  end


end
