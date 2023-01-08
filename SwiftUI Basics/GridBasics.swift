
import SwiftUI

struct GridBasics: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
                        
            Grid {
                GridRow {
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                }
                GridRow {
                    Rectangle()
                        .fill(.red)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.green)
                        .cornerRadius(20)
                        .gridCellColumns(2)
                }
                GridRow {
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.white)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                        .gridCellColumns(2)
                }
            }.padding()
            
            
            
        }
    }
}

struct GridBasics_Previews: PreviewProvider {
    static var previews: some View {
        GridBasics()
    }
}
