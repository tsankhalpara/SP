require 'display'

hash = {
  '/contact' => ['184.123.665.067', '184.123.665.067'],
  '/home' => ['184.123.665.067', '316.433.849.805']
}

describe Display do
  describe '#page_views' do
    it 'displays the number of time each page had been visited' do
      display = Display.new
      expect { display.page_views(hash) }.to output("/contact 2 visits.\n/home 2 visits.\n").to_stdout
    end
  end

  describe '#unique_views' do
    it 'displays the unique number of views for each page' do
      display = Display.new
      expect { display.unique_views(hash) }.to output("/contact 1 views.\n/home 2 views.\n").to_stdout
    end
  end
end
