# DateFormatterBucket

A singleton to hold all date formatters with custom date format.

## Why?

Creating date formatters is expensive. When ever possible you should reuse date formatters rather than creating new ones.

This micro packages is a singletong storing all date formatters with custom date format.

## Usage

```swift
let dateFormatter = DateFormatterBucket.shared["yyyy-dd-MM"]

// lots
// ...
// of
// ...
// code

let newDateFormatter = DateFormatterBucket.shared["yyyy-dd-MM"]
```

These two date formatters are the instance. When calling `DateFormatterBucket.shared["yyyy-dd-MM"]` a date formatter is generated if it is not already there. Otherwise the existing date formatter is returned.

## Installation

Add as Swift Package in Xcode.

## Who?

Dominik Hauser

[@dasdom](https://twitter.com/dasdom)

## Licence

MIT
