
import Foundation

public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    // write your code in Swift 4.2.1 (Linux)
    
    var counters = Array(repeating: 0, count: N)
    
    var maxCounter: Int = 0
    var minCounter: Int = 0
    
    for i in 0..<A.count {
        
        if A[i] <= N {
            
            if (counters[A[i] - 1] < minCounter) {
                counters[A[i] - 1] = minCounter
            }
            
            counters[A[i] - 1] += 1
            
            if counters[A[i] - 1] > maxCounter {
                maxCounter = counters[A[i] - 1]
            }
            
        }
        
        else if A[i] == N+1 {
            
            minCounter = maxCounter
            
        }
        
    }
    
    for j in 0..<counters.count {
        
        if counters[j] < minCounter {
            counters[j] = minCounter
        }
        
    }
    
    return counters
    
}

var A = [3,4,4,6,1,4,4]
var N = 5
// [3, 2, 2, 4, 2]

print(solution(N, &A))



// MARK: - Prompt

/*
 You are given N counters, initially set to 0, and you have two possible operations on them:

 increase(X) − counter X is increased by 1,
 max counter − all counters are set to the maximum value of any counter.
 A non-empty array A of M integers is given. This array represents consecutive operations:

 if A[K] = X, such that 1 ≤ X ≤ N, then operation K is increase(X),
 if A[K] = N + 1 then operation K is max counter.
 For example, given integer N = 5 and array A such that:

     A[0] = 3
     A[1] = 4
     A[2] = 4
     A[3] = 6
     A[4] = 1
     A[5] = 4
     A[6] = 4
 the values of the counters after each consecutive operation will be:

     (0, 0, 1, 0, 0)
     (0, 0, 1, 1, 0)
     (0, 0, 1, 2, 0)
     (2, 2, 2, 2, 2)
     (3, 2, 2, 2, 2)
     (3, 2, 2, 3, 2)
     (3, 2, 2, 4, 2)
 The goal is to calculate the value of every counter after all operations.

 Write a function:

 public func solution(_ N : Int, _ A : inout [Int]) -> [Int] 
 that, given an integer N and a non-empty array A consisting of M integers, returns a sequence of integers representing the values of the counters.

 Result array should be returned as an array of integers.

 For example, given:

     A[0] = 3
     A[1] = 4
     A[2] = 4
     A[3] = 6
     A[4] = 1
     A[5] = 4
     A[6] = 4
 the function should return [3, 2, 2, 4, 2], as explained above.

 Write an efficient algorithm for the following assumptions:

 N and M are integers within the range [1..100,000];
 each element of array A is an integer within the range [1..N + 1].
*/
