//
//  CurrentActiviesView.swift
//  BodyShapeApp
//
//  Created by Marios Kanellopoulos on 13/5/26.
//

import SwiftUI

struct CurrentActiviesView: View {
    var body: some View {
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
            Spacer()
        }
    }
}

#Preview {
    CurrentActiviesView()
}
