# Virtual

Virtual method declaration.

## Summary

A _virtual method_ is a method which is inheritable and overridable. Since all methods in ruby are virtual, syntax is not required to provide this capability.
 
When developing framework style code, it is often required to override or implement a specific method in order to satisfy an interface. The purpose of this library is to provide a way for a developer of framework code to convey that intent.
 
## Usage

The `virtual` and `pure_virtual` macros can be added to all classes with   

```
require 'virtual'; Virtual.activate
```

Optionally, they can be applied to a single class with `Virtual.activate(MyClass)`

`virtual` is an indication that a method _may_ be overridden.
`pure_virtual` is an indication that a method __must__ be overridden (if it is not, an error will be raised when called).


## Example

```
class MyClass
  virtual :my_optional_method
  pure_virtual :my_required_method
end
```

## License

The `virtual` library is released under the [MIT License](https://github.com/obsidian-btc/virtual/blob/master/MIT-License.txt).
