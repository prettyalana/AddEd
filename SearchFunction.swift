//
//  SearchFunction.swift
//  AddED+
//
//  Created by 6 GO Gantz on 7/11/24.
//

import Foundation

var programNames: [String] = []

func searchFunction(query: String) -> [Program] {
    var returnedArray: [Program] = []
    for i in placeholderPrograms {
        if i.name.contains(query) {
            returnedArray.append(i)
        }
    }
    return returnedArray
}
