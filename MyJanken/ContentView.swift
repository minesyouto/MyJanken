//
//  ContentView.swift
//  MyJanken
//
//  Created by みねた on 2022/02/01.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    
    var body: some View {
        VStack{
            Spacer()
            if answerNumber == 0 {
                Text("これからじゃんけんをします")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                Image("gu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("グー")
                    .padding(.bottom)
            } else if answerNumber == 2 {
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            } else if answerNumber == 3 {
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
            
            Button(action: {
                //ボタンがタップされた時のアクションを指定
                //新しいじゃんけんの結果を一時的に格納する変数
                var newAnswerNumber = 0
                //ランダムに結果を出すが、前回の結果と異なる場合のみ採用
                //repeatは繰り返しの意味
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                //while以降のコードが繰り返しを行う条件
                answerNumber = newAnswerNumber
            }) {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
