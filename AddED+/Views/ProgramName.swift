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
            .shadow(color: Color.black, radius: 5)
            .frame(width: UIScreen.main.bounds.width-20, height:55, alignment: .topLeading)
    }
}

#Preview {
    ProgramName()
}
