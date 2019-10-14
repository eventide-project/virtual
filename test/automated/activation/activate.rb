require_relative '../automated_init'

context "Activation" do
  context "Activate" do
    Virtual.activate(Controls::Clean::Example)
    example = Controls::Clean.example

    test "Activated" do
      assert Virtual.activated?(example)
    end
  end
end
