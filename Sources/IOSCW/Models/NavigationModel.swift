import SwiftUI

public enum AppScreen: String, CaseIterable, Identifiable {
    case splash = "1. Splash"
    case createAccount = "2. Create Account"
    case signIn = "3. Sign In"
    case secureData = "4. Secure Data"
    case createPasscode = "5. Passcode"
    case home = "6. Home"
    case analysis = "7. Analysis"
    case billAnalysis = "8. Bill Analysis"
    case selectBillImage = "9. Select Bill"
    case scanningBill = "10. Scanning Bill"
    
    public var id: String { rawValue }
    
    public var screenNumber: Int {
        switch self {
        case .splash: return 1
        case .createAccount: return 2
        case .signIn: return 3
        case .secureData: return 4
        case .createPasscode: return 5
        case .home: return 6
        case .analysis: return 7
        case .billAnalysis: return 8
        case .selectBillImage: return 9
        case .scanningBill: return 10
        }
    }
}

public enum MainTab: String, CaseIterable {
    case home = "Home"
    case analysis = "Analysis"
    case savings = "Savings"
    case profile = "Profile"
}

public final class AppNavigationState: ObservableObject {
    @Published public var currentScreen: AppScreen = .splash
    @Published public var selectedTab: MainTab = .home
    
    // Auth and User State
    @Published public var firstName: String = "Achintha"
    @Published public var lastName: String = "Mihiran"
    @Published public var email: String = "achintha@example.com"
    @Published public var phone: String = "+94 77 123 4567"
    @Published public var province: String = "Western"
    @Published public var district: String = "Colombo"
    @Published public var town: String = "Colombo"
    
    @Published public var enteredPasscode: String = ""
    @Published public var isAuthenticated: Bool = false
    
    public init() {}
    
    public func navigate(to screen: AppScreen) {
        currentScreen = screen
        if screen == .home {
            selectedTab = .home
        } else if screen == .analysis {
            selectedTab = .analysis
        }
    }
}
