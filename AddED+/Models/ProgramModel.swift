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
        tags = [technologyTag, paidTag]
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
    
    func ratingsAverageScore() -> Int {
        var sum = 0
        for i in ratings {
            sum += i.starCount
        }
        return sum
    }
    
}

struct User {
    var name: String
    var username: String
    var interests: [String]
    var email: String
    var password: String
    var savedPrograms: [Program]
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

var ECCChicago = Program(inputName: "Everyone Can Code Chicago", inputDescription: "The Everyone Can Code Chicago initiative was launched as a public-private partnership that expands opportunities for youth to develop coding skills and explore career pathways.  Through this initiative, employees at local businesses share their professional experience with youth.  And the youth have the opportunity to gain work experience through internships.", inputTime: "2:00 PM - 5:00 PM", inputDays: "Weekdays 06/24/2024-8/02/2024", inputPlace: "Truman College")
var afterSchoolMatters = Program(inputName: "After School Matters", inputDescription: "After School Matters inspires Chicago’s teens to discover their passions, develop skills for life beyond high school, and make friends along the way.", inputTime: "", inputDays: "07/16/2024-07/16/2025", inputPlace: "Chicago, Il")
var cyberSecurityProgram = Program(inputName: "Intro to Cybersecurity", inputDescription: "Program Info", inputTime: "07/25/24",inputDays: "08/25/24", inputPlace: "Chicago, IL")
   var webDevProgram = Program(inputName: "Intro to Web Development", inputDescription: "After School Matters inspires Chicago’s teens to discover their passions, develop skills for life beyond high school, and make friends along the way.", inputTime: "07/25/24",inputDays: "08/25/24", inputPlace: "Chicago, IL")

var placeholderPrograms: [Program] = [ECCChicago, afterSchoolMatters, cyberSecurityProgram, webDevProgram]
var placeholderFeaturedPrograms: [Program] = [ECCChicago, afterSchoolMatters]


//var sampleData:  [Program] = [
//    Program(inputName: "Intro to Cybersecurity", inputDescription: "something", inputTime: "07/25/24",inputDays: "08/25/24", inputPlace: "Chicago, IL"),
//    Program(inputName: "Intro to Web Development", inputDescription: "something", inputTime: "07/25/24",inputDays: "08/25/24", inputPlace: "Chicago, IL"),
//        Program(id: 1, name: "Everyone Can Code", description: "The Everyone Can Code Chicago initiative was launched as a public-private partnership that expands opportunities for youth to develop coding skills and explore career pathways.  Through this initiative, employees at local businesses share their professional experience with youth.  And the youth have the opportunity to gain work experience through internships.", startDate: "06/24/24", endDate: "08/05/24", place: "Chicago, IL"),
//        Program(id: 2, name: "After School Matters", description: "After School Matters inspires Chicago’s teens to discover their passions, develop skills for life beyond high school, and make friends along the way.", startDate: "07/16/24", endDate: "07/16/25", place: "Chicago, IL"),
