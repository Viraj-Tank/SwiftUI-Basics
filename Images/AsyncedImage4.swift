
import SwiftUI

struct AsyncedImage4: View {
    
    let columns : [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(MoreImages.allCases, id:\.self) { image in
                    Image(image.rawValue)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct AsyncedImage4_Previews: PreviewProvider {
    static var previews: some View {
        AsyncedImage4()
    }
}
