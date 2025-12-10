import SwiftUI

struct OnboardingView: View {
    var onFinish: () -> Void = { }
    var body: some View {
        Button(action: onFinish) {
            Text("Finish")
        }
    }
}

#Preview {
    OnboardingView()
}
