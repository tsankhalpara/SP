require 'server_log'

describe ServerLog do
  describe '#create_hash' do
    it 'creates a hash from the .log file' do
    server = ServerLog.new
    server.create_hash('test.log')
    expect(server.server_list).to eq ({ '/contact'=>['184.123.665.067'],
      '/home' => ['184.123.665.067', '316.433.849.805'],
      '/index' => ['444.701.448.104'] })
    end
  end
end
