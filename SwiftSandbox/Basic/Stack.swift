public struct Stack<T> {
    private var storage: [T] = []
    
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

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: T...) {
        self.storage = elements
    }
    
    public init(fromString elements: String) where T == String {
        self.storage = elements.map { String($0) }
    }
        
    public var debugDescription: String {
        """
        ----top----
        \(storage.map { "\($0)" }.reversed().joined(separator:
                                                        "\n"))
        -----------}
        """
    }
}

extension Stack where T == String {
    public var isBalanceParentheses: Bool {
        var balance = 0
        
        for e in storage {
            if e == "(" {
                balance += 1
            }
            
            if e == ")" {
                balance -= 1
            }
        }
        
        return balance == 0
    }
}
    
