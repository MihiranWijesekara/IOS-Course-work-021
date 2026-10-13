# EnergyLens iOS Application

Exact recreation of the complete 33-page EnergyLens UI specification built with SwiftUI and Swift.

## 📱 Screen-to-Code Mapping (All 33 Reference Pages)

| Page | Screen Name | SwiftUI View File | Description |
|---|---|---|---|
| **1** | **Splash Screen** | [SplashScreenView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Splash/SplashScreenView.swift) | Mint background, centered dark-teal gradient brand card, light blue bolt logo, tagline |
| **2** | **Create Account** | [CreateAccountView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Auth/CreateAccountView.swift) | Registration form with Identity, Location dropdowns (Province, District, Town), and Security fields |
| **3** | **Sign In** | [SignInView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Auth/SignInView.swift) | Email & password inputs, Forgot Password link, Create Account toggle, Sign In button |
| **4** | **Secure Your Energy Data** | [SecureDataView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Auth/SecureDataView.swift) | Large gradient security card, Face ID illustration, Biometric LocalAuthentication integration |
| **5** | **Create a Passcode** | [CreatePasscodeView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Auth/CreatePasscodeView.swift) | Header card, 6-digit indicator pill, custom 3x4 numeric keypad with backspace and confirmation |
| **6** | **Home Dashboard** | [HomeDashboardView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Home/HomeDashboardView.swift) | Greeting, 180 kWh / LKR 7,850 month card, next-month forecast, weather, tip, import shortcut, tab bar |
| **7** | **Analysis** | [AnalysisView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Analysis/AnalysisView.swift) | Gradient header, Household breakdown cards (Bill, Consumption, Appliances, Next Month), Scenarios |
| **8** | **Bill Analysis** | [BillAnalysisView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Analysis/BillAnalysisView.swift) | Vision Framework feature banner card, August 2025 most recent bill card, action buttons |
| **9** | **Select Bill Image** | [SelectBillImageView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/BillImport/SelectBillImageView.swift) | Choose from Photos / Take Photo buttons, Ceylon Electricity Board document preview |
| **10** | **Scanning Bill** | [ScanningBillView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/BillImport/ScanningBillView.swift) | Reading statement card, 4-step Vision text recognition status rows (detected, progress, extraction) |
| **11** | **Review Your Bill** | [ReviewBillView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/BillImport/ReviewBillView.swift) | Extraction successful banner, extracted bill details card, highlight consumption & amount, continue button |
| **12** | **Bill Analysis Result** | [BillAnalysisResultView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/BillImport/BillAnalysisResultView.swift) | August bill highlight, +12.5% vs previous month alert, consumption trend line chart, detailed analysis button |
| **13** | **Bill History** | [BillHistoryView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/BillImport/BillHistoryView.swift) | 5-month / Year toggle, dark navy trend chart, 2025 bills chronological history list |
| **14** | **Consumption Breakdown** | [ConsumptionBreakdownView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Analysis/ConsumptionBreakdownView.swift) | Total consumption header, calibrated appliance category breakdown bars, AC detail shortcut, manage appliances |
| **15** | **Appliances** | [AppliancesView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Appliances/AppliancesView.swift) | Household profiles (AC, Fridge, Fan, TV, Washer) with wattages, hours, units, callout info, Add Appliance button |
| **16** | **Add Appliance** | [AddApplianceView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Appliances/AddApplianceView.swift) | Header card, Appliance name, category dropdown pill, wattage, hours, quantity stepper, pattern dropdown, save |
| **17** | **Appliance Detail (AC)** | [ApplianceDetailView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Appliances/ApplianceDetailView.swift) | 72 kWh AC contribution, 40% share bar, appliance profile specs, simulator tip, open simulator button |
| **18** | **Weather Details (Colombo)** | [WeatherDetailsView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Home/WeatherDetailsView.swift) | 33°C navy card, sun icon, tomorrow range, humidity/wind/rain stats, high cooling demand warning, recommendations |
| **19** | **Next Month Prediction** | [NextMonthPredictionView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Analysis/NextMonthPredictionView.swift) | 195 kWh / LKR 8,520 forecast card, actual vs forecast dashed line chart, historical/weather/appliance factors |
| **20** | **Why This Prediction?** | [WhyThisPredictionView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Analysis/WhyThisPredictionView.swift) | Estimated influences (+8% temp, +5% AC, +3% trend, +2% other), lavender factor guide callout box |
| **21** | **Savings Simulator** | [SavingsSimulatorView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Savings/SavingsSimulatorView.swift) | Selected AC, stepper & slider (0–12 h), 24 kWh / LKR 1,050 savings result, Run Simulation & Add Scenario |
| **22** | **Simulation Result** | [SimulationResultView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Savings/SimulationResultView.swift) | You can save badge, 24 kWh monthly saving, AC Before (72 kWh) vs After (48 kWh) comparison bars, retry |
| **23** | **Add Scenario (Modal)** | [AddScenarioModalView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Savings/AddScenarioModalView.swift) | Bottom sheet modal, Cancel/Done pills, Appliance and adjustment dropdowns, new usage stepper & slider |
| **24** | **Solar Analysis** | [SolarAnalysisView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Analysis/SolarAnalysisView.swift) | Example scenario alert, consumption (180 kWh), solar gen (60 kWh), 120 kWh remaining card, offset bars |
| **25** | **Profile** | [ProfileView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Profile/ProfileView.swift) | User AM avatar card, Profile, Location, Weather, Notifications, Face ID, Appliances, Units, About rows |
| **26** | **Notifications** | [NotificationsView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Home/NotificationsView.swift) | Header card, Inbox header, High Cooling Demand (yellow), Prediction Update (purple), Saving Tip (mint) cards |
| **27** | **Bill History (Empty)** | [BillHistoryEmptyView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/BillImport/BillHistoryEmptyView.swift) | Dark navy empty card, document icon, "No bill history yet" guidance, Import Electricity Bill button |
| **28** | **Appliances (Empty)** | [AppliancesEmptyView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Appliances/AppliancesEmptyView.swift) | Dark green empty card, plug icon, "Add your first appliance" guidance, calibrated callout, Add button |
| **29** | **Notifications (Empty)** | [NotificationsEmptyView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Home/NotificationsEmptyView.swift) | Sky blue container, bell icon circle, "You’re all caught up" gradient card, "No notifications right now" |
| **30** | **Prediction (Empty)** | [PredictionEmptyView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Analysis/PredictionEmptyView.swift) | Navy card, "More history is needed" guidance, Forecast unavailable banner, Import and Retry buttons |
| **31** | **Weather (Offline/Error)** | [WeatherErrorView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Home/WeatherErrorView.swift) | Weather unavailable yellow banner, last-known temperature navy card, unavailable outlook, Retry button |
| **32** | **Bill Scan (Error)** | [BillScanErrorView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/BillImport/BillScanErrorView.swift) | "Try a clearer image" navy card, "Nothing has been saved" banner, Retake and Choose Another Image buttons |
| **33** | **Home (Skeleton/Loading)**| [HomeSkeletonView.swift](file:///c:/Users/HP/Desktop/IOS_CW/Sources/IOSCW/Views/Home/HomeSkeletonView.swift) | Loading banner with spinner, dark green skeleton card, placeholder rows, Import Bill card, tab bar |

---

## 🛠 Project Structure

```
Sources/IOSCW/
├── EnergyLensApp.swift               # Application @main entry point
├── ContentView.swift                 # Root view, state router, and 33-page testing navigator
├── Theme/
│   └── EnergyLensTheme.swift         # Brand gradients, hex colors, spacing & typography
├── Models/
│   ├── NavigationModel.swift         # Screen (1-33) and Tab navigation routing state
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
│   ├── Splash/                       # Page 1 (Splash)
│   ├── Auth/                         # Pages 2, 3, 4, 5 (Create Account, Sign In, Face ID, Passcode)
│   ├── Home/                         # Pages 6, 18, 26, 29, 31, 33 (Dashboard, Weather, Notifications, Skeleton)
│   ├── Analysis/                     # Pages 7, 14, 19, 20, 24, 30 (Analysis, Breakdown, Prediction, Solar)
│   ├── BillImport/                   # Pages 8, 9, 10, 11, 12, 13, 27, 32 (Import, Scan, Review, Result, History)
│   ├── Appliances/                   # Pages 15, 16, 17, 28 (List, Add, Detail, Empty)
│   ├── Savings/                      # Pages 21, 22, 23 (Simulator, Result, Add Scenario Modal)
│   └── Profile/                      # Page 25 (Profile & Settings)
└── Assets.xcassets/                  # AppIcon catalog and SampleBill document image
```

---

## 🚀 How to Run in Xcode

1. Open the project folder in **Xcode** (`File > Open...` and select `IOS_CW`).
2. Select any iPhone simulator (e.g., **iPhone 15 Pro**, **iPhone 16**).
3. Press **Cmd + R** to build and run.
4. **Interactive 33-Screen Testing Navigator**: Tap the floating `Page X/33` pill at the bottom right of any screen to instantly jump directly to any page, or test the natural end-to-end user journey!
