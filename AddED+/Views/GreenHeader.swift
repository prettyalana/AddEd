//
//  GreenHeader.swift
//  AddED+
//
//  Created by Alana Edwards on 7/22/24.
//

import SwiftUI

struct GreenHeader: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.green)
                .frame(width:UIScreen.main.bounds.width, height: 90)
            HStack {
                Image("logo 1")
                    .resizable()
                    .frame(width:400, height:90)
            }
        }
    }
}

#Preview {
    GreenHeader()
}
