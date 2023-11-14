import SwiftUI

struct Chapter3View: View {
    var body: some View {
        VStack {
            Text("Chapter 3")
                .font(.title)
                .padding()
            
            Image(systemName: "3.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding()
            
            Text("On his journey, Sir Arthur encountered a wise old wizard who gave him a magical sword.")
                .padding()
            
            NavigationLink(destination: Chapter4View()) {
                Text("Next Chapter")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    Chapter3View()
}
