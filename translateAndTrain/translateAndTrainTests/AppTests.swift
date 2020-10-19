//
//  translateAndTrainTests.swift
//  translateAndTrainTests
//
//  Created by Jan Cislinsky (admin) on 19. 10. 2020.
//

import XCTest
import translateAndTrain
import ComposableArchitecture

class AppTests: XCTestCase {

    var scheduler: TestScheduler<DispatchQueue.SchedulerTimeType, DispatchQueue.SchedulerOptions>!
    var store: TestStore<AppState, AppState, AppAction, AppAction, AppEnvironment>!

    override func setUp() {
        super.setUp()
        scheduler = DispatchQueue.testScheduler
        store = TestStore(
          initialState: AppState(),
          reducer: appReducer,
          environment: AppEnvironment(
            mainQueue: scheduler.eraseToAnyScheduler()
          )
        )
    }

    func test() {
//        store.assert(
//
//        )
//        store.assert(
//          // Test that tapping on the increment/decrement buttons changes the count
//          .send(.incrementButtonTapped) {
//            $0.count = 1
//          },
//          .send(.decrementButtonTapped) {
//            $0.count = 0
//          },
//
//          // Test that tapping the fact button causes us to receive a response from the effect. Note
//          // that we have to advance the scheduler because we used `.receive(on:)` in the reducer.
//          .send(.numberFactButtonTapped),
//          .do { scheduler.advance() },
//          .receive(.numberFactResponse(.success("0 is a good number Brent"))) {
//            $0.numberFactAlert = "0 is a good number Brent"
//          },
//
//          // And finally dismiss the alert
//          .send(.factAlertDismissed) {
//            $0.numberFactAlert = nil
//          }
//        )
    }
}
