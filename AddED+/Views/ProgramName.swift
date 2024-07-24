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
        ZStack {
            Rectangle()
                .fill(.white)
                .frame(width: 380, height: 75)
                .cornerRadius(10)
                .shadow(color: Color.black, radius: 5)
            TextField("Program Name", text:$programName)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .frame(width:350)
        }
    }
}

#Preview {
    ProgramName()
}
