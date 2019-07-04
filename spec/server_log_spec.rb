require 'server_log'

describe ServerLog do
  let(:display) { double :display }

  describe '#create_hash' do
    it 'creates a hash from the .log file' do
      server = ServerLog.new
      server.create_hash('test.log')
      expect(server.server_list).to eq(
        '/contact' => ['184.123.665.067'],
        '/home' => ['184.123.665.067', '316.433.849.805'],
        '/index' => ['444.701.448.104']
      )
    end
  end

  describe '#page_views' do
    it 'passes hash through page_views method in display class' do
      server = ServerLog.new(display)
      server.create_hash('test.log')
      expect(display).to receive(:page_views).with(server.ordered_list)
      server.page_views
    end
  end

  describe '#unique_views' do
    it 'passes hash through unique_views method in display class' do
      server = ServerLog.new(display)
      server.create_hash('test.log')
      expect(display).to receive(:unique_views).with(server.ordered_list)
      server.unique_views
    end
  end

  describe '#order' do
    it 'orders the hash keys by number of values' do
      server = ServerLog.new(display)
      server.create_hash('test.log')
      server.order
      expect(server.ordered_list).to eq [
        ['/home', ['184.123.665.067', '316.433.849.805']],
        ['/index', ['444.701.448.104']],
        ['/contact', ['184.123.665.067']]
      ]
    end
  end
end
