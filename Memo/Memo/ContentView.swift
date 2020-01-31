//
//  ContentView.swift
//  Memo
//
//  Created by 박정우 on 2020/01/22.
//  Copyright © 2020 박정우. All rights reserved.
//

import SwiftUI

struct Memo {
    let id : Int
    let title: String
    let content : String
    let date : String
}

extension Memo {
    static func all() -> [Memo]{
        return [
            Memo(id:1, title:"test1", content:"test1 content", date:"2020-01-28"),
            Memo(id:2, title:"test2", content:"test2 content", date:"2020-01-29"),
            Memo(id:3, title:"test3", content:"test3 content", date:"2020-01-30")
        ]
    }
}


struct ContentView: View {
    
    @State var content = ""
    let Memos = Memo.all()
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    List(self.Memos, id:\.title){
                        Memo in
                        NavigationLink(destination: MemoDetail(Memo: Memo)){
                            Text(Memo.title)
                        }
                    }
                }
            }.navigationBarTitle("Memo")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

