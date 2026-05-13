//
//  ResultsTTopRow.swift
//  BodyShapeApp
//
//  Created by Marios Kanellopoulos on 13/5/26.
//

import SwiftUI

struct ResultsTopRow: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Result")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("May 2026")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: "arrow.uturn.backward")
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .clipShape(Circle())
                
        }
    }
}

#Preview {
    ResultsTopRow()
}
