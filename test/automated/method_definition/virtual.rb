require_relative '../automated_init'

context "Method Definition" do
  context "Virtual" do
    example = Controls::VirtualMethod.example

    method_defined = example.respond_to?(:some_virtual_method)

    test "Defines the method" do
      assert(method_defined)
    end
  end
end
