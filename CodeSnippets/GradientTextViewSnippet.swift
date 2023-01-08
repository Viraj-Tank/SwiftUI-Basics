
import SwiftUI

struct GradientTextViewSnippet: View {
    var body: some View {
        VStack {
            LinearGradient(
                colors: [.blue , .purple],
                startPoint: .leading,
                endPoint: .trailing)
            .mask(
                Text("Masked Text")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            )
            LinearGradient(
                colors: [.red , .blue],
                startPoint: .leading,
                endPoint: .trailing)
            .mask(
                Text("Gradient Text Display")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
            )

        }
    }
}

struct GradientTextViewSnippet_Previews: PreviewProvider {
    static var previews: some View {
        GradientTextViewSnippet()
    }
}
