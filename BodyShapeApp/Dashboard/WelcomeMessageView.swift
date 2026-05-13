import SwiftUI

struct WelcomeMessageView: View {
    let username: String
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Hi,")
                Text(username)
                    .fontWeight(.bold)
            }.font(.largeTitle)
            
            Text("Your board look so good")
                .font(.title3)
                .frame(width: screenWidth / 2, alignment: .leading)
                .multilineTextAlignment(.leading)
        }
    }
}

#Preview {
    WelcomeMessageView(username: "Emily")
}
