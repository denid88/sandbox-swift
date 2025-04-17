public struct LinkedList<T> {
    public var head: Node<T>?
    public var tail: Node<T>?
    
    public init() {
        
    }
    
    public mutating func push(_ value: T) {
        head = Node(value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    public mutating func append(_ value: T) {
        guard !isEmpty else {
            push(value)
            return
        }
        
        tail!.next = Node(value)
        tail = tail!.next
    }
    
    public var isEmpty: Bool {
        head == nil
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
            return "Empty list"
        }
        return String(describing: head)
    }
}
