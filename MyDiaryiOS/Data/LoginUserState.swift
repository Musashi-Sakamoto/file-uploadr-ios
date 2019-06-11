//
//  LoginUserState.swift
//  MyDiaryiOS
//
//  Created by Musashi Sakamoto on 2019/06/11.
//  Copyright © 2019 musashi. All rights reserved.
//

import Foundation
import ReSwift

public struct LoginUserState: StateType {
    public var username = ""
    public var email = ""
}

extension LoginUserState {
    public enum Action: ReSwift.Action {
        case LoginAction(username: String, email: String)
    }
}

extension LoginUserState {
    public static func reducer(action: Action, state: LoginUserState?) -> LoginUserState {
        var state = state ?? LoginUserState()

        switch action {
        case let loginAction as LoginUserState.Action:
            switch loginAction {
            case let .LoginAction(name, email):
                state.username = name
                state.email = email
            }
        default:
            break
        }
        return state
    }
}
