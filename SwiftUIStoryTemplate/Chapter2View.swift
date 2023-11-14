import SwiftUI

struct Chapter2View: View {
    var body: some View {
        VStack {
            Text("Chapter 2")
                .font(.title)
                .padding()
            
            Image(systemName: "2.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding()
            
            Text("One day, Sir Arthur received a mysterious message that led him on a quest to find a hidden treasure.")
                .padding()
            
            NavigationLink(destination: Chapter3View()) {
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
    Chapter2View()
}
