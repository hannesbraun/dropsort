require "./spec_helper"

describe Dropsort do
  describe "#dropsort" do
    it "handles an empty array" do
      unsorted = [] of Int8
      sorted = Dropsort.dropsort(unsorted)
      sorted.size.should eq 0
    end

    it "handles a sorted array" do
      unsorted = [1, 5, 8, 15, 42, 245, 1337]
      sorted = Dropsort.dropsort(unsorted)
      sorted.should eq unsorted
    end

    it "sorts an array ascending" do
      unsorted = [15, 42, 24, 9, 1, 5, 1337, 24, -2, 0, 9286537]
      sorted = Dropsort.dropsort(unsorted, Dropsort::Order::Ascending)
      sorted.should eq [15, 42, 1337, 9286537]
    end

    it "sorts an array descending" do
      unsorted = [15, 42, 24, 9, 1, 5, 1337, 24, -2, 0, 9286537]
      sorted = Dropsort.dropsort(unsorted, Dropsort::Order::Descending)
      sorted.should eq [15, 9, 1, -2]
    end

    it "can sort characters" do
      unsorted = ['d', 'r', 'o', 'p', 's', 'o', 'r', 't']
      sorted = Dropsort.dropsort(unsorted)
      sorted.should eq ['d', 'r', 's', 't']
    end
  end

  describe "#dropsort_inplace" do
    it "handles an empty array" do
      arr = [] of Int8
      Dropsort.dropsort_inplace(arr)
      arr.size.should eq 0
    end

    it "handles a sorted array" do
      arr = [1, 5, 8, 15, 42, 245, 1337]
      Dropsort.dropsort_inplace(arr)
      arr.should eq [1, 5, 8, 15, 42, 245, 1337]
    end

    it "sorts an array ascending" do
      arr = [15, 42, 24, 9, 1, 5, 1337, 24, -2, 0, 9286537]
      Dropsort.dropsort_inplace(arr, Dropsort::Order::Ascending)
      arr.should eq [15, 42, 1337, 9286537]
    end

    it "sorts an array descending" do
      arr = [15, 42, 24, 9, 1, 5, 1337, 24, -2, 0, 9286537]
      Dropsort.dropsort_inplace(arr, Dropsort::Order::Descending)
      arr.should eq [15, 9, 1, -2]
    end

    it "can sort characters" do
      arr = ['d', 'r', 'o', 'p', 's', 'o', 'r', 't']
      Dropsort.dropsort_inplace(arr)
      arr.should eq ['d', 'r', 's', 't']
    end
  end
end
