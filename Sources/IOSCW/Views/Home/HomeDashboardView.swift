import SwiftUI

public struct HomeDashboardView: View {
    @EnvironmentObject var navState: AppNavigationState
    
    public init() {}
    
    public var body: some View {
        VStack(spacing: 0) {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 16) {
                    // Header Bar
                    HStack(alignment: .center) {
                        Text("ENERGYLENS")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundColor(EnergyLensTheme.textSecondary)
                            .tracking(0.8)
                        
                        Spacer()
                        
                        // Profile Initials AM
                        ZStack {
                            Circle()
                                .fill(Color(red: 0.22, green: 0.26, blue: 0.32))
                                .frame(width: 32, height: 32)
                            
                            Text("AM")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(.white)
                        }
                        
                        // Bell Notification Icon
                        Image(systemName: "bell")
                            .font(.system(size: 19))
                            .foregroundColor(EnergyLensTheme.textPrimary)
                            .padding(.leading, 12)
                    }
                    .padding(.top, 12)
                    
                    // Greeting
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Good morning, \(navState.firstName)")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(EnergyLensTheme.textPrimary)
                        
                        Text("Home")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(EnergyLensTheme.textSecondary)
                    }
                    .padding(.bottom, 2)
                    
                    // Main Highlight Card: THIS MONTH · AUG 2025
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Text("THIS MONTH · AUG 2025")
                                .font(.system(size: 11, weight: .semibold))
                                .foregroundColor(Color(red: 0.72, green: 0.92, blue: 0.82))
                                .tracking(0.6)
                            
                            Spacer()
                            
                            Text("Imported bill")
                                .font(.system(size: 12, weight: .medium))
                                .foregroundColor(Color(red: 0.65, green: 0.88, blue: 0.76))
                        }
                        
                        HStack(alignment: .firstTextBaseline, spacing: 4) {
                            Text("180")
                                .font(.system(size: 46, weight: .bold))
                                .foregroundColor(.white)
                            
                            Text("kWh")
                                .font(.system(size: 18, weight: .regular))
                                .foregroundColor(.white)
                        }
                        
                        Text("LKR 7,850")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(.white)
                        
                        Text("↑ 12.5% vs July · 160 kWh")
                            .font(.system(size: 13, weight: .regular))
                            .foregroundColor(Color(red: 0.72, green: 0.92, blue: 0.82))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(20)
                    .background(EnergyLensTheme.cardGradient)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.12), radius: 10, x: 0, y: 5)
                    
                    // Card 2: Next month · 190 kWh
                    Button(action: {
                        navState.navigate(to: .analysis)
                    }) {
                        HStack(spacing: 14) {
                            Image(systemName: "chart.bar")
                                .font(.system(size: 20))
                                .foregroundColor(EnergyLensTheme.textSecondary)
                                .frame(width: 24)
                            
                            VStack(alignment: .leading, spacing: 3) {
                                Text("Next month · 190 kWh")
                                    .font(.system(size: 15, weight: .bold))
                                    .foregroundColor(EnergyLensTheme.textPrimary)
                                
                                Text("Earlier estimate · refreshed to 195 kWh")
                                    .font(.system(size: 12, weight: .regular))
                                    .foregroundColor(EnergyLensTheme.textSecondary)
                            }
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 14, weight: .medium))
                                .foregroundColor(EnergyLensTheme.textMuted)
                        }
                        .padding(.vertical, 16)
                        .padding(.horizontal, 16)
                        .background(Color.white)
                        .cornerRadius(16)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(EnergyLensTheme.borderSubtle, lineWidth: 1)
                        )
                    }
                    
                    // Card 3: Tomorrow · 33°C
                    HStack(spacing: 14) {
                        Image(systemName: "sun.max")
                            .font(.system(size: 20))
                            .foregroundColor(EnergyLensTheme.textSecondary)
                            .frame(width: 24)
                        
                        VStack(alignment: .leading, spacing: 3) {
                            Text("Tomorrow · 33°C")
                                .font(.system(size: 15, weight: .bold))
                                .foregroundColor(EnergyLensTheme.textPrimary)
                            
                            Text("Colombo · High cooling demand")
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(EnergyLensTheme.textSecondary)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(EnergyLensTheme.textMuted)
                    }
                    .padding(.vertical, 16)
                    .padding(.horizontal, 16)
                    .background(Color.white)
                    .cornerRadius(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(EnergyLensTheme.borderSubtle, lineWidth: 1)
                    )
                    
                    // Card 4: Cool thoughtfully
                    HStack(alignment: .top, spacing: 14) {
                        Image(systemName: "lightbulb")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 0.12, green: 0.35, blue: 0.30))
                            .frame(width: 24)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Cool thoughtfully")
                                .font(.system(size: 15, weight: .bold))
                                .foregroundColor(Color(red: 0.10, green: 0.28, blue: 0.24))
                            
                            Text("Set your AC to 24–26°C. Try a shorter schedule in Savings.")
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(Color(red: 0.20, green: 0.40, blue: 0.35))
                                .lineSpacing(2)
                        }
                        
                        Spacer()
                    }
                    .padding(.vertical, 16)
                    .padding(.horizontal, 16)
                    .background(Color(red: 0.90, green: 0.97, blue: 0.95))
                    .cornerRadius(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(red: 0.78, green: 0.92, blue: 0.88), lineWidth: 1)
                    )
                    
                    // Card 5: Import Electricity Bill
                    Button(action: {
                        navState.navigate(to: .billAnalysis)
                    }) {
                        HStack(spacing: 14) {
                            Image(systemName: "viewfinder")
                                .font(.system(size: 20))
                                .foregroundColor(EnergyLensTheme.textSecondary)
                                .frame(width: 24)
                            
                            VStack(alignment: .leading, spacing: 3) {
                                Text("Import Electricity Bill")
                                    .font(.system(size: 15, weight: .bold))
                                    .foregroundColor(EnergyLensTheme.textPrimary)
                                
                                Text("Add a new bill to your history")
                                    .font(.system(size: 12, weight: .regular))
                                    .foregroundColor(EnergyLensTheme.textSecondary)
                            }
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 14, weight: .medium))
                                .foregroundColor(EnergyLensTheme.textMuted)
                        }
                        .padding(.vertical, 16)
                        .padding(.horizontal, 16)
                        .background(Color.white)
                        .cornerRadius(16)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(EnergyLensTheme.borderSubtle, lineWidth: 1)
                        )
                    }
                    
                    // View Analysis Action Button
                    GradientButton(title: "View Analysis") {
                        navState.navigate(to: .analysis)
                    }
                    .padding(.top, 4)
                    .padding(.bottom, 20)
                }
                .padding(.horizontal, 20)
            }
            
            // Bottom Tab Navigation Bar
            CustomTabBar(selectedTab: $navState.selectedTab) { tab in
                if tab == .analysis {
                    navState.navigate(to: .analysis)
                }
            }
        }
        .background(EnergyLensTheme.screenBackground.ignoresSafeArea())
    }
}
