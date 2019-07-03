require 'display'

describe Display do
  describe '#page_views' do
    it 'displays the number of time each page had been visited' do
      display = Display.new
      expect(display.page_views(site)).to eq ('/contact 1 visits \n/home 2 visits \n/index 1 visits')
    end
  end
end
