import SwiftUI
import AVFoundation

struct Chapter1View: View {
    @State private var userCan: String = ""
    @State private var activeImageIndex = 0
    @State private var isSpeaking = false // Track speech status
    let images = ["Chap1image1", "Chap1image2", "Chap1image3", "Chap1image4"]
    let imageSwitchTimeInterval = 5.0
    var speechSynthesizer = AVSpeechSynthesizer()

    var body: some View {
        ScrollView {
            Text("Chapter 1")
                .font(Font.custom("FromCartoonBlocks", size: 60))
                .padding()

            ImageView(imageName: images[activeImageIndex])
                .onReceive(Timer.publish(every: imageSwitchTimeInterval, on: .main, in: .common).autoconnect()) { _ in
                    self.activeImageIndex = (self.activeImageIndex + 1) % self.images.count
                }

            Text("Jonathan and his wife lived a very humble life on the Eastside of Detroit. They were both hardworking citizens of the city and were heavily involved in church and their faith with Christ has always been strong and true. He was the lead singer in his Church where he served the Lord with his gifts. Jonathan, like other singers from their church, dreamed of being famous with his gift and one day wanted to make the big leap of faith to pursue that dream. After months of long discussions with his wife, they decided to move to LA so Jonathan could pursue his dream. Jonathan and his wife sold everything they had of value to financially help them with the move to California. It was late spring of 1994 when they made the move. After moving into their humble apartment in LA, they immediately began working multiple jobs, consisting of late-night shifts, double shifts, and at times even working up to 18 hours a day.")
                .padding()

            HStack {
                Button(action: {
                    self.startSpeech()
                }) {
                    Text("Start")
                }
                .padding()

                Button(action: {
                    self.pauseSpeech()
                }) {
                    Text("Pause")
                }
                .padding()

                Button(action: {
                    self.stopSpeech()
                }) {
                    Text("Stop")
                }
                .padding()

                Button(action: {
                    self.startOverSpeech()
                }) {
                    Text("Start Over")
                }
                .padding()
            }

            NavigationLink(destination: Chapter2View(personName: userCan)) {
                Text("Next")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()
        }
    }

    private func startSpeech() {
        if !isSpeaking {
            let speechText = "Jonathan and his wife lived a very humble life on the Eastside of Detroit. They were both hardworking citizens of the city and were heavily involved in church and their faith with Christ has always been strong and true. He was the lead singer in his Church where he served the Lord with his gifts. Jonathan, like other singers from their church, dreamed of being famous with his gift and one day wanted to make the big leap of faith to pursue that dream. After months of long discussions with his wife, they decided to move to LA so Jonathan could pursue his dream. Jonathan and his wife sold everything they had of value to financially help them with the move to California. It was late spring of 1994 when they made the move. After moving into their humble apartment in LA, they immediately began working multiple jobs, consisting of late-night shifts, double shifts, and at times even working up to 18 hours a day."
            speakText(speechText)
        }
    }

    private func pauseSpeech() {
        if isSpeaking {
            speechSynthesizer.pauseSpeaking(at: .immediate)
        }
    }

    private func stopSpeech() {
        if isSpeaking {
            speechSynthesizer.stopSpeaking(at: .immediate)
        }
    }

    private func startOverSpeech() {
        if isSpeaking {
            speechSynthesizer.stopSpeaking(at: .word)
        }
    }

    private func speakText(_ text: String) {
        let speechUtterance = AVSpeechUtterance(string: text)
        speechUtterance.rate = AVSpeechUtteranceDefaultSpeechRate
        speechUtterance.pitchMultiplier = 1.0
        speechUtterance.volume = 1.0

        speechSynthesizer.speak(speechUtterance)
        isSpeaking = true
    }
}

struct ImageView: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 350, height: 350)
            .padding()
    }
}


#Preview {
    Chapter1View()
}
