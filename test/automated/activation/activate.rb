require_relative '../automated_init'

context "Activation" do
  context "Activate" do
    Virtual.activate(Controls::Clean::Example)
    example = Controls::Clean.example

    context "Activated" do
      assert example, Virtual::Assertions do
        activated?
      end
    end
  end
end
