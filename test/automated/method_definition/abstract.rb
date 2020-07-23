require_relative '../automated_init'

context "Method Definition" do
  context "Abstract" do
    example = Controls::AbstractMethod.example

    method_defined = example.respond_to?(:some_pure_virtual_method)

    test "Defines the method" do
      assert(method_defined)
    end
  end
end
