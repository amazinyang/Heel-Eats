//
//  ContentView.swift
//  Heel Eats
//
//  Created by Alex Yang on 11/2/24.
//

import SwiftUI

struct HomeScreen: View {
   // let restaurants = ["Cosmic Cantina", "Que Chula", "Mezcalito"]
    @State private var selectedCuisine: String = ""
    let cuisines = ["Select here", "American", "Chinese", "Mexican", "Cafe"]
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("uncBlue")
                    .ignoresSafeArea()
                
                VStack {
                    Image("appLogo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        .padding(.top)
                        .padding(25)
                    
                   // Spacer()
                    
                    Text("Don't know what to eat around campus?")
                        .padding(.top)
                        .foregroundStyle(.white)
                        .font(.headline)
                    Text("**Heel Eats** is here to help!")
                        .foregroundStyle(.white)
                        .font(.title)
                        .padding()
                        .multilineTextAlignment(.center)
                    
                   // Spacer()
                    
                    HStack {
                        Text("Select a cuisine: ")
                            .padding(.horizontal)
                            .font(.callout)
                         //   .padding()
                        
                        Picker("Select Cuisine", selection: $selectedCuisine) {
                            ForEach(cuisines, id: \.self) { cuisine in
                                Text(cuisine).tag(cuisine)
                            }
                        }
                            .pickerStyle(.menu)
                            .frame(width: 250, height: 70)
                            //.padding(4)
                            .padding(1)
                            
                            
                    }
                    .background(Color.white, in: .rect(cornerRadius: 10))
                    .padding()
                    .foregroundStyle(Color.primary)
                    .accentColor(.primary)
                    
                    
                    NavigationLink(destination: destinationView( selectedCuisine: selectedCuisine)) {
                        Text("Let's eat!")
                            .padding()
                            .background(Color.red, in: .rect(cornerRadius: 10))
                            .foregroundStyle(.white)
                    }
                    
                    
                    
                    
                }
            }
            .navigationTitle("Heel Eats")
        }
    }
}

private func destinationView(selectedCuisine: String) -> some View {
    switch selectedCuisine {
    case "American":
        AnyView(AmericanView())
    case "Chinese":
        AnyView(ChineseView())
    case "Mexican":
        AnyView(MexicanView())
    case "Cafe":
        AnyView(CafeView())
    default:
        AnyView(Text("Please select a cuisine!"))
    }
}


#Preview {
    HomeScreen()
}
