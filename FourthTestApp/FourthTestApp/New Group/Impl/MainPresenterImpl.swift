//
//  MainPresenterImpl.swift
//  FirstTestTask
//
//  Created by Timur Karimov on 17.09.2020.
//  Copyright © 2020 Timur Karimov. All rights reserved.
//

import UIKit


class MainPresenterImpl: MainPresenter {
    var view: MainView
    
    init(view: MainView) {
        self.view = view
    }
    
    
    func checkTextValid(_ text: String) {
        if isValidEmail(text) {
            view.showAlert(title: "Успешно", value: "Это email")
        } else if isValidLogin(text) {
            view.showAlert(title: "Успешно", value: "Это login")
        } else {
            view.showAlert(title: "Ошибка", value: "Это не email и не login")
        }
    }
    
    func isValidEmail(_ email: String) -> Bool {
       let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    func isValidLogin(_ login: String) -> Bool {
        if login.count >= 3 && login.count <= 32 {
            let loginRegEx = "[A-Za-z]+[A-Z0-9a-z.-]{2,32}"

            let loginPred = NSPredicate(format:"SELF MATCHES %@", loginRegEx)
            return loginPred.evaluate(with: login)
        }
        return false
    }
    
    

}
