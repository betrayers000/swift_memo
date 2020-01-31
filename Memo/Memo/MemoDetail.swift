//
//  MemoDetail.swift
//  Memo
//
//  Created by 박정우 on 2020/01/31.
//  Copyright © 2020 박정우. All rights reserved.
//

import SwiftUI

struct MemoDetail: View {
    let Memo: Memo
    @State var content = ""
    
    var body: some View {
        HStack{
            TextField(Memo.content, text:$content)
        }
    }
}

struct MemoDetail_Previews: PreviewProvider {
    static let previewMemo = Memo(id:1, title:"previewTitle", content:"previewContent", date:"2020-01-31")
    static var previews: some View {
        MemoDetail(Memo: previewMemo)
    }
}
