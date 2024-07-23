//
//  UserInterestsView.swift
//  AddED+
//
//  Created by Alana Edwards on 7/22/24.
//

import SwiftUI

struct UserInterests: View {
    var i = 0
    
    var body: some View {
        VStack {
            HStack {
                GreenHeader()
            }
            .padding(.bottom)
            HStack {
                //Button
                Image(systemName: "arrow.left")
            }
            .padding(.trailing, 300)
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
                    HStack {

                    }
                    .frame(width: UIScreen.main.bounds.width-20, height: 250, alignment:.leading)
                    .background(.white)
                    .cornerRadius(8)
                    Spacer()
                }
            }
            .background(Color(red: 0.8705, green: 0.8705, blue: 0.8705))
            .ignoresSafeArea()
        }
    }
    
    #Preview {
        UserInterests()
    }
