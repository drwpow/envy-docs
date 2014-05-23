---
title: JavaScript
type: page
priority: 2
---

# JavaScript

Here is some JavaScript for you!

## Some JavaScript

```javascript
var position = lib.getStyle(this.element, 'position');
  if(position === 'static' || position === 'relative') {
    lib.setStyle(this.element,{
      position:'absolute',
      left:'-9999px',
      top:'-9999px'
    });
  }
```

## CoffeeScript! Ooh!

```coffee
coffee.on 'failure', (error, task) ->
  notify error, 'error'
```