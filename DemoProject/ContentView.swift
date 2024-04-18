//
//  ContentView.swift
//  DemoProject
//
//  Created by Jude Song on 4/17/24.
//

import SwiftUI

//struct ContentView: View {
//    @State var fileopen: Bool = true
//    var body: some View {
//        var myString: String = "File closed"
//        if(fileopen) {
//            myString = "File open"
//        }
//        return VStack {
//            HStack {
//                Text(myString)
//                    .padding()
//                Text("Goodbye, world")
//            }
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            VStack {
//                Text("Text 1")
//                Text("Text 2")
//                MyHStackView()
//            }
//            Text("Text 5")
//        }
//    }
//}
//
//struct MyHStackView: View {
//    var body: some View {
//        HStack {
//            Text("Text 3")
//            Text("Text 4")
//        }
//    }
//}

//struct ContentView: View {
//    let carStack = HStack {
//        Text("Car Image")
//        Image(systemName: "car.fill")
//    }
//
//    var body: some View {
//        VStack {
//            Text("Main Title")
//                .font(.largeTitle)
//            carStack
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("Sample Text")
//                .font(.custom("Copperplate", size: 58))
//                .padding(20)
//                .border(Color.black)
//        }
//    }
//}

//modifier
//struct StandardTitle: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .font(.largeTitle)
//            .background(Color.white)
//            .border(Color.gray, width: 0.2)
//            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
//    }
//}
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Spacer()
//            Text("Text 1")
//                .modifier(StandardTitle())
//            Spacer()
//            Text("Text 2")
//                .modifier(StandardTitle())
//            Spacer()
//        }
//    }
//}

//여기서부터 240418 목 수업~

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Button(action: buttonPressed) {
//                Text("Click Me")
//            }
//        }
//    }
//    func buttonPressed() {
//        print("Click!")
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Button("Click Me") {
//                print("Click!")
//            }
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Button("Click Me", systemImage: "tortoise") {
//                print("Click!")
//            }
//        }
//    }
//}

struct MyVStack<Content: View>: View {
    let content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        VStack(spacing: 10) {
            content()
        }
        .font(.largeTitle)
    }
}

struct ContentView: View {
    var body: some View {
        MyVStack {
            Text("Text Item 1")
            Text("Text Item 2")
            Text("Text Item 3")
            HStack {
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star")
            }
        }
    }
}

#Preview {
    ContentView()
}
