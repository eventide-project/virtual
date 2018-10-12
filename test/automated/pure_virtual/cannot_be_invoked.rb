require_relative '../automated_init'

context "Pure Virtual" do
  context "Cannot Be Invoked" do
    example = Controls::PureVirtualMethod.example

    test "Raises an error" do
      assert proc { example.some_pure_virtual_method } do
        raises_error? Virtual::PureMethod::Error
      end
    end
  end
end
