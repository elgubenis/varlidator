requireHelper = require './require_helper'
lib = requireHelper 'index.js'

assert = require 'assert'

describe 'module behavior', ->

  it 'should return false for an invalid variable name', ->
    result = lib '@'
    assert.equal false, result

  it 'should return false for an invalid variable name', ->
    result = lib '`'
    assert.equal false, result

  it 'should return true for a valid variable name', ->
    result = lib 'a'
    assert.equal true, result