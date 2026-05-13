//
//  ResultView.swift
//  BodyShapeApp
//
//  Created by Marios Kanellopoulos on 13/5/26.
//

import SwiftUI

struct ResultView: View {
    let selectedWeightUnits = "lb"
    var body: some View {
        VStack(spacing: 30) {
            VStack(spacing: 0) {
                ResultsTopRow()
                    .padding()
                CalendarBarView(
                    dailyData: [
                        .init(
                            day: "Mon",
                            percentage: 0.6,
                            amount: 1
                        ),
                        .init(
                            day: "Tue",
                            percentage: 0.3,
                            amount: 5
                        ),
                        .init(
                            day: "Web",
                            percentage: 0.5,
                            amount: 8
                        ),
                        .init(
                            day: "Thu",
                            percentage: 1.0,
                            amount: 12
                        ),
                        .init(
                            day: "Fri",
                            percentage: 0.3,
                            amount: 15
                        )
                    ],
                    height: 100,
                    offsetY: -5,
                    selectedWeight: 12
                )
            }
            
            MainActivitiesView()
            
            HStack {
                Text("Your plan for December, 2022")
                
                Spacer()
                
                Text("1.8")
                    .font(.title2)
                    .fontWeight(.bold)
                Text(selectedWeightUnits)
            }.padding(.horizontal)
            
            HeartRateRow()
            
            Button(
                action: {
                    print("button pressed")
                },
                label: {
                    Text("Continue")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            Capsule()
                                .fill(Color.black)
                        )
                        .padding()
                })
        }
    }
}

#Preview {
    ResultView()
}
