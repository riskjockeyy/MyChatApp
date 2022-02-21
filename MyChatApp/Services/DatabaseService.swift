//
//  DatabaseService.swift
//  MyChatApp
//
//  Created by Bharat Singh on 22/02/22.
//

import Foundation
import Contacts

class DatabaseService {
    
    func getPlateformUsers(contact: [CNContact], completion: @escaping ([Users]) -> Void) {
        
        var plateformUser = [Users]()
        // construct the arrey of string to look up the phone numbers
        
     var lookupPhoneNumber =   contact.map { contact in
            // trun a contact into a phone number as a string
         TextHelper.SanitizePhoneNumber(contact.phoneNumbers.first?.value.stringValue ?? "") 
        }
        // Query the database for these phone numbers
        
        // Retrieve the users that are on the platform
        
        
        return completion(plateformUser)
    }
    
}
