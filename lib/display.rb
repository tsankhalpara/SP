class Display
  def page_views(array)
    array.each { |page, visit| puts "#{page} #{visit.length} visits." }
  end

  def unique_views(array)
    array.each { |page, visit| puts "#{page} #{visit.uniq.length} views." }
  end
end
