//
//  ActivityCard.swift
//  FitnessApp
//
//  Created by Debashish Boruah on 25/02/25.
//

import SwiftUI

struct ActivityCard: View {
    @State var activity : ActivityModel
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            VStack{
                HStack(alignment:.top)
                {
                    VStack(alignment: .leading,spacing:8){
                        Text(activity.title)
                        Text(activity.subtitle)
                            .font(.caption)
                    }
                    Spacer()
                    
                    Image(systemName:activity.image)
                        .foregroundStyle(activity.tintColor)
                }
                
                Text(activity.amount)
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ActivityCard(activity:ActivityModel(id:1, title:"Today Steps", subtitle:"Goal 10,000", image: "figure.walk", tintColor:.green, amount: "6,121"))
}
