class MyList
  def initialize(*items)
    @list = items
  end

  def show
    @list.each do |item|
      puts item
    end
  end
end

puts(MyList.new(1, 2, 3).show)
