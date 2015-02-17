//
//  ClassEx.swift
//  ClassEx
//
//  Created by Ryo Nakano on 2015/02/17.
//  Copyright (c) 2015年 Peppermint Club. All rights reserved.
//

import UIKit

// クラスの定義
class ClassEx: UIView {
    
    // 描画時に呼ばれる
    override func drawRect(rect: CGRect) {
        // 情報を指定しないで表示
        var device0 = Device()
        drawString(device0.info(), x: 0, y: 20+0*20)
        
        // プロパティで情報を指定して表示
        var device1 = Device()
        device1.name    = "Device1"
        device1.version = 7
        drawString(device1.info(), x:0, y: 20+1*20)
        
        // イニシャライザで情報を指定して表示
        var device2 = Device(name: "Device2", version: 8)
        drawString(device2.info(), x:0, y: 20+2*20)
    }
    
    // 文字列の描画
    func drawString(str: String, x: Int, y: Int) {
        let attrs = [NSFontAttributeName:UIFont.systemFontOfSize(24)]
        let nsstr = str as NSString
        nsstr.drawAtPoint(CGPointMake(CGFloat(x), CGFloat(y)), withAttributes: attrs)
    }
}