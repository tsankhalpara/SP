require 'display'

hash = { '/contact'=>['184.123.665.067'],
  '/home' => ['184.123.665.067', '316.433.849.805'],
  '/index' => ['444.701.448.104'] }

describe Display do
  describe '#page_views' do
    it 'displays the number of time each page had been visited' do
      display = Display.new
      expect{display.page_views(hash)}.to output("/contact 1 visits.\n/home 2 visits.\n/index 1 visits.\n").to_stdout
    end
  end
end
