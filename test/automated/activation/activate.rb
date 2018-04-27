require_relative '../automated_init'

context "Activation" do
  context "Activate" do
    Virtual.activate(Virtual::Controls::Example::Example)
    example = Virtual::Controls::Example.example

    context "Activated" do
      assert example, Virtual::Assertions do
        activated?
      end
    end
  end
end
