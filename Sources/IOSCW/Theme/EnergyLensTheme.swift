import SwiftUI

public enum EnergyLensTheme {
    // Primary Brand Gradients
    public static let brandGradient = LinearGradient(
        colors: [
            Color(red: 0.05, green: 0.20, blue: 0.16),  // Deep Forest Teal #0D3329
            Color(red: 0.12, green: 0.48, blue: 0.30)   // Rich Emerald Green #1F7A4D
        ],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    public static let cardGradient = LinearGradient(
        colors: [
            Color(red: 0.07, green: 0.24, blue: 0.19),  // #123D31
            Color(red: 0.14, green: 0.54, blue: 0.34)   // #248A57
        ],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    public static let buttonGradient = LinearGradient(
        colors: [
            Color(red: 0.07, green: 0.27, blue: 0.21),  // #124535
            Color(red: 0.11, green: 0.46, blue: 0.29)   // #1C754A
        ],
        startPoint: .leading,
        endPoint: .trailing
    )

    public static let scanningBlueGradient = LinearGradient(
        colors: [
            Color(red: 0.06, green: 0.38, blue: 0.52),  // #0F6185
            Color(red: 0.08, green: 0.45, blue: 0.59)   // #147396
        ],
        startPoint: .leading,
        endPoint: .trailing
    )

    // Solid Colors
    public static let splashBackground = Color(red: 0.71, green: 0.93, blue: 0.80) // #B5EDCC Mint Green
    public static let screenBackground = Color(red: 0.98, green: 0.98, blue: 0.99) // #FAFAFC Crisp light background
    public static let cardBackground = Color.white
    
    public static let accentGreen = Color(red: 0.09, green: 0.53, blue: 0.31)      // #17874F Active Green
    public static let activeGreenLight = Color(red: 0.89, green: 0.97, blue: 0.92) // #E3F7EB
    
    public static let textPrimary = Color(red: 0.07, green: 0.09, blue: 0.12)     // #12171E
    public static let textSecondary = Color(red: 0.42, green: 0.45, blue: 0.50)   // #6B7380
    public static let textMuted = Color(red: 0.60, green: 0.64, blue: 0.70)       // #99A3B3
    
    public static let fieldBorder = Color(red: 0.90, green: 0.91, blue: 0.93)     // #E6E8ED
    public static let borderSubtle = Color(red: 0.88, green: 0.90, blue: 0.92)    // #E0E5EB
    
    // Feature icon colors for Analysis screen
    public static let iconGreenBg = Color(red: 0.18, green: 0.62, blue: 0.38)     // #2E9E61
    public static let iconOrangeBg = Color(red: 0.92, green: 0.42, blue: 0.25)    // #EB6B40
    public static let iconPurpleBg = Color(red: 0.56, green: 0.38, blue: 0.79)    // #8F61C9
    public static let iconTealBg = Color(red: 0.11, green: 0.58, blue: 0.59)      // #1C9496
    public static let iconAmberBg = Color(red: 0.88, green: 0.53, blue: 0.19)     // #E08730
}
