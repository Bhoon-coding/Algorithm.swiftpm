class MyLinkedList {
    
    private var items: [Int]
    private var count: Int

    init() {
        self.items = []
        self.count = 0
    }
    
    /// index가 0보다 작고, count - 1 보다 크면 범위를 넘어가 `유효하지 않아` return  -1 을 함
    /// *유효하지 않은 index일 경우 -1을 리턴 해야함
    func get(_ index: Int) -> Int {
        return index < 0 || index > (count - 1) ? -1 : items[index]
    }
    
    ///
    func addAtHead(_ val: Int) {
        count += 1
        items.insert(val, at: 0)
    }
    
    func addAtTail(_ val: Int) {
        count += 1
        items.append(val)
    }
    
    func addAtIndex(_ index: Int, _ val: Int) {
        if index < 0 || index > count { return }
        count += 1
        index == count ? items.append(val) : items.insert(val, at: index)
    }
    
    func deleteAtIndex(_ index: Int) {
        if index < 0 || index >= count { return }
        count -= 1
        items.remove(at: index)
    }
}

/**
 * Your MyLinkedList object will be instantiated and called as such:
 * let obj = MyLinkedList()
 * let ret_1: Int = obj.get(index)
 * obj.addAtHead(val)
 * obj.addAtTail(val)
 * obj.addAtIndex(index, val)
 * obj.deleteAtIndex(index)
 */
