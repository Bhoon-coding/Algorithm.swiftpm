struct Stack<T> {
    
    private var stack: [T] = []
    
    public var isEmpty: Bool {
        return stack.isEmpty
    }
    
    public var count: Int {
        return stack.count
    }
    
    public mutating func push(_ el: T) {
        stack.append(el)
    }
    
    public mutating func pop() -> T? {
        return isEmpty ? nil : stack.popLast()
    }
    
}

struct Queue<T> {
    
    var s1 = Stack<T>()
    var s2 = Stack<T>()
    
    public mutating func inQueue(_ el: T) {
        s1.push(el)
    }
    
    public mutating func deQueue() -> T? {
        var savedValue: T?
        // TODO: [x] s1에 아무것도 없으면 return nil
        if s1.isEmpty {
            return nil
        // TODO: [x] s1에 요소가 하나만 있으면 return s1[0]
        } else if s1.count == 1 {
            return s1.pop()!
        }

        // TODO: [x] 나머지 루프 돌리기

        // TODO: [x] s1이 여러개면 s1 가장 처음에 저장된 요소가 남을때 까지 s2로 push
        // TODO: [x] s1 마지막 요소를 따로 저장 후 return
        // TODO: [x] s2에 있는 모든요소들 다시 s1으로 push
        for _ in 1...s1.count {
            if s1.count > 1 {
                s2.push(s1.pop()!)
            } else {
                savedValue = s1.pop()!
                for _ in 1...s2.count {
                    s1.push(s2.pop()!)
                }
                return savedValue
            }
        }
        return nil
    }
    
}

var queue1 = Queue<Int>()
queue1.inQueue(1)
queue1.inQueue(2)

queue1.deQueue()
queue1.deQueue()
queue1.deQueue()
queue1.deQueue()
