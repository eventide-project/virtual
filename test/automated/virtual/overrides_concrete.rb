require_relative '../automated_init'

context "Virtual" do
  context "Overrides Concrete" do
    test "Is an error" do
      assert_raises(Virtual::Method::Error) do
        Controls::VirtualMethod::Override.example
      end
    end
  end
end
