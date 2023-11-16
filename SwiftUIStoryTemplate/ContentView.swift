import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            Chapter1View()
                .tabItem {
                    Label("Chapter 1", systemImage: "1.circle")
                }
            Chapter2View()
                .tabItem {
                    Label("Chapter 2", systemImage: "2.circle")
                }
            Chapter3View()
                .tabItem {
                    Label("Chapter 3", systemImage: "3.circle")
                }
            Chapter4View()
                .tabItem {
                    Label("Chapter 4", systemImage: "4.circle")
                }
        }
    }
}

