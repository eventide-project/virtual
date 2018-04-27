require_relative '../automated_init'

context "Method Definition" do
  context "Pure Virtual" do
    example = Virtual::Controls::VirtualMethod.example

    test "Defines the method" do
      example.respond_to?(:some_pure_virtual_method)
    end
  end
end
