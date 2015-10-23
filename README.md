# Varlidator
JavaScript variable identifier validation. Try/Catch a new Function() which defines and returns a Boolean to a variable name.

#### JSPerf comparsion between valid and invalid variable names.
http://jsperf.com/varlidator-valid-vs-invalid

### Install
```sh
npm install varlidator --save
```

### Usage
```js
var varlidate = require('varlidator');

var isValid = varlidate('@');
// returns: false

isValid = varlidate('a');
// returns: true
```

### How to develop
```sh
npm install
grunt
```

### How to build (before publishing)
```sh
npm install
grunt build
```

### Alternatives
- https://github.com/mathiasbynens/mothereff.in/tree/master/js-variables