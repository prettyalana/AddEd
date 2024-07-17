//
//  Program.swift
//  AddED+
//
//  Created by Alana Edwards on 7/16/24.
//

import Foundation


struct Program {
    let name: String
    let description: String
    let startDate: String
    let endDate: String
    let place:  String
    
    static let sampleData:  [Program] = [
    Program(name: "Intro to Cybersecurity", description: "something", startDate: "07/25/24",endDate: "08/25/24", place: "Chicago, IL"),
    Program(name: "Intro to Web Development", description: "something", startDate: "07/25/24",endDate: "08/25/24", place: "Chicago, IL")
    ]
}

