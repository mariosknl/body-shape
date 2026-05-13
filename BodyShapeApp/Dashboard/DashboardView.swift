import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            IconRight(
                imageName: "circle.grid.cross.fill",
                angle: 45)
                .padding()
            
            VStack(alignment: .leading, spacing: 20) {
                WelcomeMessageView(username: "Emily")
                
                WeightView(weight: 61.2, weightUnits: "lb")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
                
            Spacer()
        }
    }
}

#Preview {
    DashboardView()
}
