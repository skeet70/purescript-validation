# Validation
This is a test library to see how much trouble it is to write Purescript libraries that interop with Javascript
applications. It's also to check what the performance/size cost is of bundling a JS lib from PS for something so small.

## Installation
### Purescript

```console
bower install --save https://github.com/skeet70/purescript-validation.git
```

### Javascript

```console
npm install --save https://github.com/mumurphy/purescript-validation.git
```

## Usage
### Purescript
```purescript
module Main where

import Prelude (Unit, bind, show, (<>))

import Control.Monad.Eff
import Control.Monad.Eff.Console (CONSOLE, log)

import Data.Validation.Email (validate)

main :: forall a. Eff ( console :: CONSOLE | a ) Unit
main = do
  log ("Is \"ohshitwaddup\" an email? " <> show (validate "ohshitwaddup"))
  log ("How about \"junk@clurictec.com\"? " <> show (validate "junk@clurictec.com"))
```

```console
Is "ohshitwaddup" an email? false
How about "junk@clurictec.com"? true
```

### Javascript
```javascript
import Validation from 'purescript-validation';

console.log(`Is "ohshitwaddup" an email? ${Validation.validate("ohshitwaddup")}`);
console.log(`How about "junk@clurictec.com"? ${Validation.validate("junk@clurictec.com")}`);
```

```console
Is "ohshitwaddup" an email? false
How about "junk@clurictec.com"? true
```

## Why?
I'd like to use this to show how simple it can be to interop with JS, so I can push folks at work over
to using it :smile:.

## Release
Once reviewed, run `npm run build` to create the JS target lib, commit & push,
and merge your PR. Create a semver git tag on the new master, and push that up.

```console
npm run build
git add blah target/purescript-validation.js
git commit
git push

# merge in github
git pull
git tag v1.0.0
git push origin tag v1.0.0
```
