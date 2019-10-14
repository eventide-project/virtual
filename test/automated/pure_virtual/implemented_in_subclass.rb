require_relative '../automated_init'

context "Pure Virtual" do
  context "Implemented in Subclass" do
    example = Controls::PureVirtualMethod::Implemented.example

    test "Does not raise an error" do
      refute_raises Virtual::PureMethod::Error do
        example.some_pure_virtual_method
      end
    end
  end
end
