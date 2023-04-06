# frozen_string_literal: true

require_relative 'MyEnumerable'

class MyList
  include MyEnumerable

  def initialize(*elements)
    @list = elements
  end

  def each
    @list.each{|element| yield(element)}
  end
end

list = MyList.new(1, 2, 3, 4)
puts list
