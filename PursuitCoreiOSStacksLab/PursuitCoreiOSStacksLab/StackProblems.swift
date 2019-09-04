import Foundation

//Problem One:
//Find the largest integer in a Stack of Ints

//func largest(stack: Stack<Int>) -> Int {
//    return 0
//}

func largest(stack: Stack<Int>) -> Int {
    var newStack = stack
    var answer: Int = newStack.pop()!
    
    while !newStack.isEmpty(){
        if let element = newStack.pop(){
            if element > answer{
                answer = element
            }
        }
    }
    return answer
}

//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
    var newStack = stack
    var result = 0
    while !newStack.isEmpty() {
        if let operand = newStack.pop(){
            result += operand
        }
    }
    return result
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
    var newStack = stack

    var finalStack = Stack<T>()
    while !newStack.isEmpty() {
        if let value = newStack.pop(){
            finalStack.push(element: value)
        }
    }
    return finalStack
}


//Problem Four:
//Determine if two stacks are equal

//func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) ->
//    Bool {
//
//    return false
//}

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) ->
    Bool {
        var stack1 = stackOne
        var stack2 = stackTwo

        
        while !stack1.isEmpty(){
            
            if stack2.isEmpty(){
                return false
            }
            
            if let elementOne = stack1.pop(), let elementTwo = stack2.pop(){
                if elementOne != elementTwo{
                    return false
                }
            }
        }
        return true
}

//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    
    var newStack = stack
    
    var reverseStack = Stack<T>()
    
    var finalStack = Stack<T>()
    
    while(!newStack.isEmpty()){
        if let element = newStack.pop(){
            reverseStack.push(element: element)
        }
    }
    
    finalStack.push(element: newElement)
    
    while(!reverseStack.isEmpty()){
        if let element = reverseStack.pop(){
            finalStack.push(element: element)
        }
    }
    
    return finalStack
}

//Problem Six:
//Determine if the parentheses are balanced in a given String

//Sample input: ((()))
//Sample output: true

//Sample input: ((())
//Sample output: false

//Sample input: (()((())()))
//Sample output: false


//func isBalanced(str: String) -> Bool {
//    return false
//}

func isBalanced(str: String) -> Bool {
    
    var leftParenStack = Stack<Character>()
    var rightParenStack = Stack<Character>()
    
    for char in str{
        if char == "("{
            leftParenStack.push(element: char)
        }else{
            rightParenStack.push(element: char)
        }
    }
    
    while !leftParenStack.isEmpty(){
        if rightParenStack.isEmpty(){
            return false
        }
        _ = leftParenStack.pop()
        _ = rightParenStack.pop()
    }

    return true
}


func convertToBinary(_ num: Int) -> String {
    
    var number = num
    var newStack = Stack<Int>()
    var answer = String()
    
    while number > 0{
        if number % 2 != 0{
            newStack.push(element: 1)
        }else{
            newStack.push(element: 0)
        }
        number /= 2
    }
    
    while !newStack.isEmpty(){
        if let element = newStack.pop(){
            answer.append("\(element)")
        }
    }
    return answer
}
