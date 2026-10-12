import SwiftUI

public struct SplashScreenView: View {
    @EnvironmentObject var navState: AppNavigationState
    
    public init() {}
    
    public var body: some View {
        ZStack {
            EnergyLensTheme.splashBackground
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                // Centered Brand Card
                VStack(spacing: 24) {
                    // App Logo Icon Container
                    ZStack {
                        RoundedRectangle(cornerRadius: 22, style: .continuous)
                            .fill(Color.white)
                            .frame(width: 88, height: 88)
                            .shadow(color: Color.black.opacity(0.08), radius: 8, x: 0, y: 4)
                        
                        Image(systemName: "bolt")
                            .font(.system(size: 42, weight: .regular))
                            .foregroundColor(EnergyLensTheme.textPrimary)
                    }
                    .padding(.top, 16)
                    
                    VStack(spacing: 8) {
                        Text("EnergyLens")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        
                        Text("Smart energy management.")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white.opacity(0.92))
                    }
                    .padding(.bottom, 20)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 44)
                .padding(.horizontal, 28)
                .background(EnergyLensTheme.cardGradient)
                .cornerRadius(28)
                .shadow(color: Color.black.opacity(0.18), radius: 18, x: 0, y: 10)
                .padding(.horizontal, 32)
                
                Spacer()
                
                // Bottom Tagline
                Text("Analyze. Predict. Save.")
                    .font(.system(size: 15, weight: .medium))
                    .foregroundColor(Color(red: 0.28, green: 0.45, blue: 0.35))
                    .padding(.bottom, 36)
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.25)) {
                navState.navigate(to: .createAccount)
            }
        }
    }
}
