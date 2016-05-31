//
//  RomanNumeralConverter.swift
//  Pods
//
//  Created by Donny Davis on 5/22/16.
//
//

import Foundation

public class RomanNumeralConverter: AnyObject {
    
    private enum RomanNumeralValue: String {
        case Ones = "I"
        case Fives = "V"
        case Tens = "X"
        case Fifties = "L"
        case Hundreds = "C"
        case FiveHundreds = "D"
        case Thousands = "M"
    }
    
    
    //
    // Main function to convert numeric value to Roman Numerals
    //
    
    public class func convertNumber(number: Int) -> String {
        
        var romanNumeralsString = ""
        var positionsArray = [Int]()
        
        //
        // Make sure that numbers over 5000 don't fall through
        //
        
        guard number <= 5000 else {
            return String(number)
        }
        
        //
        // Seperate the value out to ones, tens, and hundreds
        //
        
        var position = 0
        var original = number
        while original > 0 {
            position = original % 10
            positionsArray.insert(position, atIndex: 0)
            original /= 10
        }
        
        
        //
        // Loop through each position for the number to convert to the appropriate
        // Roman Numeral value
        //
        
        for index in 0...positionsArray.count-1 {
            
            switch positionsArray.count - index {
            case 4:
                romanNumeralsString = convertThousands(positionsArray[index])
                
            case 3:
                romanNumeralsString += convertHundreds(positionsArray[index])
                
            case 2:
                romanNumeralsString += convertTens(positionsArray[index])
                
            case 1:
                romanNumeralsString += convertOnes(positionsArray[index])
                
            default:
                break
            }
            
        }
        
        return romanNumeralsString
    }
    
    
    //
    // Convert the ones position
    //
    
    private class func convertOnes(number: Int) -> String {
        
        var stringValue = ""
        
        for num in 0...number {
            switch num {
            case 1...3:
                stringValue += RomanNumeralValue.Ones.rawValue
                
            case 4:
                stringValue = RomanNumeralValue.Ones.rawValue + RomanNumeralValue.Fives.rawValue
                
            case 5:
                stringValue = RomanNumeralValue.Fives.rawValue
                
            case 6...8:
                stringValue += RomanNumeralValue.Ones.rawValue
                
            case 9:
                stringValue = RomanNumeralValue.Ones.rawValue + RomanNumeralValue.Tens.rawValue
                
            default:
                break
            }
        }
        
        return stringValue
        
    }
    
    
    //
    // Convert the tens position
    //
    
    private class func convertTens(number: Int) -> String {
        
        var stringValue = ""
        
        for num in 0...number {
            switch num {
            case 1...3:
                stringValue += RomanNumeralValue.Tens.rawValue
                
            case 4:
                stringValue = RomanNumeralValue.Tens.rawValue + RomanNumeralValue.Fifties.rawValue
                
            case 5:
                stringValue = RomanNumeralValue.Fifties.rawValue
                
            case 6...8:
                stringValue += RomanNumeralValue.Tens.rawValue
                
            case 9:
                stringValue = RomanNumeralValue.Tens.rawValue + RomanNumeralValue.Hundreds.rawValue
                
            default:
                break
            }
        }
        
        return stringValue
        
    }
    
    
    //
    // Convert the hundreds position
    //
    
    private class func convertHundreds(number: Int) -> String {
        
        var stringValue = ""
        
        for num in 0...number {
            switch num {
            case 1...3:
                stringValue += RomanNumeralValue.Hundreds.rawValue
                
            case 4:
                stringValue = RomanNumeralValue.Hundreds.rawValue + RomanNumeralValue.FiveHundreds.rawValue
                
            case 5:
                stringValue = RomanNumeralValue.FiveHundreds.rawValue
                
            case 6...8:
                stringValue += RomanNumeralValue.Hundreds.rawValue
                
            case 9:
                stringValue = RomanNumeralValue.Hundreds.rawValue + RomanNumeralValue.Thousands.rawValue
                
            default:
                break
            }
        }
        
        return stringValue
        
    }
    
    
    //
    // Convert the thousands position
    //
    
    private class func convertThousands(number: Int) -> String {
        
        var stringValue = ""
        
        for num in 0...number {
            switch num {
            case 1...3:
                stringValue += RomanNumeralValue.Thousands.rawValue
                
            case 4:
                stringValue = RomanNumeralValue.Ones.rawValue + RomanNumeralValue.Fives.rawValue
                
            case 5:
                stringValue = RomanNumeralValue.Fives.rawValue
                
            default:
                break
            }
        }
        
        return stringValue
        
    }
}