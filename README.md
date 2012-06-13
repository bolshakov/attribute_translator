# Attribute translator

Translate model attribute values from locales.

## Usage example

```yaml
en.yml:
  en:
    activerecord:
      values:
        user:
          state:
            new: Just registered
            ok: Active
```

Modify ActiveRecord model:

```ruby
class User < ActiveRecord::Base
  translates :state
end
```

Then:

```ruby
  user = User.first
  user.state #=> "Just registered"
  # To get original value use:
  user.state_before_type_cast #=> "new"
```

## Installation

In Gemfile:

```ruby
  gem "attribute_translator"
```

## Copyright

Copyright (c) 2012 Artyom Bolshakov. See LICENSE for further details.

