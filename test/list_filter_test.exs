defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "count odd integer" do
      list1 = ["1","2","3","4","5","6","7","8","9"]
      list2 = ["2","4","6","8","10"]
      list3 = ["1","3","5","7"]

      assert ListFilter.call(list1) == 5
      assert ListFilter.call(list2) == 0
      assert ListFilter.call(list3) == 4
    end

    test "empty list" do
      list = []

      assert ListFilter.call(list) == 0
    end

    test "list with alphabetic chars" do
      list = ["A","B","C","D"]

      assert ListFilter.call(list) == 0
    end
  end
end
