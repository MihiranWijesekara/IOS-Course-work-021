import SwiftUI

public struct ContentView: View {
    @StateObject private var navState = AppNavigationState()
    @State private var showScreenPicker = false
    
    public init() {}
    
    public var body: some View {
        ZStack(alignment: .bottom) {
            // Main Active Screen
            Group {
                switch navState.currentScreen {
                case .splash:
                    SplashScreenView()
                case .createAccount:
                    CreateAccountView()
                case .signIn:
                    SignInView()
                case .secureData:
                    SecureDataView()
                case .createPasscode:
                    CreatePasscodeView()
                case .home:
                    HomeDashboardView()
                case .analysis:
                    AnalysisView()
                case .billAnalysis:
                    BillAnalysisView()
                case .selectBillImage:
                    SelectBillImageView()
                case .scanningBill:
                    ScanningBillView()
                }
            }
            .environmentObject(navState)
            
            // Floating Quick Screen Switcher (For testing all 10 PDF pages seamlessly)
            VStack(spacing: 0) {
                if showScreenPicker {
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Text("EnergyLens PDF Screen Navigator")
                                .font(.system(size: 13, weight: .bold))
                                .foregroundColor(.white)
                            Spacer()
                            Button(action: { withAnimation { showScreenPicker = false } }) {
                                Image(systemName: "xmark.circle.fill")
                                    .font(.system(size: 18))
                                    .foregroundColor(.white.opacity(0.8))
                            }
                        }
                        .padding(.bottom, 4)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 8) {
                                ForEach(AppScreen.allCases) { screen in
                                    Button(action: {
                                        navState.navigate(to: screen)
                                        withAnimation { showScreenPicker = false }
                                    }) {
                                        Text(screen.rawValue)
                                            .font(.system(size: 12, weight: navState.currentScreen == screen ? .bold : .medium))
                                            .padding(.horizontal, 10)
                                            .padding(.vertical, 6)
                                            .background(navState.currentScreen == screen ? EnergyLensTheme.accentGreen : Color.white.opacity(0.2))
                                            .foregroundColor(.white)
                                            .cornerRadius(8)
                                    }
                                }
                            }
                        }
                    }
                    .padding(12)
                    .background(Color(red: 0.1, green: 0.15, blue: 0.2).opacity(0.95))
                    .cornerRadius(16)
                    .shadow(radius: 10)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 8)
                }
                
                // Switcher Pill Toggle
                HStack {
                    Spacer()
                    Button(action: { withAnimation { showScreenPicker.toggle() } }) {
                        HStack(spacing: 6) {
                            Image(systemName: "square.grid.2x2")
                                .font(.system(size: 12, weight: .semibold))
                            Text("Page \(navState.currentScreen.screenNumber)/10")
                                .font(.system(size: 12, weight: .semibold))
                        }
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(Color.black.opacity(0.75))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .shadow(radius: 4)
                    }
                    .padding(.trailing, 16)
                    .padding(.bottom, 12)
                }
            }
        }
    }
}
