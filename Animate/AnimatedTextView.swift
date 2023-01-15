
import SwiftUI

struct AnimatedTextView: View {
    
    @State var text = "Hello World!"
    @State var offset: CGSize = CGSize(width: 0, height: 1000)
    @State var togglePosition: Bool = true
    @State var color: Color = .red
    @State var rotate: Double = 0
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Text(text)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(color)
                    .rotationEffect(Angle(degrees: rotate))
                    .offset(offset)
                
                Spacer()
                
                Button(action: {
                    withAnimation(
                        .spring(response: 0.55, dampingFraction: 0.500,blendDuration: 0.5)
                    ) {
                        offset.height = togglePosition ? 400 : 0
                        color = togglePosition ? .red : .blue
                        rotate = togglePosition ? 0 : 360
                        text = togglePosition ? "Hello World!" : "Animated."
                        togglePosition.toggle()
                    }
                }, label: {
                    Text("Animate")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                        .overlay(Capsule().stroke(lineWidth: 2))
                })
            }.onAppear {
                withAnimation(.easeIn(duration: 3)) {
                    offset = .zero
                }
        }
        }
    }
    
}

struct AnimatedTextView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedTextView()
    }
}
