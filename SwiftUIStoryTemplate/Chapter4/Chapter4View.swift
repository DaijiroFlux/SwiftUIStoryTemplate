import SwiftUI

struct Chapter4View: View {
    var body: some View {
//        ZStack {
//            Color.blue
//                .ignoresSafeArea()
            
            VStack {
                
                Text("Chapter 4")
                    .font(.custom("Georgia", size: 45, relativeTo: .headline))
                    .padding()
                    .shadow(radius: 5)
                
                
                
                Image(systemName: "Image4")
                    .resizable()
                    .scaledToFit()
                    .frame(width:100 , height: 100)
                    
                Text("Jonathan created a nonprofit after getting shot, a life altering experience for him. He named the nonprofit BSAM inspired by the young man who shot him that miraculous night. It stands for Boys Sports, Art, and Music. BSAM is for young males and their social, emotional, and educational development within the community of LA.")
                
                Text("Every week, they focus on different subjects and activities to uplift themselves and each other. They go on fieldtrips for fun. Some of the fieldtrips include Lions and Pistons games. Sam is now 18 and is consistently present at the BSAM office. Now as a thriving mentor who helps facilitate projects and activities for several young boys at the organization, he has become a pivitol part of BSAM itself and the larger part of youth culture in the ganglands of LA.")
                    .padding()
                
            }
        }
    }
    
#Preview {
    Chapter4View()
}
        

