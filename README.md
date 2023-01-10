# virtual

Virtual method declaration.

## Summary

A _virtual method_ is a method which is inheritable and overridable. Since all methods in ruby are virtual, syntax is not required to provide this capability.
 
When developing framework style code, it is often required to override or implement a specific method in order to satisfy a contract. The purpose of this library is to provide a way for a developer of framework code to convey that intent.

The `virtual` library adds three macros to a class:

- `virtual`
- `pure_virtual`
- `protocol`

A virtual method is a method _may_ be implemented in a subclass. A virtual method cannot be declared in a subclass that already has a concrete method of the same name.

A pure virtual method is a method _must_ be implemented in a subclass. If it is not, an error will be raised when the method is called. A pure virtual method cannot be declared in a subclass that already has a concrete method of the same name. The `pure_virtual` macro is also aliased to `abstract`.

A protocol method is a specialization of a pure virtual method. It must be implemented in a subclass _unless_ the subclass already has a concrete implementation of the same name.

## Activation

The `virtual` and `pure_virtual` macros can be added to all classes with:

```ruby
require 'virtual'
Virtual.activate
```

To avoid modifying the `Object` class, include the `Virtual` module directly in a class rather than activating it globally with `Virtual.activate`.

## Example

```ruby
class Something
  virtual :some_virtual_method
  pure_virtual :some_abstract_method
  pure_virtual :some_protocol_method
end
```

If the `virtual` library is not activated, the module can be included in the class:

```ruby
class Something
  include Virtual

  virtual :some_virtual_method
  pure_virtual :some_abstract_method
  pure_virtual :some_protocol_method
end
```

The `pure_virtual` macro is also aliased to `abstract`:

```ruby
class Something
  include Virtual

  abstract :some_abstract_method
end
```

## License

The `virtual` library is released under the [MIT License](https://github.com/eventide-project/virtual/blob/master/MIT-License.txt).
