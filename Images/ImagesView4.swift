
import SwiftUI

struct ImagesView4: View {
    @State private var showName = true
    var body: some View {
        //        showsIndicators is for scrollbar to the right
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 20) {
                        //id is required for some reason ( remove id to know better)
                        ForEach(ImgType.allCases, id: \.self ) { image in
                            
                            let name = image.rawValue
                            let improvedName = name.replacingOccurrences(of: "img", with: "")
                            Image(name)
                                .resizable()
                                .frame(
                                    width:UIScreen.main.bounds.width * 0.8,
                                    height:UIScreen.main.bounds.height * 0.25
                                )
                                .scaledToFill()
                                .cornerRadius(20)
                                .overlay {
                                    Text(showName ? improvedName.capitalized : "")
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .shadow(radius: 10)
                                }
                                .onTapGesture {
                                    withAnimation(.easeIn(duration: 1)) {
                                        showName.toggle();
                                    }
                                }
                                
                        }
                    }
                }
    }
}

struct ImagesView4_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView4()
    }
}
