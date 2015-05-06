require_relative 'spec_init'

module Fixture
  module MethodIsDefined
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
    example = Fixture::MethodIsDefined.example
    example.respond_to? :some_virtual_method
  end
end
