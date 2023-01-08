
import SwiftUI

struct ContentView: View {
    
    let colorList1 : [Color] = [.purple,.yellow,.red,.green]
    let colorList2 : [Color] = [.black, .white , .blue]
    @State var screenTapped: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: screenTapped ? colorList1 : colorList2, startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack {
                Text("Swift UI Basics")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }.padding()
        }
        .ignoresSafeArea()
        .opacity(0.8)
        .onTapGesture {
            //change screen color
            screenTapped.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
