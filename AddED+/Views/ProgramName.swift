//
//  programName.swift
//  add program page
//
//  Created by 2 GO Gantz on 7/16/24.
//

import SwiftUI

struct ProgramName: View {
    @State var programName: String = ""
    var body: some View {
        TextField("Program Name", text:$programName)
            .font(.title)
            .textFieldStyle(.roundedBorder)
    }
}

#Preview {
    ProgramName()
}
