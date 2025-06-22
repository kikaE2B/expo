// Copyright 2015-present 650 Industries. All rights reserved.

import SwiftUI

struct DevMenuRootView: View {
  @StateObject private var viewModel = DevMenuViewModel()

  var body: some View {
    ZStack {
      NavigationView {
        VStack(spacing: 0) {
          HeaderView()
            .environmentObject(viewModel)

          Divider()

          DevMenuMainView()
            .environmentObject(viewModel)
        }
        #if !os(tvOS)
        .background(Color(.systemGroupedBackground))
        #endif
      }

      if !viewModel.isOnboardingFinished {
        DevMenuOnboardingView(onFinish: viewModel.finishOnboarding)
      }
    }
  }
}

#Preview {
  DevMenuRootView()
}
