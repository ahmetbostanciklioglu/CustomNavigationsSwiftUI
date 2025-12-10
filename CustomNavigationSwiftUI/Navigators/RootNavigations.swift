import SwiftUI

struct RootNavigations: View {
    /// Keeping isOnboardingDone state in AppStorage as permanently
    @AppStorage("isOnboardingDone") var isOnboardingDone: Bool = false
    @State fileprivate var currentAppState: AppState = .splash
    
    var body: some View {
        Navigations
    }
    
    /// Defining current app state with Navigations View
    @ViewBuilder
    var Navigations: some View {
        switch currentAppState {
        case .splash:
            SplashView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        if isOnboardingDone {
                            withAnimation { currentAppState = .home }
                        } else {
                            withAnimation { currentAppState = .onboarding }
                        }
                    }
                }
        case .onboarding:
            OnboardingView(onFinish: {
                isOnboardingDone = true
                withAnimation { currentAppState = .home }
            })
        case .home:
            HomeView()
        }
    }
    
    /// App splash onboarding and home states are here.
    enum AppState {
        case splash, onboarding, home
    }
}

#Preview {
    RootNavigations()
}
