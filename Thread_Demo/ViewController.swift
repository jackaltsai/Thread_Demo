//
//  ViewController.swift
//  Thread_Demo
//
//  Created by 蔡忠翊 on 2021/9/12.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /* session 1 */
        //        // 建立Serial Queues，並建立同步和同步的block
        //        let serialQueue: DispatchQueue = DispatchQueue(label: "serialQueue")
        //
        //        // 驗證同步執行的結果
        //        serialQueue.sync {
        //            for i in 1 ... 10 {
        //                print("i: \(i)")
        //            }
        //        }
        //
        //        for j in 100 ... 109 {
        //            print("J: \(j)")
        //        }
        
        /* session 2 */
        //        let concurrentQueue: DispatchQueue = DispatchQueue(label: "CorrentQueue", attributes: .concurrent)
        //
        //        concurrentQueue.async {
        //            for i in 1 ... 100 {
        //                print("i: \(i)")
        //            }
        //        }
        //
        //        concurrentQueue.async {
        //            for j in 1 ... 100 {
        //                print("j: \(j)")
        //            }
        //        }
        //
        //        concurrentQueue.async {
        //            for k in 1 ... 100 {
        //                print("k: \(k)")
        //            }
        //        }
        
        /* session 3 */
        //        let group: DispatchGroup = DispatchGroup()
        //
        //        let queue1 = DispatchQueue(label: "queue1", attributes: .concurrent)
        //        queue1.async(group: group) {
        //            // 事件A
        //            for i in 1 ... 100 {
        //                print("i: \(i)")
        //            }
        //        }
        //        let queue2 = DispatchQueue(label: "queue2", attributes: .concurrent)
        //        queue2.async(group: group) {
        //            // 事件B
        //            for j in 101 ... 200 {
        //                print("j: \(j)")
        //            }
        //        }
        //
        //        group.notify(queue: DispatchQueue.main) {
        //            // 已處理完事件A和事件B
        //            print("處理完成事件A和事件B...")
        //        }
        
        /* session 4 */
//        let group: DispatchGroup = DispatchGroup()
//
//        let queue1 = DispatchQueue(label: "queue1", attributes: .concurrent)
//        group.enter() // 開始呼叫 API1
//        queue1.async(group: group) {
//            // Call 後端 API1
//
//            // 結束呼叫 API1
//            group.leave()
//        }
//
//        let queue2 = DispatchQueue(label: "queue2", attributes: .concurrent)
//        group.enter() // 開始呼叫 API2
//        queue2.async(group: group) {
//            // Call 後端 API2
//
//            // 結束呼叫 API2
//            group.leave()
//        }
//
//        group.notify(queue: DispatchQueue.main) {
//            // 完成所有 Call 後端 API 的動作
//            print("完成所有 Call 後端 API 的動作...")
//        }
        
        /* QoS(QoSClass) 是一個可用來定義執行緒執行先後順序的 enum，若是沒定義也有會 default 值，當然主執行緒的優先權是在最前面，再來才會是子執行緒，而其 QoSClass enum 定義的名稱執行先後順序如下：
         userInteractive > userInitiated > `default` > utility > background > unspecified */
        
//        let queue1 = DispatchQueue.global(qos: DispatchQoS.QoSClass.userInteractive) // 最高順位
//        let queue2 = DispatchQueue.global(qos: DispatchQoS.QoSClass.unspecified) // 最低順位
//
//        queue1.async {
//            for i in 1...10 {
//                print("queue1: \(i)")
//            }
//        }
//
//        queue2.async {
//            for j in 100...110 {
//                print("queue2: \(j)")
//            }
//        }
        
        /* 延遲執行介紹及應用 */
//        let delayQueue = DispatchQueue(label: "delayQueue")
//        print("Before: \(Date())")
//        // 表示系統時間 2 秒後開始執行 block 裡的動作，DispatchTime.now() 可取得系統的時間
//        delayQueue.asyncAfter(deadline: DispatchTime.now() + 2) {
//          print("After: \(Date())")
//        }
        
        /* 取得非同步的主執行緒 queue */
        // 透過 DispatchQueue.main 來取得主執行緒的使用權，block 即可撰寫我們想要做的事，在實務上通常被用來更新 UI，因更新 UI 只能放在主執行緒
        DispatchQueue.main.async {
            print("Main")
        }
        
        /* 取得非同步的子執行緒 queue */
        DispatchQueue.global().async {
            
        }
        
        
        
    }
    
    
}

