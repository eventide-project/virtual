require_relative '../automated_init'

context "Protocol" do
  context "Implemented in Subclass" do
    example = Controls::ProtocolMethod::Implemented.example

    test "Does not raise an error" do
      refute_raises(Virtual::ProtocolMethod::Error) do
        example.some_protocol_method
      end
    end
  end
end
