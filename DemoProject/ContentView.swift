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

//struct MyVStack<Content: View>: View {
//    let content: () -> Content
//
//    init(@ViewBuilder content: @escaping () -> Content) {
//        self.content = content
//    }
//
//    var body: some View {
//        VStack(spacing: 10) {
//            content()
//        }
//        .font(.largeTitle)
//    }
//}
//
//struct ContentView: View {
//    var body: some View {
//        MyVStack {
//            Text("Text Item 1")
//            Text("Text Item 2")
//            Text("Text Item 3")
//            HStack {
//                Image(systemName: "star.fill")
//                Image(systemName: "star.fill")
//                Image(systemName: "star")
//            }
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            HStack {
//                Image(systemName: "goforward.10")
//                Image(systemName: "goforward.15")
//                Image(systemName: "goforward.30")
//            }
//            .padding()
//
//            HStack(alignment: .top) {
//                Text("Q1 Sales")
//                    .font(.headline)
//                Spacer()
//                VStack(alignment: .leading) {
//                    Text("January")
//                    Text("February")
//                    Text("March")
//                }
//                Spacer()
//            }
//        }
//    }
//}

//struct ContentView: View {
//    @State var myLayout: AnyLayout = AnyLayout(VStackLayout())
//    @State var toggleValue: Bool = false
//
//    var body: some View {
//        VStack {
//            Toggle("Toggle:", isOn: $toggleValue)
//            myLayout {
//                Image(systemName: "goforward.10")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                Image(systemName: "goforward.15")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//            }
//
//            HStack {
//                Button(action: {
//                    myLayout = AnyLayout(HStackLayout())
//                }) {
//                    Text("HStack")
//                }
//                Button(action: {
//                    myLayout = AnyLayout(VStackLayout())
//                }) {
//                    Text("VStack")
//                }
//            }
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        HStack {
//            Image(systemName: "airplane")
//            Text("Flight times:")
//            Text("London")
//        }
//        .font(.largeTitle)
//        .frame(width: 300)
//        //너비가 충분치 않을 때 줄바꿈이 일어난다
//        .lineLimit(1...4)
//        //글씨를 자를지언정 줄바꿈을 이렇게 하겠다!
//        .transaction { transaction in
//            transaction.disablesAnimations = true
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        VStack (alignment: .center) {
//        GeometryReader { geometry in
//                Text("Hello World, how are you?")
//                    .font(.largeTitle)
//                    .border(Color.black)
//                    .frame(minWidth: 0, maxWidth: geometry.size.width / 2, minHeight: 0, maxHeight: .infinity, alignment: .center)
//            }
//        }
//    }
//}

//상태 프로퍼티
struct ContentView: View {
    @State private var wifiEnabled = true
    @State private var userName = ""
    let textLimit = 20
    var body: some View {
        VStack {
            Toggle(isOn: $wifiEnabled) {
                Text("Enable Wi-Fi")
            }
            TextField("Enter user name", text: $userName)
            Text(userName .prefix(textLimit))
            Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
                .font(.largeTitle)
        }
    }
}

#Preview {
    ContentView()
}
