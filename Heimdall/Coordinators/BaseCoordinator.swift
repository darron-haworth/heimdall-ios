//
//  BaseCoordinator.swift
//  Heimdall
//
//  Created by Luis Reisewitz on 20.10.17.
//  Copyright © 2017 Gnosis. All rights reserved.
//

import ReactiveKit

// BaseCoordinator class from: https://github.com/uptechteam/Coordinator-MVVM-Rx-Example
// Rewritten for ReactiveKit

/// Base abstract coordinator generic over the return type of the `start` method.
class BaseCoordinator<ResultType> {
    enum Error: String, Swift.Error {
        case startNeedsToBeOverridden = "BaseCoordinator.start() needs to be overridden."
    }

    /// Typealias which will allows to access a ResultType of the Coordinator by `CoordinatorName.CoordinationResult`.
    typealias CoordinationResult = ResultType

    /// Utility `DisposeBag` used by the subclasses.
    let disposeBag = DisposeBag()

    /// Unique identifier.
    private let identifier = UUID()

    /// Dictionary of the child coordinators. Every child coordinator should be added
    /// to that dictionary in order to keep it in memory.
    /// Key is an `identifier` of the child coordinator and value is the coordinator itself.
    /// Value type is `Any` because Swift doesn't allow to store generic types in the array.
    private var childCoordinators = [UUID: Any]()

    /// Stores coordinator to the `childCoordinators` dictionary.
    ///
    /// - Parameter coordinator: Child coordinator to store.
    private func store<T>(coordinator: BaseCoordinator<T>) {
        childCoordinators[coordinator.identifier] = coordinator
    }

    /// Release coordinator from the `childCoordinators` dictionary.
    ///
    /// - Parameter coordinator: Coordinator to release.
    private func free<T>(coordinator: BaseCoordinator<T>) {
        childCoordinators[coordinator.identifier] = nil
    }

    /// 1. Stores coordinator in a dictionary of child coordinators.
    /// 2. Calls method `start()` on that coordinator.
    /// 3. On the `next` of returning signal of method `start()` removes coordinator from the dictionary.
    ///
    /// - Parameter coordinator: Coordinator to start.
    /// - Returns: Result of `start()` method.
    func coordinate<T>(to coordinator: BaseCoordinator<T>) -> SafeSignal<T> {
        store(coordinator: coordinator)
        // swiftlint:disable:next trailing_closure
        return coordinator.start()
            .doOn(completed: {
                self.free(coordinator: coordinator)
        })
    }

    /// Starts job of the coordinator.
    ///
    /// - Returns: Result of coordinator job.
    func start() -> SafeSignal<ResultType> {
        die(Error.startNeedsToBeOverridden)
    }
}
