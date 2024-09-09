//
//  CounterView.swift
//  Counter
//
//  Created by Yu Wakui on 2024/09/10.
//

import ComposableArchitecture
import SwiftUI

struct CounterView: View {
    // 状態を更新するためにアクションを処理できるオブジェクト
    let store: StoreOf<CounterFeature>
    
    var body: some View {
        WithPerceptionTracking {
            VStack {
                Text("\(store.count)")
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                
                HStack {
                    Button("-") {
                        store.send(.decrementButtonTapped)
                    }
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                    
                    Button("+") {
                        store.send(.incrementButtonTapped)
                    }
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                }
            }
        }
    }
}

#Preview {
    CounterView(
        store: Store(initialState: CounterFeature.State()) {
            CounterFeature()
        }
    )
}
