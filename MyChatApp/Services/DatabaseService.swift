//
//  DatabaseService.swift
//  MyChatApp
//
//  Created by Bharat Singh on 22/02/22.
//

import Foundation
import Contacts
import Firebase

class DatabaseService {
    
    func getPlateformUsers(contact: [CNContact], completion: @escaping ([Users]) -> Void) {
        // The array where we're stroing fetched plaform users
        var plateformUser = [Users]()
        // construct the arrey of string to look up the phone numbers
        
     var lookupPhoneNumber =   contact.map { contact in
            // trun a contact into a phone number as a string
        return TextHelper.SanitizePhoneNumber(contact.phoneNumbers.first?.value.stringValue ?? "")
        }
        
        
        guard lookupPhoneNumber.count > 0 else {
             completion(plateformUser)
            return
        }
        // Query the database for these phone numbers
        let db = Firestore.firestore()
        
       
        
        
        while !lookupPhoneNumber.isEmpty {
            
            let firstTenNumber = Array(lookupPhoneNumber.prefix(10))
              lookupPhoneNumber =  Array(firstTenNumber.dropFirst(10))
            
            let query =  db.collection("users").whereField("phone", in: firstTenNumber)
              // Retrieve the users that are on the platform
              
              
              query.getDocuments { snapshot, error in
                  
                  if   error == nil && snapshot != nil {
                      
                      for doc in snapshot!.documents {
                          
                          if let user = try?  doc.data(as : Users.self) {
                              
                              plateformUser.append(user)
                              
                            
                          }
                          
                      }
                      
                      if lookupPhoneNumber.isEmpty {
                          completion(plateformUser)
                      }
                  }
                  
              }
        }
        
      
        
        return completion(plateformUser)
    }
    
}
