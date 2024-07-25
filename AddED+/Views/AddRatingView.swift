//
//  AddRatingView.swift
//  AddED+
//
//  Created by 3 GO Gantz on 7/24/24.
//

import SwiftUI

struct AddRatingView: View {
    @State var description: String = ""
    @State var title: String = ""
    @StateObject var starCount = publicRatingValue()
    @State var program: Program
    var body: some View {
        NavigationView {
            
            
            VStack{
            
                GreenHeader()
                
                Text("Write Your Review For:")
                    .font(.title)
                Text(program.name)
                
                
                
                TextField("Title", text: $title)
                    .textFieldStyle(.roundedBorder)
                    .truncationMode(.tail)
                    .frame(width: 350,height:100, alignment:.topLeading)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                
                    .padding()
                
                TextField("Description", text:$description)
                    .textFieldStyle(.roundedBorder)
                    .truncationMode(.tail)
                    .frame(width: 350,height:150, alignment:.topLeading)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                
                    .padding()
                
                //Placeholder
                AddReviewStars(starCount: starCount)
                Spacer()
                ZStack {
                    Rectangle()
                        .fill(.green)
                        .frame(width: 200, height:50)
                        .cornerRadius(10)
                    Button(action: {
                        let tempRating = Rating(starCount: starCount.starCount, title: title, description: description)
                        program.addRating(inputRating: tempRating)
                        
                    }){
                        Text("Post Review")
                            .foregroundColor(.white)
                            .font(.title2)
                    }
//                    Text("Post")
//                        .foregroundColor(.white)
//                        .font(.title2)
                }
                
//                Text("\(starCount.starCount)")
                    
                
                
                Spacer()
            }
            .ignoresSafeArea()
            
            
        }
        .ignoresSafeArea()
        
    }
}

struct AddRatingView_Previews: PreviewProvider {
    static var previews: some View {
        AddRatingView(program:ECCChicago)
    }
}
