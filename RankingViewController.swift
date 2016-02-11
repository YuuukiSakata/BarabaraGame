//
//  RankingViewController.swift
//  BarabaraGame
//
//  Created by Yuki Sakata on 2016/02/11.
//  Copyright © 2016年 Yuki Sakata. All rights reserved.
//

import UIKit

class RankingViewController: UIViewController {
    
    @IBOutlet var rankingLabel1: UILabel! //1位のスコアを表示
    @IBOutlet var rankingLabel2: UILabel! //2位のスコアを表示
    @IBOutlet var rankingLabel3: UILabel! //3位のスコアを表示
    
    let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults() //スコアの保存をするための変数

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        rankingLabel1.text = String(defaults.integerForKey("score1")) // "score1"というキーの値を取得して表示
        rankingLabel2.text = String(defaults.integerForKey("score2")) // "score2"というキーの値を取得して表示
        rankingLabel3.text = String(defaults.integerForKey("score3")) // "score3"というキーの値を取得して表示
    }
    
    @IBAction func toTop(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
