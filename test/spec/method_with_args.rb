require_relative 'spec_init'

module Fixture
  module MethodWithArgs
    class Example
      extend Virtual

      virtual :some_virtual_method
    end

    def self.example
      Example.new
    end
  end
end

describe "Virtual" do
  it "Defines a method" do
    example = Fixture::MethodWithArgs.example
    example.some_virtual_method 'some value', 'some other value'
  end
end
