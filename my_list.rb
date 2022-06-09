require_relative './my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*items)
    @list = items
  end

  def show
    @list.each do |item|
      puts item
    end
  end

  def each(&block)
    @list.each(&block)
  end
end

puts(MyList.new(1, 2, 3).show)
