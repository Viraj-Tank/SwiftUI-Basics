
import SwiftUI

struct ContentView: View {
    
    let colorList1 : [Color] = [.purple,.yellow,.green]
    let colorList2 : [Color] = [.black, .white , .blue]
    @State private var screenTapped: Bool = false
    @State private var fontToggle: Bool = false
    @State private var offSetY: CGFloat = -300.0
    @State private var offSetX: CGFloat = 50.0
//    @State private var fontStyle:Font = .title
    let rotationAngle: CGFloat = 360.0
    
    var body: some View {
        ZStack {
            LinearGradient(colors: screenTapped ? colorList1 : colorList2, startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack {
                Spacer()
                Text("The Basics of SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .rotation3DEffect(
                        .degrees(screenTapped ? 0 : rotationAngle),
                        axis:(x:1,y:1,z:1)
                    )
                    .padding()
                
                Text("To know what you know and what you do now know that is true knowledge!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.purple)
                    .multilineTextAlignment(.center)
                    .rotation3DEffect(
                        .degrees(screenTapped ? 0 : rotationAngle),
                        axis:(x:1,y:1,z:1)
                    )
                
                Spacer()
                
                Text("Animation Text")
                    .font(fontToggle ? .headline : .title)
                    .foregroundColor(.red)
                
                Button(action: {
                    withAnimation{
                        fontToggle.toggle()
                    }
                }, label: {Text("Click me!").font(.largeTitle).bold()})
                
                Spacer()
            }.padding()
        }
        .ignoresSafeArea()
        .opacity(0.8)
        .onTapGesture {
            //change screen color
            withAnimation {
                
                // it will animate the textview in 3d effect
                screenTapped.toggle()
                
                // to shift the text towards particular position
                if screenTapped {
                    offSetY = -300
                    offSetX = 50
                } else {
                    offSetY = 0
                    offSetX = 0
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
