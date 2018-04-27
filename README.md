# virtual

Virtual method declaration.

## Summary

A _virtual method_ is a method which is inheritable and overridable. Since all methods in ruby are virtual, syntax is not required to provide this capability.
 
When developing framework style code, it is often required to override or implement a specific method in order to satisfy a contract. The purpose of this library is to provide a way for a developer of framework code to convey that intent.

The `virtual` library adds two macros to a class:

- `virtual`
- `pure_virtual`

`virtual` is an indication that a method _may_ be overridden. `pure_virtual` is an indication that a method __must__ be overridden in a subclass (if it is not, an error will be raised when called).

The `pure_virtual` macro is also aliased to `abstract`.

## Activation

The `virtual` and `pure_virtual` macros can be added to all classes with:

```
require 'virtual'
Virtual.activate
```

To avoid modifying the `Object` class, include the `Virtual` module directly in a class rather than activating it globally with `Virtual.activate`.

## Example

```ruby
class Something
  virtual :my_optional_method
  pure_virtual :my_required_method
end
```

If the `virtual` library is not activated, the module can be included in the class:

```ruby
class Something
  include Virtual

  virtual :my_optional_method
  pure_virtual :my_required_method
end
```

The `pure_virtual` macro is also aliased to `abstract`:

```ruby
class Something
  include Virtual

  abstract :my_required_method
end
```

## License

The `virtual` library is released under the [MIT License](https://github.com/eventide-project/virtual/blob/master/MIT-License.txt).
