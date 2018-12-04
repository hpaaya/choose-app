//  ViewController.swift
//  choose app
//  Created by User14 on 2018/11/28.
//  Copyright © 2018 User14. All rights reserved.

import UIKit

struct Qna{
    var question:String
    var answer:[String]
    var correctAnwer:Int
    var image:String
}

class ViewController: UIViewController {

    @IBOutlet weak var myQuestion: UILabel!
    @IBOutlet weak var questionNumber: UILabel!
    @IBOutlet weak var myScore: UILabel!
    @IBOutlet var selectedButton: [UIButton]!
    @IBOutlet weak var questionImage: UIImageView!
    
    var number = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38]
    // 題數
    var questionCount = 0
    // score
    var score = 0
    // correct answer
    var correctAnswer = 0
    
    var questionArray = [Qna(question: "只要有恆心的下一句是什麼？", answer: ["必定有錢剩","鐵柱磨成針","天下無敵人"], correctAnwer: 2,image:"1.png"),
                         Qna(question: "聊齋志異的作者是誰？", answer: ["曹雪芹","蒲松齡","　施耐庵"], correctAnwer: 2,image:"2.png"),
                         Qna(question: "魚露是一種：", answer: ["鹹味調料","甜味調料","　酸味調料"], correctAnwer: 1,image:"3.png"),
                         Qna(question: "下列食品中，哪個含鈣量最高？", answer: ["骨頭湯","水果","葡萄糖"], correctAnwer: 2,image:"4.png"),
                         Qna(question: "鐵達尼號游輪是哪一年沉沒的？", answer: ["1910年","　1911年","　1912年"], correctAnwer: 3,image:"5.png"),
                         Qna(question: "世界最著名的十大海峽中，位於印度南端和斯裡蘭卡島北部之間的是什麼海峽？", answer: ["保克海峽","白令海峽","麻六甲海峽"], correctAnwer: 1,image:"6.png"),
                         Qna(question: "歌德寫《浮士德》用了多長時間？", answer: ["30年","60年","50年"], correctAnwer: 2,image:"7.png"),
                         Qna(question: "人的五感中那個感覺反應最快？", answer: ["味覺","嗅覺","視覺"], correctAnwer: 1,image:"8.png"),
                         Qna(question: "下列官名中那個不是唐朝的官名？", answer: ["尚書","殿中","　黃門"], correctAnwer: 2,image:"9.png"),
                         Qna(question: "有“世界花城”（花都）之稱的是那個城市？", answer: ["巴黎","紐約","華盛頓"], correctAnwer: 1,image:"1.png"),
                         Qna(question: "世界上最早的銀行始建於哪個國家？", answer: ["義大利","美國","瑞士"], correctAnwer: 1,image:"2.png"),
                         Qna(question: "冰球十九世紀七十年代起源於那個國家？", answer: ["英國","加拿大","愛爾蘭"], correctAnwer: 3,image:"3.png"),
                         Qna(question: "歐元什麼時候正式誕生？", answer: ["1999年1月1日","1999年7月1日","1999年12月1日"], correctAnwer: 1,image:"4.png"),
                         Qna(question: "人體最大的解毒器官是：", answer: ["胃","腎","肝"], correctAnwer: 3,image:"5.png"),
                         Qna(question: "古人所謂“黃道”是哪種天體運行周年的軌道？", answer: ["金星","太陽","月亮"], correctAnwer: 2,image:"6.png"),
                         Qna(question: "下面提供的幾種識別礦泉水真假的方法哪一種是錯誤的？", answer: ["溫下吸熱速度快於自來水","在日光下無色透明","折光率較自來水大"], correctAnwer: 1,image:"7.png"),
                         Qna(question: "下列哪一個與世界著名文學大師海明威有關？", answer: ["麥琪的禮物","諾貝爾文學獎","美國冒險"], correctAnwer: 3,image:"8.png"),
                         Qna(question: "電影魔戒中的魔戒可以讓人？", answer: ["不死","隱身","透視"], correctAnwer: 2,image:"9.png"),
                         Qna(question: "以下哪些作品不是宮崎駿的作品？", answer: ["千與千尋","龍貓","天空的守護神"], correctAnwer: 3,image:"1.png"),
                         Qna(question: "促進人體胃腸吸收鈣的重要物質是：", answer: ["維生素A","維生素D","維生素B"], correctAnwer: 2,image:"2.png"),
                         Qna(question: "下列哪部小說是日本作家夏目漱石的作品？", answer: ["沉船","我是貓","玩偶之家"], correctAnwer: 2,image:"3.png"),
                         Qna(question: "豆科植物可通過根瘤菌固定哪種元素？", answer: ["氮","磷","鉀"], correctAnwer: 1,image:"4.png"),
                         Qna(question: "最能反映骨骼發育的重要指標是：", answer: ["牙齒數","坐高","身長"], correctAnwer: 3,image:"5.png"),
                         Qna(question: "以下哪種動物是軟體動物？", answer: ["變形蟲","蝸牛","水蛭"], correctAnwer: 2,image:"6.png"),
                         Qna(question: "企鵝產卵的季節一般是：", answer: ["春季","夏季","秋季"], correctAnwer: 3,image:"7.png"),
                         Qna(question: "貝多芬一生創作了多少首鋼琴奏鳴曲？", answer: ["27","28","32"], correctAnwer: 3,image:"8.png"),
                         Qna(question: "青蛙除了用肺外還用什麼器官呼吸？", answer: ["皮膚","腮","嘴巴"], correctAnwer: 1,image:"9.png"),
                         Qna(question: "世界上最深的海溝位於：", answer: ["大西洋","太平洋","印度洋"], correctAnwer: 2,image:"1.png"),
                         Qna(question: "避雷針的發明者是：", answer: ["富蘭克林","愛迪生","瓦特"], correctAnwer: 1,image:"2.png"),
                         Qna(question: "是哪國人最先制作出了牛奶巧克力？", answer: ["義大利","英國","瑞士"], correctAnwer: 3,image:"3.png"),
                         Qna(question: "從抹香鯨體內提煉出的香料是：", answer: ["龍涎香","麝香","百里香"], correctAnwer: 1,image:"4.png"),
                         Qna(question: "吉他有幾根弦？", answer: ["4根","6根","8根"], correctAnwer: 2,image:"5.png"),
                         Qna(question: "血管破裂時，血液中的什麼物質會凝結成塊，堵住破裂部分以止血？？", answer: ["紅血球","血清","血小板"], correctAnwer: 3,image:"6.png"),
                         Qna(question: "銀杏屬於什麼種類水果？", answer: ["仁果類","豎果類","核果類"], correctAnwer: 2,image:"7.png"),
                         Qna(question: "汽車在什麼狀態下排放的一氧化碳最多：", answer: ["高速行駛中","速行駛低速行駛","開發動機"], correctAnwer: 3,image:"8.png"),
                         Qna(question: "世界上有一個地方，每年有兩個月沒有白天，又有近3個月沒有黑夜，這裡是：", answer: ["美國巴羅鎮","冰島","澳大利亞"], correctAnwer: 1,image:"9.png"),
                         Qna(question: "玫瑰王國是指哪個國家？", answer: ["羅馬尼亞","保加利亞","法國"], correctAnwer: 2,image:"1.png"),
                         Qna(question: "我們日常吃的紫菜屬於下列哪種藻類？", answer: ["褐藻","紅藻","綠藻"], correctAnwer: 2,image:"2.png"),
                         Qna(question: "通常魚在一年四季中什麼時候長得最慢？", answer: ["春天","秋天","冬天"], correctAnwer: 3,image:"3.png")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myScore.text = "目前 \(String(score)) 分"
        showQuestion()
    }
    @IBAction func selectButton1(_ sender: UIButton) {
        if correctAnswer == 1{
            score = score + 10
            myScore.text = "目前 \(String(score)) 分"
        }
        if questionCount == 10{
            alert()
        }
        else{
            showQuestion()
        }
    }
    @IBAction func selectButton2(_ sender: UIButton) {
        if correctAnswer == 2{
            score = score + 10
            myScore.text = "目前 \(String(score)) 分"
        }
        if questionCount == 10{
            alert()
        }
        else{
            showQuestion()
        }
    }
    @IBAction func selectButton3(_ sender: UIButton) {
        if correctAnswer == 3{
            score = score + 10
            myScore.text = "目前 \(String(score)) 分"
        }
        if questionCount == 10{
            alert()
        }
        else{
            showQuestion()
        }
    }
    
    @IBAction func restartPress(_ sender: Any) {
        initialize()
        showQuestion()
    }
    
    func showQuestion(){
        
        questionCount = questionCount + 1
        
        let randomNumber = Int(arc4random_uniform(UInt32(number.count)))
        let value = number[randomNumber]
        
        questionImage.image = UIImage(named: questionArray[value].image)
        questionNumber.text = "第\(questionCount)題"
        myQuestion.text = questionArray[value].question
        correctAnswer = questionArray[value].correctAnwer
        print(questionArray[value].question,questionArray[value].correctAnwer)
        
        var choiceIndex = 0
        for i in 0..<selectedButton.count{
            selectedButton[i].setTitle(questionArray[value].answer[choiceIndex], for: .normal)
            choiceIndex = choiceIndex + 1
        }
        number.remove(at: randomNumber)
    }
    
    func initialize(){
        number = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38]
        questionCount = 0
        score = 0
        myScore.text = "目前 \(String(score)) 分"
    }
    
    func alert(){
        let alertController = UIAlertController(
            title: "測驗結束", message: "得 \(score) 分", preferredStyle: .alert)
        let okAction = UIAlertAction(
            title: "確認", style: .default,
            handler:{
                (action: UIAlertAction!) -> Void in
        })
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
    }

}

