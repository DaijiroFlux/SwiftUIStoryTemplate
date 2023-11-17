import AVFoundation
import SwiftUI



struct Chapter1View: View {

   
    
    @State private var userAnswer: String = ""

    @State private var userCan: String = ""
    @State private var activeImageIndex = 0
    @State private var isSpeaking = false // Track speech status
    @State private var speechText = """
    Jonathan and his wife lived a very humble life on the Eastside of Detroit. They were both hardworking citizens and both were heavily involved in church, and their faith with Christ have always been true. He's been the lead singer in their church where he serves the Lord with his gift and talent. Jonathan, like other singers from their church, dreamed of becoming famous with singing, and one day wanted to make the big leap of faith to pursue that dream. After months of long discussions with his wife, they decided to move to L.A. so that he can pursue his dream. Jonathan and his wife sold everything they had of value to financially help them with the move. It was late spring of 1994 when they lefT Detroit. After moving into their humble apartment in South Central L.A., they immediately began working multiple jobs, consisting of late-night shifts, double shifts, some days even working up to 18 hours.
    """
    
    let images = ["Chap1image1", "Chap1image2", "Chap1image3", "Chap1image4"]
    let imageSwitchTimeInterval = 5.0
    // Declare speechSynthesizer here
    let speechSynthesizer = AVSpeechSynthesizer()


    var body: some View {
        ScrollView {
            Text("Chapter 1")
                .font(Font.custom("FromCartoonBlocks", size: 60))
                .padding()

            ImageView(imageName: images[activeImageIndex])
                .onReceive(Timer.publish(every: imageSwitchTimeInterval, on: .main, in: .common).autoconnect()) { _ in
                    self.activeImageIndex = (self.activeImageIndex + 1) % self.images.count
                }

            Text(speechText)
                .padding()

            HStack {

                controlButton(action: { startSpeech() }, label: "Start")
                controlButton(action: { pauseSpeech() }, label: "Pause")
                controlButton(action: { stopSpeech() }, label: "Stop")
                controlButton(action: { startOverSpeech() }, label: "Start Over")

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
        // Pass isSpeaking as a binding
        .onAppear {
            // No need for a @Binding property here
            // You can directly use isSpeaking
        }
    }

    private func controlButton(action: @escaping () -> Void, label: String) -> some View {
        Button(action: {
            action()
        }) {
            Text(label)
        }
        .padding()
    }


    private func startSpeech() {
        if !isSpeaking {
            speakText(speechText)
            isSpeaking = true
        }
    }

    private func pauseSpeech() {
        if isSpeaking {
            speechSynthesizer.pauseSpeaking(at: .immediate)
            isSpeaking = false
        }
    }

    private func stopSpeech() {
        if isSpeaking {
            speechSynthesizer.stopSpeaking(at: .immediate)
            isSpeaking = false
        }
    }

    private func startOverSpeech() {
        if isSpeaking {
            speechSynthesizer.stopSpeaking(at: .word)
            isSpeaking = false
        }
    }

    private func speakText(_ text: String) {
        let speechUtterance = AVSpeechUtterance(string: text)
        speechUtterance.rate = AVSpeechUtteranceDefaultSpeechRate
        speechUtterance.pitchMultiplier = 1.0
        speechUtterance.volume = 1.0

        speechSynthesizer.speak(speechUtterance)
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
