class ServerLog

  attr_reader :server_list

  def initialize
    @server_list = {}
  end

  def create_hash(filename)
    File.open(filename).each do |webserver_site|
      site = webserver_site.split(' ')
      if @server_list.has_key?(site[0])
        @server_list[site[0]] << (site[1])
      else @server_list[site[0]] = [site[1]]
      end
    end
  end
end
