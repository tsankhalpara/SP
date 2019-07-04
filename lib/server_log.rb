class ServerLog
  attr_reader :server_list, :ordered_list

  def initialize(display = Display.new)
    @server_list = {}
    @display = display
    @ordered_list = []
  end

  def create_hash(filename)
    File.open(filename).each do |webserver_site|
      site = webserver_site.split(' ')
      if @server_list.key?(site[0])
        @server_list[site[0]] << (site[1])
      else @server_list[site[0]] = [site[1]]
      end
    end
  end

  def page_views
    @display.page_views(@ordered_list)
  end

  def unique_views
    @display.unique_views(@ordered_list)
  end

  def order
    @ordered_list = @server_list.sort_by { |_, v| v.join.length }.reverse
  end
end
