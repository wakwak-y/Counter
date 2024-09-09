//
//  CounterFeature.swift
//  Counter
//
//  Created by Yu Wakui on 2024/09/10.
//

import ComposableArchitecture

@Reducer
struct CounterFeature {
    
    // ジョブを実行するための状態を保持する
    @ObservableState
    struct State {
        var count = 0
    }
    
    // ユーザーが実行できるアクションを定義
    enum Action {
        // ユーザーがUIで実際に行う操作に基づいて定義する
        case decrementButtonTapped
        case incrementButtonTapped
    }
    
    var body: some ReducerOf<Self> {
        // アクションに応じて状態を変更
        Reduce { state, action in
            switch action {
            case .decrementButtonTapped:
                state.count -= 1
                return .none
            case .incrementButtonTapped:
                state.count += 1
                return .none
            }
        }
    }
}

