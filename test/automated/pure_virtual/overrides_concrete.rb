require_relative '../automated_init'

context "Pure Virtual" do
  context "Overrides Concrete" do
    test "Is an error" do
      assert_raises(Virtual::PureMethod::Error) do
        Controls::PureVirtualMethod::Override.example
      end
    end
  end
end
