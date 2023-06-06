// swift-tools-version: 5.8
import PackageDescription

 let package = Package(
     name: "Peertalk",
     products: [
         .library(name: "Peertalk", targets: ["Peertalk"]),
     ],
     targets: [
         .target(
             name: "Peertalk",
             path: "peertalk",
             exclude: [
                 "Info.plist",
                 "PTPrivate.h"
             ],
             publicHeadersPath: "public"
         ),
         .testTarget(
             name: "PeertalkTests",
             dependencies: ["Peertalk"],
             path: "peertalk-tests"
         )
     ]
 )
