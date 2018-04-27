require_relative '../automated_init'

context "Virtual" do
  example = Virtual::Controls::VirtualMethod::Body.example

  response = example.some_virtual_method

  test "Method with Body" do
    assert(response == :something)
  end
end
