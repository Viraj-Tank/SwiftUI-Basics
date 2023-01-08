
import SwiftUI

struct CodeSnippet: View {
    
    @State private var selectionTab = "One"
    
    var body: some View {
        TabView(selection: $selectionTab) {
            GenericView(text: "View One", color: .blue, opacity: 0.6).tag("One")
            
            GenericView(text: "View Two", color: .green, opacity: 0.6).tag("Two")
            
            GenericView(text: "View Three", color: .red, opacity: 0.6).tag("Three")
        }.tabViewStyle(.page(indexDisplayMode: .always))
            .ignoresSafeArea()
    }
}

struct GenericView: View {
    let text: String
    let color: Color
    let opacity: CGFloat
    var body: some View {
        ZStack {
            color
                .opacity(opacity)
                .ignoresSafeArea()
            Text(text)
                .font(.title)
                .fontWeight(.bold)
        }
    }
}


struct CodeSnippet_Previews: PreviewProvider {
    static var previews: some View {
        CodeSnippet()
    }
}
