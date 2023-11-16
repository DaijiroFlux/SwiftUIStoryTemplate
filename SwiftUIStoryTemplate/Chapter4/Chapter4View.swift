import SwiftUI

struct Chapter4View: View {
    var body: some View {
        //      var body: some View {
        
        
        VStack {
            
            ScrollView {
                Text("Chapter 4")
                    .font(.custom("Georgia", size: 45, relativeTo: .headline))
                    .padding()
                    .shadow(radius: 5)
                
            let images = ["Image7", "Image8", "Image4", "Image5", "Image6"]
                @State var activeImageIndex = 0
                
                        TabView {
                            ForEach(images, id: \.self) { item in
                                 Image(item)
                                    .resizable()
                                    .scaledToFit()
                            
                            }
                        }
                        .tabViewStyle(PageTabViewStyle())
                        .frame(height: 400)
                       
                
                        .padding(0)


                    }.frame(height: 500)
                
                
//                Image("Image4")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width:300 , height: 300)
//                
            ScrollView {
                Text("Jonathan created a nonprofit after getting shot, a life altering experience for him. He named the nonprofit BSAM inspired by the young man who shot him that miraculous night. It stands for Boys Sports, Art, and Music. BSAM is for young males and their social, emotional, and educational development within the community of LA.")
                
                Text("Every week, they focus on different subjects and activities to uplift themselves and each other. They go on fieldtrips for fun. Some of the fieldtrips include Lions and Pistons games. Sam is now 18 and is consistently present at the BSAM office. Now as a thriving mentor who helps facilitate projects and activities for several young boys at the organization, he has become a pivitol part of BSAM itself and the larger part of youth culture in the gang lands of LA.")
                    .padding()
            }
            }
        }
    }
    
#Preview {
    Chapter4View()
}
