
import SwiftUI

struct ButtonSnippet: View {
    var body: some View {
        VStack {
            Text("Buttons")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            //Capsule Button
            HStack {
                Button(action: {
                    print("Button pressed!")
                }, label: {
                    Text("Button 1")
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            Capsule().fill(Color.purple)
                        )
                })
                 
                //Capsule Button
                Button(action: {
                    print("Button pressed!")
                }, label: {
                    Text("Button 2")
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            Capsule().fill(Color.black)
                        )
                })
            }.padding()
            
            HStack {
                // button with shadow
                Button(action: {
                    print("Button pressed!")
                }, label: {
                    Text("Button 1")
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.blue)
                                .shadow(color: .red.opacity(0.3), radius: 10, x: 5, y: 5)
                        )
                })
                
                Button(action: {
                    print("Button pressed!")
                }, label: {
                    Text("Button 2")
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .fill(Color.blue)
                                .shadow(color: .black, radius: 10, x: 10, y: 10)
                        )
                })
            }
            
            HStack {
                Button(action: {
                    print("Button pressed!")
                }, label: {
                    Text("Button 2")
                        .foregroundColor(.white)
                        .padding()
                        .frame(
                            maxWidth: .infinity
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .fill(Color.blue)
                                .shadow(color: .green, radius: 8, x: 8, y: 8)
                        )
                })
            }.padding()

        }
    }
}

struct ButtonSnippet_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSnippet()
    }
}
