require_relative '../automated_init'

context "Virtual" do
  example = Controls::VirtualMethod.example

  test "Method with parameters" do
    refute_raises do
      example.some_virtual_method 'some value', 'some other value'
    end
  end
end

