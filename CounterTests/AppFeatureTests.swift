//
//  AppFeatureTests.swift
//  CounterTests
//
//  Created by Yu Wakui on 2024/09/12.
//

import XCTest
import ComposableArchitecture

@testable import Counter

final class AppFeatureTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testIncrementInFirstTab() async {
        let store = await TestStore(initialState: AppFeature.State()) {
            AppFeature()
        }
        
        await store.send(\.tab1.incrementButtonTapped) {
            $0.tab1.count = 1
        }
    }
}
