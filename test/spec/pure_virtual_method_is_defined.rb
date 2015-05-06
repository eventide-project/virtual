require_relative 'spec_init'

module Fixture
  module PureVirtualMethodIsDefined
    class Example
      extend Virtual

      abstract :some_abstract_method
    end

    def self.example
      Example.new
    end
  end
end

describe "Virtual" do
  it "Defines a method" do
    example = Fixture::PureVirtualMethodIsDefined.example
    example.respond_to? :some_abstract_method
  end
end
