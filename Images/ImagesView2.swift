
import SwiftUI

struct ImagesView2: View {
    @State private var scaleFit = false
    var body: some View {
        Image(ImgType.imgRoad.rawValue)
            .resizable()
            .aspectRatio(contentMode:scaleFit ? .fit : .fill)
            .cornerRadius(20)
            .padding()
            .onTapGesture {
                scaleFit.toggle()
            }
    }
}

struct ImagesView2_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView2()
    }
}
