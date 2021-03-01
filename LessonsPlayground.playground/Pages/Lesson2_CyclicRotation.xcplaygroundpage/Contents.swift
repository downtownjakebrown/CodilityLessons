
import Foundation

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    // write your code in Swift 4.2.1 (Linux)

    if A.count == 0 || K % A.count == 0 {
        return A
    }
    
    var rotation: Int = 0
    
    if K > 0 {
        rotation = K % A.count
    } else if K < 0 {
        rotation = A.count + (K % A.count)
    }
    
    var rotatedArray = A
    
    let backEnd = rotatedArray.suffix(rotation)
    rotatedArray.removeLast(rotation)
    rotatedArray.insert(contentsOf: backEnd, at: 0)
    
    return rotatedArray
    
}

var A1 = [3, 8, 9, 7, 6]
let K1 = -31

print(solution(&A1, K1))



// MARK: - Prompt

/*
 An array A consisting of N integers is given. Rotation of the array means that each element is shifted right by one index, and the last element of the array is moved to the first place. For example, the rotation of array A = [3, 8, 9, 7, 6] is [6, 3, 8, 9, 7] (elements are shifted right by one index and 6 is moved to the first place).

 The goal is to rotate array A K times; that is, each element of A will be shifted to the right K times.

 Write a function:

 public func solution(_ A : inout [Int], _ K : Int) -> [Int]
 that, given an array A consisting of N integers and an integer K, returns the array A rotated K times.

 For example, given

     A = [3, 8, 9, 7, 6]
     K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:

     [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
     [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
     [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
 For another example, given

     A = [0, 0, 0]
     K = 1
 the function should return [0, 0, 0]

 Given

     A = [1, 2, 3, 4]
     K = 4
 the function should return [1, 2, 3, 4]

 Assume that:

 N and K are integers within the range [0..100];
 each element of array A is an integer within the range [−1,000..1,000].
 In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.
*/
