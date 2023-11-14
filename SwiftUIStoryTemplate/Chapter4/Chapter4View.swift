import SwiftUI

struct Chapter4View: View {
    var body: some View {
        VStack {
            Text("Chapter 4")
                .font(.title)
                .padding()
            
            Image(systemName: "4.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding()
            
            Text("Finally, Sir Arthur reached the hidden treasure, bringing peace and prosperity to the kingdom.")
                .padding()
            
            Text("The end.")
                .font(.title2)
                .padding()
        }
    }
}

#Preview {
    Chapter4View()
}
