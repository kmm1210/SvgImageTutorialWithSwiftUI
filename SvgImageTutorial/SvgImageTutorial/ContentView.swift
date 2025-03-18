import SwiftUI
import SDWebImageSwiftUI
import SDWebImageSVGCoder

struct ContentView: View {
    var body: some View {
        VStack {
            WebImage(url: URL(string: "https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/w3c.svg"), options: .retryFailed)
                .onFailure { error in
                    print(error)
                    
                }
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
