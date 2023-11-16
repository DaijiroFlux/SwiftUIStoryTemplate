import SwiftUI

struct Chapter2View: View {
    var personName = ""
    var body: some View {
        VStack {
            Text("Chapter 2")
                .font(.largeTitle)
                .padding()

            Image(systemName: "book.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()

            Text("One evening Johnathan was arriving to pick up his wife from work, which was located in a home in a neighborhood that dealt with gang violence. As he was parking in front of the home anticipating his wife coming out the house, someone began to shoot at Johnathan’s car. Johnathan immediately pulled off fast and drove around the corner. He jumped out the car to see the condition of his car, once he saw the multiple bullet wholes in his car he screamed “Why was someone shooting at me?”.Then he thought to himself “My wife is coming out the door, I better hurry and get back before something happens to her”. He speed back to the house, jumped out the car, ran up to the door and began to bang on it. His wife answered the door and he wrapped his arms around her asking if she was okay. After telling his wife what happened, he called the police, the police took the report and told him a tow truck will be arriving soon.Two hours past and know pick-up truck. Johnathan begin to get frustrated and went outside to see if the pick up truck lost and roaming in the neighborhood. He didn’t anyone so he proceeded to walk down the street to look around the corner, still no tow truck. As Johnathan begin to walk back to the house someone began shooting at him. He took off running, but then a bullet hit his leg and he fell to the ground. As he turned his head to see who was shooting at him, he noticed a boy that looked to be the same age as his nephew, about 15 or 16 years old. He screamed at the young man “Why are you shooting at me?”He managed to get up and started walking towards the young man, the young man ran away. When Johnathan arrived at the corner of the street, he was standing under a street light looking at his wound. All of sudden, he fell to the ground and his Spirit came out of his body and he found himself floating in the air feeling no pain or discomfort at all. He said to himself “I am I dead?”Immediately, a light from the sky shined on him and a force begin to pull him up. As he was ascending, he felt an enormous amount of love, joy and peace that he had never experienced on earth. The sky then opened up to a city, Johnathan noticed colors that we’ve never seen and smelled an amazing aroma. At that point, Johnathan realized he was in Heaven. He begin to shout “I made it, I made it, I made it to Heaven.”The Jesus appeared and said “I’m sorry son, it’s not your time.”  Johnathan begin to shout “No, no, no, I want to stay. “Jesus said “I’m sorry son, it’s not your time.” Johnathan proclaimed even more “Please no, I want to stay here, I don’t want to go back”. By the third time, Johnathan opened his eyes and found himself back into his body. As his eyes scanned his surroundings, he realize he was in the hospital and the doctor was sewing up his leg where he was shot.After realizing that he was back on earth, he noticed almost immediately that the earth had a stench, unlike Heaven’s beautiful aroma that he had just experienced. Johnathan was angry for a short while at God for bringing him back to earth, but he felt God gave him a new mission. A mission that would help people like the person who shot him, young teenage boys.Johnathan began to go into the toughest neighborhoods where gangs and violence were the norm, to mentor and share God’s love with young men who were lost in a world of violence and crime. Family and friends of Johnathan’s were very concerned about his safety because of the violence and deaths that were caused by gangs like the Bloods and the Creeps. A year later after being shot by a teenage young man, Johnathan and his wife attended their nephew’s basketball game. While there, Johnathan noticed a young man that fit the description of the boy who shot him. As he looked closer, he confirmed that was indeed the young man that was in the black hoody and blue jeans hiding behind the tree. ")
                .padding()

            NavigationLink(destination: Chapter3View()) {
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
    Chapter2View()
}
