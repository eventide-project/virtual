require_relative '../automated_init'

context "Pure Virtual" do
  context "Implemented in Subclass" do
    example = Virtual::Controls::PureVirtualMethod::Implemented.example

    test "Does not raise an error" do
      refute proc { example.some_pure_virtual_method } do
        raises_error?
      end
    end
  end
end
