//
//  HomeView.swift
//  FitnessApp
//
//  Created by Debashish Boruah on 24/02/25.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 8
    
    var mockActivities = [
        Activity(id:1, title:"Today Steps", subtitle:"Goal 10,000", image: "figure.walk", tintColor:.green, amount:"9,812"),
        
        Activity(id:2, title:"Today", subtitle:"Goal 10,000", image: "figure.walk", tintColor:.red, amount: "812"),
        
        Activity(id:3, title:"Today", subtitle:"Goal 10,000", image: "figure.walk", tintColor:.blue, amount: "1812"),
        
        Activity(id:4, title:"Today Steps", subtitle:"Goal 10,000", image: "figure.run", tintColor:.purple, amount: "55,812")
    ]
    
    
    var body: some View {
        ScrollView(showsIndicators:false){
            VStack(alignment:.leading){
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack{
                    Spacer()
                    
                    VStack{
                        VStack(alignment:.leading,spacing: 8){
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(Color.red)
                            
                            Text("123 kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment:.leading,spacing: 8){
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(Color.green)
                            
                            Text("52 mins")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment:.leading,spacing: 8){
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(Color.blue)
                            
                            Text("8 hours")
                                .bold()
                        }
                        .padding(.bottom)
                    }
                    Spacer()
                    
                    ZStack{
                        ProgressCircleView(progress:$calories, goal: 600, color:.red )
                            
                        ProgressCircleView(progress:$active, goal: 60, color:.green )
                            .padding(.all,20)
                        ProgressCircleView(progress:$stand, goal:12 , color:.blue )
                            .padding(.all,40)
                    }
                    .padding(.horizontal)
                    Spacer()
                }
                .padding()
                
                HStack{
                    Text("Fitness Activity")
                        .font(.title2)
                    
                    Spacer()
                    
                    Button{
                        print("Show more")
                    } label: {
                        Text("Show More")
                            .padding(.all, 10)
                            .foregroundStyle(Color.white)
                            .background(.blue)
                            .clipShape(.capsule)
                    }
               
                }
                .padding(.horizontal)
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing:10), count: 2)) {
                    ForEach(mockActivities,id:\.id) { activity in
                        ActivityCard(activity:activity)
                    }
                }
                .padding(.horizontal)
                
            }
        }
    }
}

#Preview {
    HomeView()
}
