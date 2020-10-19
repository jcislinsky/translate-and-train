//
//  ContentView.swift
//  translateAndTrain
//
//  Created by Jan Cislinsky (admin) on 19. 10. 2020.
//

import SwiftUI
import ComposableArchitecture

public struct AppState: Equatable {
    public init(screen: Screen, selectedLanguage: Language, vocabularies: [Language : Vocabulary]) {
        self.screen = screen
        self.selectedLanguage = selectedLanguage
        self.vocabularies = vocabularies
    }

    var screen: Screen
    var selectedLanguage: Language
    var vocabularies: [Language: Vocabulary]
}

public enum AppAction: Equatable {
    case test
}

public struct AppEnvironment {
    var mainQueue: AnySchedulerOf<DispatchQueue>

    public init(mainQueue: AnySchedulerOf<DispatchQueue>) {
        self.mainQueue = mainQueue
    }
}

public let appReducer = Reducer<AppState, AppAction, AppEnvironment> { state, action, environment in
    switch action {
    case .test: return .none
    }

}

struct AppView: View {
    let store: Store<AppState, AppAction>

    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppView(
            store: Store(
                initialState: AppState(
                    screen: .translate,
                    selectedLanguage: .en2cz,
                    vocabularies: [
                        .en2cz: Vocabulary(language: .en2cz, dict: [:])
                    ]
                ),
                reducer: appReducer,
                environment: AppEnvironment(
                    mainQueue: DispatchQueue.main.eraseToAnyScheduler()
                )
            )
        )
    }
}
