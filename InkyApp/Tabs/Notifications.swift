//
//  NotificationsPage.swift
//  InkyApp


import SwiftUI

struct Notifications: View {
//View Properties
    var body: some View {
        ScrollView(.vertical){
            LazyVStack(spacing: 15){
                DummyMessagesView()
            }
            .safeAreaPadding(15)
            .safeAreaInset(edge: .top, spacing: 0){
                ExpandableNavigationBar()
            }
        }
    }
    
//Expandable Navigation Bar
    @ViewBuilder
    func ExpandableNavigationBar(_ title:String = "Updates") -> some View {
        VStack(spacing: 10){
            //Title
            Text(title)
                .font(.largeTitle.bold())
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 10)
//            HStack(spacing: 12){
//            }
//            .padding(.vertical, 10)
//            .padding(.horizontal, 15)
//            .frame(height: 45)
//            .background{
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(.background)
//            }
        }
        .padding(.top, 25)
        .padding(.horizontal, 15)
        .padding(.bottom, 10)
    }
    
    
// Dummy Messages View
    @ViewBuilder
    func DummyMessagesView() -> some View {
        ForEach(0..<20, id: \.self){ _ in
            HStack (spacing: 12){
                Circle()
                    .frame(width: 55, height: 55)
                VStack(alignment: .leading, spacing: 6, content: {
                    Rectangle()
                        .frame(width: 140, height: 8)
                    Rectangle()
                        .frame(height: 8)
                    Rectangle()
                        .frame(width: 80, height: 8)
                })
            }
            .foregroundStyle(.gray.opacity(0.4))
            .padding(.horizontal, 15)
        }
    }
}

#Preview {
    Notifications()
}
