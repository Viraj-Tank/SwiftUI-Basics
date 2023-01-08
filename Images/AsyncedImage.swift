
import SwiftUI

struct AsyncedImage: View {
    let imageUrl = "https://cdn.wallpapersafari.com/23/97/vsOixh.jpg"
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl))
    }
}

struct AsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        AsyncedImage()
    }
}
