# Main module containing the Dropsort sorting algorithm designed by David Morgan-Mar
#
# See [https://www.dangermouse.net/esoteric/dropsort.html](https://www.dangermouse.net/esoteric/dropsort.html) for more information.
module Dropsort
  extend self

  # Describes the order in which to sort an array
  enum Order
    Ascending
    Descending
  end

  # Sorts the given array using the Dropsort algorithm (designed by David Morgan-Mar).
  # The unsorted input array won't be altered.
  #
  # Returns the sorted array as a new array.
  def dropsort(unsorted : Array(Comparable), order : Order = Order::Ascending)
    sorted = Array(typeof(unsorted.first)).new

    case order
    when Order::Ascending
      unsorted.each do |elem|
        if sorted.size <= 0 || elem >= sorted[sorted.size - 1]
          sorted << elem
        end
      end
    when Order::Descending
      unsorted.each do |elem|
        if sorted.size <= 0 || elem <= sorted[sorted.size - 1]
          sorted << elem
        end
      end
    end

    return sorted
  end

  # Sorts the given array using the Dropsort algorithm (designed by David Morgan-Mar).
  # This in an inplace implementation meaning the input array will be altered.
  def dropsort_inplace(array : Array(Comparable), order : Order = Order::Ascending)
    # The first element is always considered to be sorted
    i = 1

    case order
    when Order::Ascending
      while i < array.size
        if array[i] <= array[i - 1]
          array.delete_at(i)
        else
          i += 1
        end
      end
    when Order::Descending
      while i < array.size
        if array[i] >= array[i - 1]
          array.delete_at(i)
        else
          i += 1
        end
      end
    end
  end
end
