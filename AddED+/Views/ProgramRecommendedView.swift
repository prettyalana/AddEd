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
            ProgramCardView(displayedProgram: program1, areTagsRemovable: false, paddingAmount: 10.0)
                .padding(.leading, 20)
            ProgramCardView(displayedProgram:program2, areTagsRemovable: false, paddingAmount: 10.0)
                .padding(.trailing, 20)
        }
        .padding([.leading, .trailing], 20)
    }
}

#Preview {
    ProgramRecommendedView(program1: ECCChicago, program2: afterSchoolMatters)
}
