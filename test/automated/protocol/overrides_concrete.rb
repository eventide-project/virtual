require_relative '../automated_init'

context "Protocol" do
  context "Overrides Concrete" do
    test "Is not an error" do
      refute_raises(Virtual::ProtocolMethod::Error) do
        Controls::ProtocolMethod::Override.example
      end
    end
  end
end
