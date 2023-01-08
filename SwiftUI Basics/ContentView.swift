
import SwiftUI

struct ContentView: View {
    
    let colorList1 : [Color] = [.purple,.yellow,.red,.green]
    let colorList2 : [Color] = [.black, .white , .blue]
    @State private var screenTapped: Bool = false
    @State private var offSetY: CGFloat = -300.0
    @State private var offSetX: CGFloat = 50.0
    
    var body: some View {
        ZStack {
            LinearGradient(colors: screenTapped ? colorList1 : colorList2, startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack {
                Text("Swift UI Basics")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .offset(x: offSetX, y: offSetY)
            }.padding()
        }
        .ignoresSafeArea()
        .opacity(0.8)
        .onTapGesture {
            //change screen color
            screenTapped.toggle()
            withAnimation(.easeIn(duration: 0.5)) {
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
