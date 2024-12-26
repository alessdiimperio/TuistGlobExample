import ProjectDescription

let project = Project(
    name: "TuistAdditionalFilesExample",
    targets: [
        .target(
            name: "TuistAdditionalFilesExample",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TuistAdditionalFilesExample",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["TuistAdditionalFilesExample/Sources/**"],
            resources: [
                .glob(pattern: "TuistAdditionalFilesExample/Resources/**",
                      excluding: [
                    "TuistAdditionalFilesExample/Resources/en.lproj/**"
                ])
            ],
            dependencies: [],
            additionalFiles: [
                "TuistAdditionalFilesExample/Resources/en.lproj/**"
            ]
        ),
        .target(
            name: "TuistAdditionalFilesExampleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TuistAdditionalFilesExampleTests",
            infoPlist: .default,
            sources: ["TuistAdditionalFilesExample/Tests/**"],
            resources: [],
            dependencies: [.target(name: "TuistAdditionalFilesExample")]
        ),
    ]
)
