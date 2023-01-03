//
//  ContentView.swift
//  SwiftUILayoutStackViewSample
//
//  Created by Krupanshu Sharma on 02/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 1.
        NavigationStack {
            
            // 3.
            ZStack {
                
                // 4.
                Rectangle()
                    .fill(Gradient(colors: [.white, .yellow]))
                            .ignoresSafeArea()
                // A.
                ScrollView {
                    // B.
                    VStack {
                        container1
                        container2
                        container3
                        container4
                    }
                }
                .padding(20)
            }
            // 2.
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                    } label: {
                        Image(systemName: "text.badge.plus")
                            .foregroundColor(.black)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                    } label: {
                        Image(systemName: "magnifyingglass.circle")
                            .foregroundColor(.black)
                    }
                }

            }
        }
    }
}

private var container1: some View {
    // 1.
    VStack{
        //2.
        HStack{
            Text("Week in Paris")
                .font(.system(size: 35))
                .bold()
                .foregroundColor(.purple)
            Spacer()
        }
        
        //3.
        HStack{
            Text("2023 Fashion show in Paris")
                .font(.caption)
                .bold()
            Spacer()
        }
    }
    .padding(EdgeInsets(top: 5, leading: 0, bottom: 10, trailing: 0))
}

private var container2: some View {
    // 1.
    VStack{
        // 2.
        HStack{
            Text("Explore")
                .font(.system(size: 35))
                .bold()
            Spacer()
            Image(systemName: "slider.horizontal.3")
                .imageScale(.large)
        }
        // 3.
        HStack{
            Text("Recommended")
                .foregroundColor(.purple)
                .bold()
            Spacer()
            Text("New Models")
                .bold()
            Spacer()
            Text("2022 Show")
                .bold()
        }
        .padding(EdgeInsets(top: 02, leading: 0, bottom: 30, trailing: 0))
    }
}

private var container3: some View {
    // 1.
    HStack{
        cardView(model: FashionModel(image: "model1", name: "Raamin Ka", location: "Iran"))
            .frame(width: 180, height: 250)
        cardView(model: FashionModel(image: "model2", name: "Raamin Ka", location: "Iran"))
            .frame(width: 180, height: 250)
    }
    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
}

private var container4: some View {
    // 1.
    collectionCardView(model: FashionModel(image: "model3", name: "", location: ""))
        .frame(width: 365, height: 150)
}


struct FashionModel {
    let image: String
    let name: String
    let location: String
}

struct cardView: View {
    
    var model: FashionModel
    
    var body: some View {
        VStack{
            Image(model.image)
                .resizable()
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: 15))
            Text(model.name)
                .bold()
            Text(model.location)
        }
    }
}

struct collectionCardView: View {
    var model: FashionModel

    var body: some View {
        Image(model.image)
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

