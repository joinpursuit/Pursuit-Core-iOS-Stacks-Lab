import Foundation

//Problem One:
//Find the largest integer in a Stack of Ints

func largest(stack: Stack<Int>) -> Int {
    var newStack = stack
    var largest = Int()
    while !newStack.isEmpty() {
        let last = newStack.pop()
        if let last = last {
            if last > largest {
                largest = last
            }
        }
    }
    return largest
}

//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
    var sum = Int()
    var newStack = stack
    while !newStack.isEmpty() {
        let value = newStack.pop()
        if let value = value {
            sum += value
        }
    }
    return sum
}

//Problem Three:
//Reverse a Stack without using an Array

//Sample input:
/*
 4
 2
 9
 3
 */

//Sample output:
/*
 3
 9
 2
 4
 */

func reverse<T>(stack: Stack<T>) -> Stack<T> {
    var newStack = Stack<T>()
    var oldStack = stack
    while !oldStack.isEmpty() {
        let value = oldStack.pop()
        if let value = value {
            newStack.push(element: value)
        }
    }
    return newStack
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    var stack1 = stackOne
    var stack2 = stackTwo
    while !stack1.isEmpty() {
        let valueOne = stack1.pop()
        let valueTwo = stack2.pop()
        if valueOne != valueTwo {
            return false
        }
    }
    if stack2.isEmpty() && stack1.isEmpty() {
        return true
    } else {
        return false
    }
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    var reverseStack = reverse(stack: stack)
    var newStack = Stack<T>()
    newStack.push(element: newElement)
    while !reverseStack.isEmpty() {
        let value = reverseStack.pop()
        if let value = value {
            newStack.push(element: value)
        }
    }
    
    return newStack
}

//Problem Six:
//Determine if the parentheses are balanced in a given String

//Sample input: ((()))
//Sample output: true

//Sample input: ((())
//Sample output: false

//Sample input: (()((())()))
//Sample output: false


func isBalanced(str: String) -> Bool {
    var stack = Stack<Character>()
    for a in str {
        stack.push(element: a)
    }
    let reverseStack = reverse(stack: stack)
    return equalStacks(stackOne: stack, stackTwo: reverseStack)
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    return ""
}

