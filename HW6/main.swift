//
//  main.swift
//  HW6
//
//  Created by Бектур Каримов on 30/1/23.
//

import Foundation

//
//  main.swift
//  HW6
//
//  Created by Бектур Каримов on 30/1/23.
//

import Foundation





//Создать структуру User c параметрами имя, фамилия, номер телефона.
struct User {
    var name: String
    var surname: String
    var phoneNumber: String
    var code: CountryCods
}

//Создать enum из стран с кодами телефонов. Добавить параметр code в  структуру User.

enum CountryCods: String {
    case Russia = "+7"
    case Kyrgyzstan = "+996"
    case USA = "+1"
}

//Создать класс DataBase с параметром массив юзеров и функций распечатки информации всех юзеров, функий распечатки только по определенной стране.
class DataBase{
    var userArray: [User] = []
    func addUser(add:User) {
        userArray.append(add)
    }
    func showInfo(){
        for i in userArray{
            print("\(i.name), \(i.surname), \(i.code.rawValue)\(i.phoneNumber)")
        }
    }
    func printUserByCountry(code: CountryCods){
        for user in userArray where user.code == code {
            print("\(user.name), \(user.surname), \(user.phoneNumber), \(user.code)")
            
        }
    }
}
let dataBase = DataBase()
while true {
    print("User name")
    let username = readLine()!
    print("User last name")
    let lastName = readLine()!
    print("Country code")
    let codeCountry = readLine()!
    let code: CountryCods!
    switch codeCountry {
    case "Russia": code = .Russia
    case "Kyrgyzstan": code = .Kyrgyzstan
    case "USA": code = .USA
    default:
        code = .USA
    }
    print("Enter user Phone Number")
    let phoneNumber = readLine()!
    let user = User(name: username, surname: lastName, phoneNumber: phoneNumber, code: code)
    dataBase.addUser(add: user)
    dataBase.showInfo()
    print("Enter If you want add user write yse")
    let answer = readLine()!
    if answer != "yes" {
        break
    }
}

// В main cделать так, чтобы пользователь вводил все данные через ридлайн. Введенные данные должны записаться в массив в классе DataBase. Для телефона сделать 2 ридлайна, один для указывания страны по названию, другой для ввода номера. В общей информации номер телефона должен распечатываться в таком виде: “+996777777777”. Запрос для ввода данных сделать несколько раз циклом, чтобы можно было ввести разные данные.
//






