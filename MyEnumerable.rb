module MyEnumerable
  def all?
    self.each do |item|
      return false unless yield(item)
    end
    true
  end

  def any?
    self.each do |item|
      return true if yield(item)
    end
    false
  end

  def filter
    result = []
    self.each do |item|
      result << item if yield(item)
    end
    result
  end

end

puts([1, 2, 3].my_any? { |item| item > 2 })