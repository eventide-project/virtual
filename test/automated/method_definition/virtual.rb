require_relative '../automated_init'

context "Method Definition" do
  context "Virtual" do
    example = Controls::VirtualMethod.example

    test "Defines the method" do
      example.respond_to?(:some_virtual_method)
    end
  end
end
