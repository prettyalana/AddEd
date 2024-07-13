//
//  SearchFunction.swift
//  AddED+
//
//  Created by 6 GO Gantz on 7/11/24.
//

import Foundation

var programNames: [String] = []


func searchFunction(query: String) -> [String] {
    var returnedArray: [String] = []
    for i in programNames {
        if i.contains(query) {
            returnedArray.append(i)
        }
    }
    return returnedArray
}
