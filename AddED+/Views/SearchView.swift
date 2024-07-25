//
//  SearchView.swift
//  AddED+
//
//  Created by 6 GO Gantz on 7/24/24.
//

import SwiftUI

struct SearchView: View {
    @State var jobSearchedValue: String = ""
    @State var foundJobs: [Program] = []
    var body: some View {
        ZStack {
            VStack {
                GreenHeader()
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
                
                VStack(alignment:.leading) {
                    
                    HStack {
                        Text("Filters")
                            .bold()
                            .padding(.leading, 20)
                        Spacer()
                    }
                }
                
                List {
                    
                }
                .frame(width: UIScreen.main.bounds.width-20, alignment:.leading)
                .cornerRadius(8)
            }
            .ignoresSafeArea()
        }
        .background(.customBackground)
    }
}

#Preview {
    SearchView()
}
