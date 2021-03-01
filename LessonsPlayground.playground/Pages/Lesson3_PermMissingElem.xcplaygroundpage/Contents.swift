
import Foundation

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)

    // ASSUMPTIONS:
    // - N is an integer within the range [0..100,000];
    // - the elements of A are all distinct;
    // - each element of array A is an integer within the range [1..(N + 1)].
    
    if A.count == 0 {
        return 1
    }
    
    let sortedArray = A.sorted(by: { $0 < $1 })
    
    for i in 0..<A.count {
        if sortedArray[i] != i + 1 {
            return i + 1
        }
    }
    
    return A.count + 1
    
}

var A = [3, 2]       // -> 4

print(solution(&A))



// MARK: - Prompt

/*
 An array A consisting of N different integers is given. The array contains integers in the range [1..(N + 1)], which means that exactly one element is missing.

 Your goal is to find that missing element.

 Write a function:

 public func solution(_ A : inout [Int]) -> Int
 that, given an array A, returns the value of the missing element.

 For example, given array A such that:

   A[0] = 2
   A[1] = 3
   A[2] = 1
   A[3] = 5
 the function should return 4, as it is the missing element.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [0..100,000];
 the elements of A are all distinct;
 each element of array A is an integer within the range [1..(N + 1)].
*/
