
import SwiftUI

struct ViewAnimations: View {
    var body: some View {
        NiceView3()
    }
}

struct NiceView : View {
    @State private var textOpacity = 0.0
    var body: some View {
        ZStack {
            Color
                .blue
                .opacity(0.7)
                .ignoresSafeArea()
            
            VStack(alignment: .leading,spacing: 0) {
                Text("Hello View")
                    .font(.title)
                    .fontWeight(.semibold)
                    .opacity(textOpacity)
                
                Text("Welcome to a new view")
                    .font(.headline)
                    .fontWeight(.thin)
                    .opacity(textOpacity)
                
                Spacer()
            }.frame(
                maxWidth: .infinity,
                alignment: .leading
            ).padding()
                .onAppear {
                    withAnimation {
                        textOpacity = 1.0
                    }
                }
        }
    }
}

struct NiceView3 : View {
    
    @State private var textOpacity = 0.0
    @State private var textStartOffsetX: CGFloat = 100
    @State private var textStartOffsetY: CGFloat = 500
    
    var body: some View {
        ZStack {
            Color
                .blue
                .opacity(0.7)
                .ignoresSafeArea()
            
            VStack(alignment: .leading,spacing: 0) {
                Text("Hello View")
                    .font(.title)
                    .fontWeight(.semibold)
                    .opacity(textOpacity)
                    .offset(
                        x:textStartOffsetX,
                        y:textStartOffsetY
                    )
                
                Text("Welcome to a new view")
                    .font(.headline)
                    .fontWeight(.thin)
                    .opacity(textOpacity)
                    .offset(
                        x:textStartOffsetX,
                        y:textStartOffsetY
                    )
                
                Spacer()
            }.frame(
                maxWidth: .infinity,
                alignment: .leading
            ).padding()
                .onAppear {
                    withAnimation {
                        textOpacity = 1.0
                        textStartOffsetY = 0
                        textStartOffsetX = 0
                    }
                }
        }
    }
}

struct ViewAnimations_Previews: PreviewProvider {
    static var previews: some View {
        ViewAnimations()
    }
}
