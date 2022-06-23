//
//  instahubDataView.swift
//  ExpenseTracker
//
//  Created by Raphael Palacio on 6/23/22.
//

import SwiftUI

struct instahubDataView: View {
    @State var posts: [Post] = []
    
    var body: some View {
        List(posts) { post in
            Text(post.title)
                
        }
        .onAppear{
            Api().getData { (posts) in
                self.posts = posts
            }
        }
    }
}

struct instahubDataView_Previews: PreviewProvider {
    static var previews: some View {
        instahubDataView()
    }
}
