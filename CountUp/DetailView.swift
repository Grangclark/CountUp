//
//  DetailView.swift
//  CountUp
//
//  Created by 長橋和敏 on 2024/12/07.
//

import SwiftUI

// SwiftUIでは各ビューがスタイルを自己完結的に持つ
// コンポーネントごとにローカルなスタイル設定を行う設計
struct DetailView: View {
    // カウントを保持する状態変数
    // SwiftUIでは、@State修飾子を付けた変数を使ってビューの状態を管理します。
    @State private var count = 0

    var body: some View {
        // 縦方向にUI要素を配置するためのコンテナ。
        // spacingで要素間のスペースを調整できます。
        VStack(spacing: 20) {
            Text("Detail Screen")
                .font(.largeTitle)
                .padding()

            Text("This is the detail screen!")
                .font(.body)
            
            // ラベル
            Text("Count: \(count)")
                .font(.largeTitle)
                .fontWeight(.bold)

            // カウントアップボタン
            Button(action: {
                count += 1 // カウントを1増やす
            }) {
                Text("カウントアップ")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            // リセットボタン
            Button(action: {
                count = 0 // カウントをリセット
            }) {
                Text("リセット")
                    .font(.title)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .navigationTitle("Detail") // ナビゲーションバーのタイトル
    }
}

// 以下を記述することでViewを見ながら開発できる
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
