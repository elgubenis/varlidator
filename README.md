# Varlidator
JavaScript variable identifier validation.

## Install
```sh
npm install varlidator --save
```

## Usage
```js
var varlidate = require('varlidator');

var isValid = varlidate('@');
// returns: false

isValid = varlidate('a');
// returns: true
```

## How to develop
```sh
npm install
grunt
```

## How to build (before publishing)
```sh
npm install
grunt build
```