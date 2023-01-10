require_relative '../automated_init'

context "Virtual" do
  context "Strict Abstract Declaration Over a Concrete Implementation" do
    test "Is an error" do
      assert_raises(Virtual::VirtualMethod::DefinitionError) do
        Controls::VirtualMethod::StrictOverride.example(strict: true)
      end
    end

    context "Permissive Abstract Declaration Over a Concrete Implementation" do
      test "Is not an error" do
        refute_raises(Virtual::VirtualMethod::DefinitionError) do
          Controls::VirtualMethod::StrictOverride.example(strict: false)
        end
      end
    end
  end
end
