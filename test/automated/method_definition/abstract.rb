require_relative '../automated_init'

context "Method Definition" do
  context "Abstract" do
    example = Virtual::Controls::AbstractMethod.example

    test "Defines the method" do
      example.respond_to?(:some_pure_virtual_method)
    end
  end
end
