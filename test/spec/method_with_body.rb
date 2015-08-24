require_relative 'spec_init'

module Fixture
  module MethodWithBody
    class Example
      extend Virtual

      virtual :some_virtual_method do |*|
        :some_thing
      end
    end

    def self.example
      Example.new
    end
  end
end

describe "Virtual" do
  it "Defines a method" do
    example = Fixture::MethodWithBody.example
    response = example.some_virtual_method

    assert(response == :some_thing)
  end
end
