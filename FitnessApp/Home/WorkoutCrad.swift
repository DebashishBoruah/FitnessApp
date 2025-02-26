//
//  WorkoutCrad.swift
//  FitnessApp
//
//  Created by Debashish Boruah on 26/02/25.
//

import SwiftUI

struct Workout{
    let id : Int
    let title: String
    let image : String
    let tintColor : Color
    let duration : String
    let date : String
    let calories : String
}

struct WorkoutCrad: View {
    @State var workout : Workout
    var body: some View {
        HStack{
            Image(systemName:workout.image)
                .resizable()
                .scaledToFit()
                .frame(width:48, height: 48)
                .foregroundStyle(workout.tintColor)
                .padding()
                .background(.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(spacing: 16)
            {
                HStack{
                    Text(workout.title)
                        .font(.title3)
                        .bold()
                    
                    Spacer()
                    
                    Text(workout.duration)
                }
                HStack{
                    Text(workout.date)
                    
                    Spacer()
                    
                    Text(workout.calories)
                }
            }
        }
        .padding(.horizontal)
       
    }
}

#Preview {
    WorkoutCrad(workout:Workout(id:1, title:"Running", image: "figure.run", tintColor:.green,duration: "23 mins", date:"Aug 3", calories:"341 kcal"))
}
