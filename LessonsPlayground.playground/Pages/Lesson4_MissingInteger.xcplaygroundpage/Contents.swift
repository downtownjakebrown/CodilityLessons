
import Foundation

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    let positiveValues = A.filter({ $0 > 0 })
    if positiveValues.count == 0 {
        return 1
    }
    
    let uniqueValues = Array(Set(positiveValues))
    let sortedValues = uniqueValues.sorted(by: { $0 < $1 })
    
    for i in 0..<sortedValues.count {
        if sortedValues[i] != (i + 1) {
            return (i + 1)
        }
    }
    
    return sortedValues[sortedValues.count - 1] + 1
    
}

var A1 = [1, 3, 6, 4, 1, 2]     // -> 5
var A2 = [1, 2, 3]              // -> 4
var A3 = [-1, -3]               // -> 1

print(solution(&A1))
print(solution(&A2))
print(solution(&A3))



// MARK: - Prompt

/*
 This is a demo task.

 Write a function:

 public func solution(_ A : inout [Int]) -> Int
 that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.

 For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.

 Given A = [1, 2, 3], the function should return 4.

 Given A = [−1, −3], the function should return 1.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [1..100,000];
 each element of array A is an integer within the range [−1,000,000..1,000,000].
*/
