require_relative '../automated_init'

context "Pure Virtual" do
  context "Strict Abstract Declaration Over a Concrete Implementation" do
    test "Is an error" do
      assert_raises(Virtual::PureMethod::DefinitionError) do
        Controls::PureVirtualMethod::StrictOverride.example(strict: true)
      end
    end
  end

  context "Permissive Abstract Declaration Over a Concrete Implementation" do
    test "Is not an error" do
      refute_raises(Virtual::PureMethod::DefinitionError) do
        Controls::PureVirtualMethod::StrictOverride.example(strict: false)
      end
    end
  end
end
