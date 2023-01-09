require_relative '../automated_init'

context "Activation" do
  context "Include" do
    example = Controls::Included.example

    test "Activated" do
      assert(Virtual.activated?(example))
    end
  end
end
