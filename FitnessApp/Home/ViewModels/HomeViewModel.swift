//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Debashish Boruah on 27/02/25.
//

import Foundation
class HomeViewModel : ObservableObject{
    var calories: Int = 123
    var active: Int = 52
    var stand: Int = 8
    
    var mockActivities = [
        ActivityModel(id:1, title:"Today Steps", subtitle:"Goal 10,000", image: "figure.walk", tintColor:.green, amount:"9,812"),
        
        ActivityModel(id:2, title:"Today", subtitle:"Goal 10,000", image: "figure.walk", tintColor:.red, amount: "812"),
        
        ActivityModel(id:3, title:"Today", subtitle:"Goal 10,000", image: "figure.walk", tintColor:.blue, amount: "1812"),
        
        ActivityModel(id:4, title:"Today Steps", subtitle:"Goal 10,000", image: "figure.run", tintColor:.purple, amount: "55,812")
    ]
    
    var mockWorkouts = [
        WorkoutModel(id:1, title:"Running", image: "figure.run", tintColor:.green,duration: "23 mins", date:"Aug 3", calories:"341 kcal"),
        
        WorkoutModel(id:2, title:"Training", image: "figure.run", tintColor:.red,duration: "12 mins", date:"Aug 3", calories:"123 kcal"),
        
        WorkoutModel(id:3, title:"Jumpping", image: "figure.run", tintColor:.blue,duration: "32 mins", date:"Aug 3", calories:"213 kcal"),
        
        WorkoutModel(id:4, title:"Swimming", image: "figure.run", tintColor:.purple,duration: "10 mins", date:"Aug 3", calories:"122 kcal")
    ]
    
}
