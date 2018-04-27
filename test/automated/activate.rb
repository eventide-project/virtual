require_relative './automated_init'

context "Activate on a Class" do
  Virtual.activate(Virtual::Controls::Example::Example)
  example = Virtual::Controls::Example.example

  context "Class Implements" do
    test "virtual" do
      assert(example.class.respond_to?(:virtual))
    end

    test "pure_virtual" do
      assert(example.class.respond_to?(:pure_virtual))
    end

    context "Alias" do
      test "abstract" do
        assert(example.class.respond_to?(:abstract))
      end
    end
  end
end
