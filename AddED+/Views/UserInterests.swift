//
//  UserInterestsView.swift
//  AddED+
//
//  Created by Alana Edwards on 7/22/24.
//

import SwiftUI
import WrappingHStack

struct UserInterests: View {
    var tags: [Tag] = placeholderTags
    
    var body: some View {
        VStack {
            HStack {
                GreenHeader()
            }
            .padding(.bottom)
            ScrollView {
                //Button
                Image("profileImage")
                Text(currentUser.username)
                HStack {
                    Text("My Interests")
                        .bold()
                        .font(.system(size:24))
                        .padding([.leading], 6.0)
                }
                .frame(width: UIScreen.main.bounds.width-20, height: 60, alignment:.leading)
                .background(.white)
                .cornerRadius(8)
                ZStack {
                    WrappingHStack {
                        ForEach(tags) { tag in
                            TagRectangleView(displayTag: tag, removable: true)
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width-20, height: 300, alignment: .topLeading)
                .background(.white)
                .cornerRadius(8)
                
            }
        }
        .background(Color(red: 0.8705, green: 0.8705, blue: 0.8705))
        .ignoresSafeArea()
    }
}

#Preview {
    UserInterests()
}
