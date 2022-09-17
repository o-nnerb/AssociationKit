# AssociationKit

[![Tests](https://github.com/brennobemoura/AssociationKit/actions/workflows/tests.yml/badge.svg)](https://github.com/brennobemoura/AssociationKit/actions/workflows/tests.yml)

AssociationKit is a super easy to use library that enhance the way
that we store data over object instances.

## Usage

Like SwiftUI Environment the coding part for defining properties 
is the same way.

```
import AssociationKit

struct FruitAssociationKey: AssociationKey {
    static var defaultValue = "Mango"
}

extension AssociationValues {

    var fruit: String {
        get { self[FruitAssociationKey.self] }
        set { self[FruitAssociationKey.self] = newValue }
    }
}

extension UIViewController {

    var fruit: String {
        get { environment.fruit }
        set { environment.fruit = newValue }
    }
}
```

Environment property is not defined in any object. You have to
implement this by yourself and usage.

```
import UIKit

extension UIViewController {

    var environment: AssociationEnvironment {
        .environment(self)
    }
}
```

## Why use this library?

This library was implemented due to some bugs found over different
versions of iOS. Using too many associated objects using objc API
in Swift caused weird behaviors that this library resolved.

Since only one object is stored using dynamic memory from objc,
I believe that this makes the write and read operations more 
secure.

## Contributions

Do you wanna make your contribution? Feel free to open your bug
report and pull request. I appreciate any kind of help and 
improvements 😉.
