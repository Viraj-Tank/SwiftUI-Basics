
import SwiftUI

struct AvatarSnippet: View {
    var body: some View {
        VStack{
            
            Image("parrot")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(
                    Circle()
                        .stroke(
                            Color.blue,
                            lineWidth: 10
                        )
                )
            
            
            if let url = URL(string: "https://google.co.in") {
                Link(destination: url, label: {
                    let imageDim: CGFloat = 300
                    Image("parrot")
                        .resizable()
                        .frame(
                            width: imageDim,
                            height: imageDim
                        )
                        .scaledToFill()
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .overlay(
                            Circle()
                                .stroke(
                                    Color.blue,
                                    lineWidth: 10
                                )
                        )
                })
            }
             
        }
    }
}

struct AvatarSnippet_Previews: PreviewProvider {
    static var previews: some View {
        AvatarSnippet()
    }
}
