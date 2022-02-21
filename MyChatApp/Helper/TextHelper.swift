//
//  SanitizePhoneNumber.swift
//  MyChatApp
//
//  Created by Bharat Singh on 22/02/22.
//

import Foundation

class TextHelper {
    
   static func SanitizePhoneNumber(_ phoneNumber:String) -> String {
        
        return  phoneNumber.replacingOccurrences(of: "(", with: "")
                .replacingOccurrences(of: ")", with: "")
                .replacingOccurrences(of: "-", with: "")
                .replacingOccurrences(of: " ", with: "")
    }
}
