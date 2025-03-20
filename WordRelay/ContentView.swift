//
//  ContentView.swift
//  WordRelay
//
//  Created by 영석 on 3/20/25.
//

import SwiftUI

struct ContentView: View {
    
    let title:String = "끝말잇기 게임"
    @State var nextWord : String = ""
    @State var words: [String] = []
    @State var showAlert: Bool = false
    @State var showResetAlert:Bool = false
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Text(title)
                    .font(.title)
                    .bold()
                    .padding(.horizontal,20)
                    .padding(.vertical, 16)
                
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.teal)
                            .opacity(0.2)
                            .shadow(radius: 5)
                    )
                    .padding(.top, 10)
                    .frame(maxWidth: .infinity, alignment: .center)
            
                
                Button(action: {
                    showResetAlert = true
                }) {
                    Text("초기화")
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                        .padding(.vertical,12)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                        )
                }
                .alert("정말 초기화 하시겠습니까?",
                       isPresented: $showResetAlert) {
                    Button("초기화 하기",role : .destructive) {
                        // cancel : 하나만
                        // destructive : 두개
                        showResetAlert = false
                        words.removeAll()
                        nextWord = ""
                    }
                    
                    Button("취소",role:.cancel) {
                        showResetAlert = false
                    }
                }
            }
            .frame(maxWidth : .infinity)
            .padding(.horizontal,20)
          
            
            HStack {
                TextField("단어를 입력하세요.", text: $nextWord)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke( lineWidth: 2)
                    )
                
                Button(action: {
                    // 동작
                    print("입력하신 단어는 : " + nextWord)
                    
                    // 사용자가 입력한 단어 : nextWord
                    // 단어들이 목록 : words
                    
                    // 입력한 글자가 비어있는지 확인
                    if(!nextWord.isEmpty) {
                        // 단어들이 비어있지 않을때만 검사 진행
                        if(!words.isEmpty) {
                            if(words.last?.last?.lowercased() ==
                               nextWord.first?.lowercased()) {
                                // 끝말이 이어지는 상황
                                words.append(nextWord)
                                nextWord = ""
                            }else {
                                // 끝말이 이어지지 않는 상황
                                
                                showAlert = true
                            }
                        }else {
                            // 단어 들이 비어있는 경우 바로 입력 진행
                            words.append(nextWord)
                            nextWord = ""
                        }
                    }else {
                        showAlert = true
                    }
                   
                }, label: {
                    // 뷰
                    Text("입력")
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                        .padding(.vertical,12)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                        )
                })
                .alert("끝말이 이어지는 단어를 입력해주세요.",
                       isPresented: $showAlert) {
                    Button("확인",role : .cancel) {
                        // cancel : 하나만
                        // destructive : 두개
                        showAlert = false
                    }
                }
            }
            .padding(.horizontal)
            .padding(.top)
            
            List {
                ForEach(words.reversed() ,id:\.self) { word in
                    Text(word)
                        .font(.title2)
                }
                
                
            }
            .listStyle(.plain)
            
            
            
            Spacer()
        }
        
    }
}

#Preview {
    ContentView()
}
