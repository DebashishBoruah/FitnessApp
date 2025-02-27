//
//  HomeView.swift
//  FitnessApp
//
//  Created by Debashish Boruah on 24/02/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators:false){
                VStack(alignment:.leading){
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    
                    HStack{
                        Spacer()
                        
                        VStack(alignment:.leading){
                            VStack(alignment:.leading,spacing: 8){
                                Text("Calories")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(Color.red)
                                
                                Text("\(viewModel.calories) kcal")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment:.leading,spacing: 8){
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(Color.green)
                                
                                Text("\(viewModel.active) mins")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment:.leading,spacing: 8){
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(Color.blue)
                                
                                Text("\(viewModel.stand)hours")
                                    .bold()
                            }
                            .padding(.bottom)
                        }
                        Spacer()
                        
                        ZStack{
                            ProgressCircleView(progress:$viewModel.calories, goal: 600, color:.red )
                                
                            ProgressCircleView(progress:$viewModel.active, goal: 60, color:.green )
                                .padding(.all,22)
                            ProgressCircleView(progress:$viewModel.stand, goal:12 , color:.blue )
                                .padding(.all,44)
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
                        ForEach(viewModel.mockActivities,id:\.id) { activity in
                            ActivityCard(activity:activity)
                        }
                    }
                    .padding(.horizontal)
                    
                    HStack{
                        Text("Recent Workouts")
                            .font(.title2)
                        
                        Spacer()
                        
                        NavigationLink{
                         EmptyView()
                        }
                        label:{
                            Text("Show More")
                                .padding(.all, 10)
                                .foregroundStyle(Color.white)
                                .background(.blue)
                                .clipShape(.capsule)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    LazyVStack {
                        ForEach(viewModel.mockWorkouts,id:\.id) {workouts in
                            WorkoutCrad(workout:workouts)
                        }
                    }
                    
                }
            }
        }
       
    }
}

#Preview {
    HomeView()
}
