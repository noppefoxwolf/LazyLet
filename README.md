# LazyLet

```swift
@LazyLet var value: Int = 0
XCTAssertEqual(value, 0)
value = 1
XCTAssertEqual(value, 0)
```

```swift
@LazyLet var value: Int = 0
value = 1
XCTAssertEqual(value, 1)
value = 2
XCTAssertEqual(value, 1)
```
