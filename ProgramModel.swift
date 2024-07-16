//
//  ProgramModel.swift
//  AddED+
//
//  Created by 6 GO Gantz on 7/13/24.
//

import Foundation
import SwiftUI

struct Rating {
    var starCount: Int
    var title: String
    var description: String
}

class Program: Identifiable {
    var name: String
    var description: String
    var time: String
    var days: String
    var place: String
    var verified: Bool
    var ratings: [Rating]
    var tags: [Tag]
    init(inputName: String, inputDescription: String, inputTime: String, inputDays: String, inputPlace: String) {
        name = inputName
        description = inputDescription
        time = inputTime
        days = inputDays
        place = inputPlace
        verified = false
        ratings = []
        tags = []
    }
    
    func addTag(inputTag: Tag) {
        tags.append(inputTag)
    }
    
    func removeTag(inputTag: Tag) {
        for i in 0...tags.count {
            if tags[i] === inputTag {
                tags.remove(at: i)
                break
            }
        }
    }
    func addRating(inputRating: Rating) {
        ratings.append(inputRating)
    }
    
    func toggleVerify() {
        verified.toggle()
    }
    
}

struct User {
    var name: String
    var username: String
    var interests: [String]
    var email: String
    var password: String
}

class Tag: Identifiable {
    var name: String
    var type: String
    init(inputName: String, inputType: String) {
        name = inputName
        type = inputType
    }
    func getTypeColor() -> Color {
        switch type {
        case "Age Group":
            return Color.yellow
        case "Tech":
            return Color.blue
        default:
            return Color.black
        }
    }
    
}

let technologyTag = Tag(inputName: "Technology", inputType: "Tech")
let paidTag = Tag(inputName: "Paid Internship", inputType: "")

var ECCChicago = Program(inputName: "Everyone Can Code Chicago", inputDescription: "Coding course for high school and college", inputTime: "2:00 PM - 5:00 PM", inputDays: "Weekdays 06/24/2024-8/02/2024", inputPlace: "Truman College")

var placeholderPrograms: [Program] = [ECCChicago]
var placeholderFeaturedPrograms: [Program] = [ECCChicago]

