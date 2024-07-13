//
//  ContentView.swift
//  AddED+
//
//  Created by 6 GO Gantz on 7/10/24.
//

import SwiftUI


struct ContentView: View {
    @State private var jobSearchedValue: String = ""

    var body: some View {
        VStack {
            TextField("Job Search", text: $jobSearchedValue)
                .background()
            
            Spacer()
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
