import Foundation

@objc
/// A manifest of Objective C-compatible services that should be accessible via the `ServiceContainer`
protocol WordPressServiceContainer {
    // Objective C / Swift services go here
}

/// A manifest of Swift-only services that should be accessible via the `ServiceContainer`
protocol WordPressServiceContainerSwift {
    // Swift-only services will go here
}

@objc
class ServiceContainer: NSObject, WordPressServiceContainer, WordPressServiceContainerSwift {

    let coreDataStack: CoreDataStack

    init(withCoreDataStack stack: CoreDataStack) {
        precondition(Thread.isMainThread, "The `ServiceContainer` object can only be initialized on the main thread")

        self.coreDataStack = stack
    }
}
