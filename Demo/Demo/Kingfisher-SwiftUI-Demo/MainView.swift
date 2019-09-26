//
//  MainView.swift
//  Kingfisher
//
//  Created by jp20028 on 2019/08/07.
//
//  Copyright (c) 2019 Wei Wang <onevcat@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import SwiftUI
import Kingfisher

struct MainView: View {
    var body: some View {

        NavigationView {
            List {
                Button(
                    action: {
                        KingfisherManager.shared.cache.clearMemoryCache()
                        KingfisherManager.shared.cache.clearDiskCache()
                    },
                    label: {
                        Text("Clear Cache").foregroundColor(.blue)
                    }
                )
                NavigationLink(destination: SwiftUIView()) { Text("Basic Image") }
                NavigationLink(destination: SwiftUIList()) { Text("List") }
            }.navigationBarTitle(Text("Kingfisher"))
        }
    }
}

#if DEBUG
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif