//
//  User.swift
//  Autorization page
//
//  Created by Павел on 23.04.2022.
//

import Foundation

struct User {
    
    let name: String
    let password: String
    let age: String
    let professions: String
    let heigth: String
    let weigth: String
    
    static func getUser() -> User {
        User(
            name: "Pavel",
            password: "123",
            age: "41",
            professions: "developer",
            heigth: "172",
            weigth: "88"
        )}
}
