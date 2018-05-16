//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation



// Print out the input provided
print("Enter your number:")

// INPUT

// Loop forever
var n = 0 // declared outside loop, so we can use it once loop is finished
while true {
    
    // Test 1 Make sure input is not nil
    guard let givenInput = readLine() else {
        
        // prompt again if here
        continue    // continue with next iteration of our loop
    }
    
    // Test 2: Make sure it can only be an Int
    guard let givenInteger = Int(givenInput) else {
        
        // Re-prompt
        continue    // continue with next iteration of the loop
        
    }
    
    // Test 3 Make sure the input is in range
    if givenInteger < 1 || givenInteger > 32500 {
        
        // re-prompt if we aren't in the range
        continue
        
    }
    
    // If we got here, it passed our tests
    n = givenInteger // set outside value to be the same as the one in loop
    break // end the loop
    
}

//

// PROCESS
// Find sum of our divisors
var sum = 1     // 1 is always a good divisor

// Find other divisors if the input is greater than 2
if n > 2 {
    
    // Inspect between 2 and half of n (range we can have good divisors)
    for i in 2...n/2 {
        
        // When there is no remainder (no fraction), i is a proper divisor of n
        if n % i == 0 {
            sum += i       // Add to the sum of divisors
        }
        
    }
    
}

//Output

// Special case when input was 1
if n == 1 {
    print("1 is a deficient number.")
} else {
    
    // Decide what type of number this is
    if sum < n {
        print("\(n) is a deficient number.")
    } else if sum == n {
        print("\(n) is a perfect number.")
    } else {
        print("\(n) is an abundant number.")
    }
    
}

