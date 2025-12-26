//
//  AppStateEvent.swift
//  InitProject
//
//  Created by QuangAnh on 26/12/25.
//

import Combine
class AppStateEvent {
    static let `default` = AppStateEvent()
    
    let state = PassthroughSubject<AppState, Never>()
    
    static func set(_ state: AppState) {
        let appState = AppStateEvent.default
        appState.state.send(state)
    }
}
