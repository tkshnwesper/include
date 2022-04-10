# include

Includes constants, classes, methods and submodules from a module into the current scope.

```crystal
module TestModule
  CONSTANT = 1

  class TClass
  end
end

include_module(TestModule)

TClass    # => TestModule::TClass
CONSTANT  # => TestModule::CONSTANT
```

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     include:
       github: tkshnwesper/include
   ```

2. Run `shards install`

## Usage

```crystal
require "include"

module TestModule
  extend self

  def test_function
  end

  CONSTANT = 1

  class TClass
  end

  module SubModule
  end
end

include_module(TestModule)

test_function   # => TestModule.test_function
SubModule       # => TestModule::SubModule
```

### Including methods

You can only include methods if the `module` extends itself. See [this](https://crystal-lang.org/reference/1.3/syntax_and_semantics/modules.html#extend-self) for more details.

## Contributing

1. Fork it (<https://github.com/tkshnwesper/include/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [tkshnwesper](https://github.com/tkshnwesper) - creator and maintainer
