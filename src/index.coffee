((factory) ->
  root = typeof self is 'object' and self.self is self and self or typeof global is 'object' and global.global is global and global
  ###
    istanbul ignore next
  ###
  if typeof define == 'function' and define.amd
    define [
      'exports'
    ], (exports) ->
      root.varlidator = factory()
      return
  else if typeof exports != 'undefined'
    module.exports = factory()
  else
    root.varlidator = factory()
)(->

  # Create a new function which declares and sets the
  # `true` boolean to a variable variable name.
  # Try to evaluate the function and return its result:
  # - if the variable name could be declared, returns its value: true
  # - if the variable name is not valid, catch returns false
  varlidate = (name) ->
    try
      return (new Function('{ return ' + name + ' = true; }')).call()
    catch err
      return false

  return varlidate
)