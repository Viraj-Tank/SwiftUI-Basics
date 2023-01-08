
import SwiftUI

struct ImagesView3: View {
    var body: some View {
//        showsIndicators is for scrollbar to the right
        ScrollView(showsIndicators: false) {
            VStack {
                //id is required for some reason ( remove id to know better)
                ForEach(ImgType.allCases, id: \.self ) { image in
                    Image(image.rawValue)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .padding()
                        .shadow(radius: 10)
                }
            }
        }
    }
}

struct ImagesView3_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView3()
    }
}
