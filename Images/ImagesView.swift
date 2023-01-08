
import SwiftUI

struct ImagesView: View {
    
    @State private var scaleToFit: Bool = false
    
    var body: some View {
        
            if scaleToFit {
                withAnimation {
                    Image(imgLightening1)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .frame(
                            width: UIScreen.main.bounds.width * 0.75,
                            height: UIScreen.main.bounds.height * 0.20
                        )
                        .onTapGesture {
                            scaleToFit.toggle();
                        }
                }
            } else {
                withAnimation {
                    Image(imgLightening1)
                        .resizable()
                        .cornerRadius(20)
                        .frame(
                            width: UIScreen.main.bounds.width * 0.9,
                            height: UIScreen.main.bounds.height * 0.25
                        )
                        .onTapGesture {
                            scaleToFit.toggle();
                        }
                }
            }
        
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}
