@propertyWrapper
public enum LazyLet<Value> {
  case uninitialized(() -> Value)
  case initialized(Value)

  public init(wrappedValue: @autoclosure @escaping () -> Value) {
    self = .uninitialized(wrappedValue)
  }

  public var wrappedValue: Value {
    mutating get {
      switch self {
      case .uninitialized(let initializer):
        let value = initializer()
        self = .initialized(value)
        return value
      case .initialized(let value):
        return value
      }
    }
    set {
      switch self {
      case .uninitialized:
        self = .initialized(newValue)
      case .initialized:
        break
      }
    }
  }
}
