require_relative 'spec_init'

module Fixture
  module PureVirtualMethodCannotBeCalled
    class Example
      extend Virtual

      pure_virtual :some_pure_virtual_method
    end

    def self.example
      Example.new
    end
  end
end

describe "Virtual" do
  it "Defines a method" do
    example = Fixture::PureVirtualMethodCannotBeCalled.example

    assert_raises Virtual::PureMethodError do
      example.some_pure_virtual_method
    end
  end
end
