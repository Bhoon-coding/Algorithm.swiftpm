class Solution {
  func findNumbers(_ numbs: [Int]) -> Int {
    return numbs.filter { String($0).count % 2 == 0 }.count
  
  }
}
