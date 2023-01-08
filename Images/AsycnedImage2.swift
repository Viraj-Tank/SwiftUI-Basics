
import SwiftUI

struct AsycnedImage2: View {
    let imageUrl = "https://cdn.wallpapersafari.com/23/97/vsOixh.jpg"
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) {
            phase in
            switch(phase){
                case .empty:
                    ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(
                        width: 200,
                        height: 300
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

struct AsycnedImage2_Previews: PreviewProvider {
    static var previews: some View {
        AsycnedImage2()
    }
}
