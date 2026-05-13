//
//  WeightView.swift
//  BodyShapeApp
//
//  Created by Marios Kanellopoulos on 13/5/26.
//

import SwiftUI

struct WeightView: View {
    let weight: CGFloat
    let weightUnits: String
    var body: some View {
        HStack(spacing: 70) {
            VStack {
                HStack {
                    Text("\(weight, specifier: "%.2f")")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text(weightUnits)
                        .font(.caption)
                        .fontWeight(.semibold)
                }
                
                Text("Current weight")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("2.5")
                        .font(.title)
                    Text(weightUnits)
                        .font(.caption)
                        .fontWeight(.semibold)
                }
                FillBarView(
                    barWidth: 7,
                    colorBG: .black,
                    colorFill: lightGreen,
                    percentage: 0.3
                )
                Text("Left to Gain")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    WeightView(
        weight: 61.2,
        weightUnits: "lb"
    )
}
