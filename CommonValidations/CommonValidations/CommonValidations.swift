//
//  CommonValidations.swift
//  ACSCommonValidations
//
//  Created by Nana Aferi on 01/08/2020.
//  Copyright © 2020 ACS Ghana. All rights reserved.
//

import Foundation

public protocol ICommonValidations: class {
    func validateName(str:String) -> Bool
    func validateUserName(str:String) -> Bool
    func validatePassword(str:String) -> Bool
    func validateEmail(str:String) -> Bool
    func validatePhone(str:String) -> Bool
    func isFutureDates(str:String) -> Bool
    func validateOTP(otp:Int) -> Bool
    func validateDateOfBirth(date:Date) -> Bool
    
}
public class CommonValidations: ICommonValidations {
    
    public var minimumValue = 2
    public var maximumValue = 100
    
    public init() {}
    
    public func validateName(str:String) -> Bool {
        if str.isEmpty || str.isNumber { return false }
        var val = Validation()
        val.minimumLength = 2
        val.maximumLength = 100
        
        //TODO: if there are more than two
        // Replace more than two whitespaces between two
        //characters
        
        
        return false
    }
    
    public func validateUserName(str:String) -> Bool {
        return false
    }
    
    public func validatePassword(str:String) -> Bool {
        return false
    }
    
    public func validateEmail(str:String) -> Bool {
        return false
    }
    
    public func validatePhone(str:String) -> Bool {
        return false
    }
    
    public func isFutureDates(str:String) -> Bool {
        return false
    }
    
    public func validateOTP(otp:Int) -> Bool {
        return false
    }
    
    public func validateDateOfBirth(date:Date) -> Bool {
        return false
    }
    
}

extension String  {
       var isNumber: Bool {
           return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
       }
   }
