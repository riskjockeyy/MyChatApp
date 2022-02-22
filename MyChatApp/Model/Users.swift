//
//  Users.swift
//  MyChatApp
//
//  Created by Bharat Singh on 22/02/22.
//

import Foundation

import FirebaseFirestoreSwift

struct Users: Codable, Identifiable {
    
    @DocumentID var id: String?
    var firstname : String?
    var lastname: String?
    var phone: String?
    var photo: String?
}
