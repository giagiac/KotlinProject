import UIKit
import ComposeApp
import SwiftUI
import FirebaseCore
import FirebaseAuth


struct ComposeView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        // Use Firebase library to configure APIs
        FirebaseApp.configure()
        return MainViewControllerKt.MainViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

struct ContentView: View {
    var body: some View {
        
        ComposeView()
                .ignoresSafeArea(.keyboard) // Compose has own keyboard handler
    }
}



