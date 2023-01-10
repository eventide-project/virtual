require_relative '../automated_init'

context "Protocol" do
  context "Cannot Be Invoked" do
    example = Controls::ProtocolMethod.example

    test "Raises an error" do
      assert_raises(Virtual::ProtocolMethod::Error) do
        example.some_protocol_method
      end
    end
  end
end
