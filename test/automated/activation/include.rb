require_relative '../automated_init'

context "Activation" do
  context "Include" do
    example = Controls::Included.example

    context "Activated" do
      assert example, Virtual::Assertions do
        activated?
      end
    end
  end
end
