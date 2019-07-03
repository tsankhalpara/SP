class Display

  def page_views(page)
    page.each { |page, visit| puts "#{page} #{visit.length} visits." }
  end

end
