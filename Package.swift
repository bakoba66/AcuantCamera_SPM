// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AcuantCamera",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AcuantCamera",
            targets: ["AcuantCamera"]),
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AcuantCamera",
            dependencies: ["AcuantCommon",
                           "AcuantImagePreparation",
                           "libtesseract"]),
        .binaryTarget(name: "AcuantCommon",
                      path: "./Sources/AcuantCamera/AcuantCommon.xcframework"),
        .binaryTarget(name: "AcuantImagePreparation",
                      path: "./Sources/AcuantCamera/AcuantImagePreparation.xcframework"),
        .binaryTarget(name: "libtesseract",
                      path: "./Sources/AcuantCamera/libtesseract.xcframework")
    ]
)
