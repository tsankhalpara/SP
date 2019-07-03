class Display

  def page_views(page)
    page.each { |page, visit| puts "#{page} #{visit.length} visits." }
  end

  def unique_views(page)
    page.each { |page, visit| puts "#{page} #{visit.uniq.length} views."}
  end
end
