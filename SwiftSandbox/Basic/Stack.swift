public struct Stack<T> {
    private var storage: [T] = []
    public init() {}
    
    public mutating func push(_ element: T) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> T? {
        return storage.popLast()
    }
    
    public func peek() -> T? {
        return storage.last
    }
    
    public var isEmpty: Bool {
        return storage.isEmpty
    }
}

extension Stack {
    public var debugDescription: String {
        """
        ----top----
        \(storage.map { "\($0)" }.reversed().joined(separator:
                                                        "\n"))
        -----------}
        """
    }
}
    
