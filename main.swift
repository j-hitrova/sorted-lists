//
//  main.swift
//  sorted-lists
//
//  Created by Julia Khitrova on 03/10/2019.
//

import Foundation
import UIKit

var str = "Hello, playground"

var text = """

"""

var dict = [String: Set<String>]()

let lines = text.split(separator: "\n")
print(lines)

for line in lines {
    if line.contains("ARTIFACTID") {
        continue
    }
    let splitted = line.split(separator: " ")
    let app = String(splitted[0])
    let version = String(splitted[1])
    
    if var s = dict[app] {
        s.insert(version)
        dict[app] = s
    } else {
        var t = Set<String>()
        t.insert(version)
        dict[app] = t
    }
}

for name in dict.keys {
    let versions = dict[name]?.joined(separator: ", ")
    print("\(name) \(versions!)")
}

