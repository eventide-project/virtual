require_relative '../automated_init'

context "Pure Virtual" do
  context "Cannot Be Invoked" do
    example = Controls::PureVirtualMethod.example

    test "Raises an error" do
      assert_raises(Virtual::PureMethod::Error) do
        example.some_pure_virtual_method
      end
    end
  end
end
