import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    
    for (index, num) in nums.enumerated() {
        let complement = target - num
        print(complement)
        
        if let complementIndex = dict[complement] {
            return [complementIndex, index]
        }
        dict[num] = index
    }
    
    fatalError("No valid output found")
}

twoSum([2,7,11,15], 9)
