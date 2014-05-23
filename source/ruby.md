---
title: Ruby
type: page
priority: 1
---

# Ruby

This is a typical document with Ruby code.

## Some Code

```ruby
def self.global_config(name = nil, value = nil)
  lib = Git::Lib.new(nil, nil)
  if(name && value)
    # set value
    lib.global_config_set(name, value)
  elsif (name)
    # return value
    lib.global_config_get(name)
  else
    # return hash
    lib.global_config_list
  end
end
```