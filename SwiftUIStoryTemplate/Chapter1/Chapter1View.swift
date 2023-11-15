import SwiftUI

struct Chapter1View: View {
    @State private var userAnswer: String = ""

    let images = ["image1", "image2", "image3"] 
    @State var activeImageIndex = 0
    
    let imageSwitchTimer = Timer.publish(every: 5, on: .main, in: .common)
                                .autoconnect()
    var body: some View {
        ScrollView {
            Text("Chapter 1")
                .font(.largeTitle)
                .padding()

            Image(images[activeImageIndex])
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                                .padding()
                                
                .onReceive(imageSwitchTimer) { _ in
                    self.activeImageIndex = (self.activeImageIndex + 1) % self.images.count
                        
                }

            
            Text("Jonthan and his wife lived a very humble life on the Eastside of Detroit.  They were both hardworking citizens of the city and were both heavily involved in church and their faith with Christ has always been strong and true. He was the lead singer in his Church where he served the Lord with his gifts. Jonathan; like other singers from their church, dreamed of being famous with his gift, and one day wanted to make the big leap of faith to persue that dream. After months of long discussions with his wife, they decided that they were moving to LA so Jonathan can persue his dream. Jonathtan and his wife sold everything they had of value to financially help them with the move to California.It was late spring of 1994 when they made the move. After moving into their humble apartment in LA, they immediately began working multiple jobs, consisting of late night shifts, double shifts, and at times even working up to 18 hours a day.")
                .padding()
                

//            TextField("Enter your answer", text: $userAnswer)
//                .padding()
//                .textFieldStyle(RoundedBorderTextFieldStyle())

            NavigationLink(destination: Chapter2View(personName: userAnswer)) {
                Text("Next")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()
        }
    }
}

#Preview {
    Chapter1View()
}
