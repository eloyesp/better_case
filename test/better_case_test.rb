require 'better_case'

test 'symbols makes ducktyping easy' do
  module Symbols
    using BetterCase
    def self.the_test
      assert case "a_string"
            when :a_non_existing_method then false
            when :concat then true
            else false
            end
    end
  end
  Symbols.the_test
end

test 'arrays check include?' do
  module Arrays
    using BetterCase
    def self.the_test
      assert case :c
             when [:a, :b] then false
             when [:c, :d] then true
             else false
             end
    end
  end
  Arrays.the_test
end
