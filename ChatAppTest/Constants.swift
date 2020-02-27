//
//  Constants.swift
//  ChatAppTest
//
//  Created by Jose Saldana on 31/01/2020.
//

import Foundation

struct Constants {
    // Type properties instead of instance where let or var defined with 'static' keyword.
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    static let appTitle = "Chat App"
    static let popupError = "Oops!"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
   
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
  
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
