//
//  Program.swift
//  AddED+
//
//  Created by Alana Edwards on 7/16/24.
//

import Foundation


struct Program {
    let id: Int
    var name: String
    var description: String
    var startDate: String
    var endDate: String
    var place:  String
    
//    private var imageName: String
//    var image: Image {
//        Image(imageName)
//    }
    
    static let sampleData:  [Program] = [
        Program(id: 1, name: "Everyone Can Code", description: "The Everyone Can Code Chicago initiative was launched as a public-private partnership that expands opportunities for youth to develop coding skills and explore career pathways.  Through this initiative, employees at local businesses share their professional experience with youth.  And the youth have the opportunity to gain work experience through internships.", startDate: "06/24/24", endDate: "08/05/24", place: "Chicago, IL"),
        Program(id: 2, name: "After School Matters", description: "After School Matters inspires Chicago’s teens to discover their passions, develop skills for life beyond high school, and make friends along the way.", startDate: "07/16/24", endDate: "07/16/25", place: "Chicago, IL"),
    ]
}

