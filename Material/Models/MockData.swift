//
//  MockData.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/22.
//
import Foundation
import UIKit
import Combine
import SwiftUI

let sectionMaterialsData: [ExpandMaterial] = load("ExpandMaterial.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

final class MockData: ObservableObject {
    @Published var sectionMaterials = sectionMaterialsData
}
