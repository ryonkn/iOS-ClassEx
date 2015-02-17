//
//  Devise.swift
//  ClassEx
//
//  Created by Ryo Nakano on 2015/02/17.
//  Copyright (c) 2015年 Peppermint Club. All rights reserved.
//

// Deviceクラス
class Device {
    // プロパティの定義
    var name: String = "" // 名前
    var version: Int = 0 // バージョン
    
    // メソッドの定義
    func info() -> String {
        return "\(name)のバージョンは\(version)"
    }
    
    // 引数なしのイニシャライザ
    convenience init() {
        self.init(name: "none", version: 1)
    }
    
    // 引数ありのイニシャライザの定義
    init(name: String, version: Int) {
        self.name = name
        self.version = version
    }
}