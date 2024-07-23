//
//  ProgramRecommendedView.swift
//  AddED+
//
//  Created by 6 GO Gantz on 7/22/24.
//

import SwiftUI

struct ProgramRecommendedView: View {
    @State var program1: Program
    @State var program2: Program
    var body: some View {
        HStack {
            Spacer()
            ProgramCardView(displayedProgram: program1, areTagsRemovable: false, paddingAmount: 10.0)
//                .padding(.leading, 20)
                .frame(width:180, height:50)
            Spacer()
            ProgramCardView(displayedProgram:program2, areTagsRemovable: false, paddingAmount: 10.0)
//                .padding(.trailing, 20)
                .frame(width:180, height:50)
            Spacer()
        }
//        .padding([.leading, .trailing], 20)
    }
}

#Preview {
    ProgramRecommendedView(program1: ECCChicago, program2: afterSchoolMatters)
}
