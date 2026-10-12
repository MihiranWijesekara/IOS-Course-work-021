# EnergyLens iOS Application

Exact recreation of the 10-page EnergyLens UI specification built with SwiftUI and Swift.

## 📱 Screen-to-Code Mapping (All 10 Reference Pages)

| Page | Screen Name | SwiftUI View File | Description |
|---|---|---|---|
| **1** | **Splash Screen** | [SplashScreenView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Splash/SplashScreenView.swift) | Mint background, centered dark-teal gradient brand card, bolt logo, tagline |
| **2** | **Create Account** | [CreateAccountView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Auth/CreateAccountView.swift) | Registration form with Identity, Location dropdowns (Province, District, Town), and Security fields |
| **3** | **Sign In** | [SignInView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Auth/SignInView.swift) | Email & password inputs, Forgot Password link, Create Account toggle, Sign In button |
| **4** | **Secure Your Energy Data** | [SecureDataView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Auth/SecureDataView.swift) | Large gradient security card, Face ID illustration, Biometric LocalAuthentication integration |
| **5** | **Create a Passcode** | [CreatePasscodeView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Auth/CreatePasscodeView.swift) | Header card, 6-digit indicator pill, custom 3x4 numeric keypad with backspace and confirmation |
| **6** | **Home Dashboard** | [HomeDashboardView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Home/HomeDashboardView.swift) | Greeting, 180 kWh / LKR 7,850 month card, next-month forecast, weather, tip, import shortcut, tab bar |
| **7** | **Analysis** | [AnalysisView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Analysis/AnalysisView.swift) | Gradient header, Household breakdown cards (Bill, Consumption, Appliances, Next Month), Scenarios |
| **8** | **Bill Analysis** | [BillAnalysisView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Analysis/BillAnalysisView.swift) | Vision Framework feature banner card, August 2025 most recent bill card, action buttons |
| **9** | **Select Bill Image** | [SelectBillImageView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/BillImport/SelectBillImageView.swift) | Choose from Photos / Take Photo buttons, sample Ceylon Electricity Board document preview |
| **10** | **Scanning Bill** | [ScanningBillView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/BillImport/ScanningBillView.swift) | Reading statement card, 4-step Vision text recognition status rows (detected, progress, extraction) |

---

## 🛠 Project Structure

```
Sources/IOSCW/
├── EnergyLensApp.swift               # Application @main entry point
├── ContentView.swift                 # Root view, state router, and testing navigator
├── Theme/
│   └── EnergyLensTheme.swift         # Brand gradients, hex colors, spacing & typography
├── Models/
│   ├── NavigationModel.swift         # Screen and Tab navigation routing state
│   └── BillModels.swift              # Electricity bill schema and OCR stages
├── Services/
│   ├── AuthenticationService.swift   # LocalAuthentication (Face ID / Touch ID) service
│   └── BillScanningService.swift     # Multi-stage Vision OCR simulation service
├── Components/
│   ├── GradientButton.swift          # Dark-teal to emerald primary button
│   ├── OutlineButton.swift           # White bordered secondary button
│   ├── CustomBackButton.swift        # Standard green back navigation button
│   ├── CustomTabBar.swift            # 4-item bottom tab navigation bar
│   ├── NumberPadView.swift           # 3x4 custom numeric keypad
│   └── SampleBillDocumentView.swift  # CEB electricity bill document preview
├── Views/
│   ├── Splash/                       # Screen 1
│   ├── Auth/                         # Screens 2, 3, 4, 5
│   ├── Home/                         # Screen 6
│   ├── Analysis/                     # Screens 7, 8
│   └── BillImport/                   # Screens 9, 10
└── Assets.xcassets/                  # AppIcon catalog and SampleBill document image
```

---

## 🚀 How to Run in Xcode

1. Open the project folder in **Xcode** (`File > Open...` and select `IOS_CW`).
2. Select any iPhone simulator (e.g., **iPhone 15 Pro**, **iPhone 16**).
3. Press **Cmd + R** to build and run.
4. **Interactive Testing Navigator**: Tap the floating `Page X/10` pill at the bottom right of any screen to instantly jump directly to any page, or test the natural end-to-end user journey!
