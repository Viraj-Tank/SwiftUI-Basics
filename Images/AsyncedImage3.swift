
import SwiftUI

struct AsyncedImage3: View {
    var body: some View {
        ImageFromURL(
            url: "https://cdn.wallpapersafari.com/23/97/vsOixh.jpg",
            width: 300,
            height: 300,
            contentMode: .fit,
            cornerRadius: 20)
        .shadow(radius: 20)
        .background(Color.red)
    }
}

struct ImageFromURL : View {
    
    let url: String
    let width: CGFloat
    let height: CGFloat
    let contentMode: ContentMode
    let cornerRadius: CGFloat
    
    var body: some View {
        AsyncImage(url: URL(string: url)) {
            phase in
            switch(phase) {
                case .empty:
                    ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: contentMode)
                    .cornerRadius(cornerRadius)
                    .frame(
                        width: width,
                        height: height
                    )
            case .failure:
                Image(systemName: "photo")
                    .imageScale(.large)
                
            @unknown default:
                EmptyView()
                
            }
        }
    }
}

struct AsyncedImage3_Previews: PreviewProvider {
    static var previews: some View {
        AsyncedImage3()
    }
}
