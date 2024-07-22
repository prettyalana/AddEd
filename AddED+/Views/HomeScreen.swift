//
//  HomeScreen.swift
//  AddED+
//
//  Created by 6 GO Gantz on 7/11/24.
//

import SwiftUI

struct HomeScreen: View {
    @State var jobSearchedValue: String = ""
    @State var foundJobs: [Program] = []
    var body: some View {
        VStack {
            //Top green bar
            ZStack {
                Rectangle()
                    .fill(.green)
                    .frame(width:UIScreen.main.bounds.width, height:90)
                //insert logo here
            }
            
            //Searching bar
            ZStack {
                //Search bar background
                Rectangle()
                    .fill(.white)
                    .frame(width: UIScreen.main.bounds.width - 40, height: 40)
                    .cornerRadius(10)
                //Search bar functionality and button
                HStack {
                    TextField("Job Search", text: $jobSearchedValue)
                        .padding([.leading, .trailing], 30.0)
                        .frame(alignment:.leading)
                    
                    Button (action: {foundJobs = searchFunction( query:jobSearchedValue)}, label: {
                        Label("", systemImage:"magnifyingglass")
                    })
                    .foregroundColor(.black)
                    .frame(width: 20, height: 20)
                    .padding([.trailing], 30.0)
                }
            }
            
            //Featured programs title
            HStack {
                Text("Featured")
                    .bold()
                    .font(.system(size:24))
                    .padding([.leading], 6.0)
            }
            .frame(width: UIScreen.main.bounds.width-20, height: 60, alignment:.leading)
            .background(.white)
            .cornerRadius(8)
            
            //Scroll through all featured programs (currently hardcoded)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(placeholderFeaturedPrograms) {
                        featuredProgram in
                        ProgramCardView(displayedProgram: featuredProgram, areTagsRemovable: false, paddingAmount: 20.0)
                    }
                }
            }
            
            //Recommended Programs Title
            HStack {
                Text("Recommended Programs")
                    .bold()
                    .font(.system(size:24))
                    .padding([.leading], 6.0)
            }
            .frame(width: UIScreen.main.bounds.width-20, height: 60, alignment:.leading)
            .background(.white)
            .cornerRadius(8)
            
            Spacer()
        }
        .background(Color(red: 0.8705, green: 0.8705, blue: 0.8705))
        .ignoresSafeArea()
    }
}

//extension HomeScreen {
//    func searchPrograms() async {
//        for i in 0...placeholderPrograms.count {
//            ProgramCardView(displayedProgram: placeholderPrograms[i], areTagsRemovable: false, paddingAmount: 20.0)
//        }
//    }
//}

#Preview {
    HomeScreen()
}
