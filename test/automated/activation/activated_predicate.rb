require_relative '../automated_init'

context "Activation" do
  context "Activated Predicate" do
    context "Activated" do
      example = Controls::Clean.example
      example_class = example.class

      Virtual.activate(example_class)

      activated = Virtual.activated?(example)

      test "Activated" do
        assert(activated)
      end
    end

    context "Not Activated" do
      example = Object.new

      activated = Virtual.activated?(example)

      test "Activated" do
        refute(activated)
      end
    end
  end
end
