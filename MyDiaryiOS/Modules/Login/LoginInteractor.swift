//
//  LoginInteractor.swift
//  MyDiaryiOS
//
//  Created by 坂元 武佐志 on 2019/06/05.
//  Copyright © 2019 musashi. All rights reserved.
//

import Foundation

final class LoginInteractor {}

extension LoginInteractor: LoginInteractorInterface {
    func loginUser(username: String, password: String) {
        print(username)
        print(password)
    }
}
