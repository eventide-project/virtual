require_relative '../automated_init'

context "Activation" do
  context "Extend" do
    example = Virtual::Controls::Extended.example

    context "Activated" do
      assert example, Virtual::Assertions do
        activated?
      end
    end
  end
end
