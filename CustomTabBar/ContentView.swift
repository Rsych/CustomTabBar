//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Ryan J. W. Kim on 2021/12/12.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State var selectedTab = 0
    @State var presented = false
    
    
    let icons = [
    "house","gear", "plus", "lasso", "message"]
    // MARK: - Body
    var body: some View {
        VStack {
            // Content
            ZStack {
                Spacer().fullScreenCover(isPresented: $presented) {
                    Button {
                        presented.toggle()
                    } label: {
                        Text("Close")
                            .frame(width: 200, height: 44)
                            .background(Color.red)
                            .cornerRadius(12)
                    }

                    Text("Full screen")
                }
                switch selectedTab {
                case 0:
                    HomeView()
                case 1:
                    NavigationView {
                        VStack {
                            Text("second")
                        }
                        .navigationTitle("2")
                    }
                case 3:
                    NavigationView {
                        VStack {
                            Text("third")
                        }
                        .navigationTitle("3")
                    }
                case 4:
                    NavigationView {
                        VStack {
                            Text("fourth")
                        }
                        .navigationTitle("4")
                    }
                default:
                    NavigationView {
                        VStack {
                            Text("fifth")
                        }
                        .navigationTitle("5")
                    }
                }
            }
            
            Divider()
                .padding(.bottom, 10)
            HStack {
                ForEach(0..<5, id: \.self) { i in
                    Spacer()
                    Button {
                        if i == 2 {
                            presented.toggle()
                        } else {
                            selectedTab = i
                        }
                    } label: {
                        if i == 2 {
                            Image(systemName: icons[i])
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(width: 40, height: 40)
                                .background(Color.blue)
                                .cornerRadius(30)
                        } else {
                            Image(systemName: icons[i])
                                .foregroundColor(selectedTab == i ? .primary : .secondary)
                                .font(.title2)
                        }
                    }
                    Spacer()
                }
            }  //: HStack
        }  //: VStack
    }  //: Body
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
