class ServerLog

  attr_reader :server_list

  def initialize(display = Display.new)
    @server_list = {}
    @display = display
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

  def page_views
    @display.page_views(@server_list)
  end
end
