require_relative '../automated_init'

context "Virtual" do
  example = Virtual::Controls::VirtualMethod.example

  test "Method with parameters" do
    refute proc { example.some_virtual_method 'some value', 'some other value' } do
      raises_error?
    end
  end
end

