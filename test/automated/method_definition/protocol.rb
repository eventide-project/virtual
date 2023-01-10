require_relative '../automated_init'

context "Method Definition" do
  context "Protocol" do
    example = Controls::ProtocolMethod.example

    method_defined = example.respond_to?(:some_protocol_method)

    test "Defines the method" do
      assert(method_defined)
    end
  end
end
