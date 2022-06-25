//
//  ARViewContainer.swift
//  ARCounter
//
//  Created by Andronick Martusheff on 6/25/22.
//

import SwiftUI
import RealityKit

struct ARViewContainer: UIViewRepresentable {
    
    @ObservedObject var count: Count
    
    func makeUIView(context: Context) -> ARView {
        return ARView(frame: .zero)
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        updateCounter(uiView: uiView)
    }
    
    private func updateCounter(uiView: ARView) {
        uiView.scene.anchors.removeAll()
        
        let anchor = AnchorEntity()
        let text = MeshResource.generateText(
            "\(abs(count.num))",
            extrusionDepth: 0.08,
            font: .systemFont(ofSize: 0.5, weight: .bold)
        )
        
        let color: UIColor
        
        switch count.num {
        case let x where x < 0:
            color = .red
        case let x where x > 0:
            color = .green
        default:
            color = .white
        }

        let shader = SimpleMaterial(color: color, roughness: 4, isMetallic: true)
        let textEntity = ModelEntity(mesh: text, materials: [shader])

        textEntity.position.z -= 1.5
        textEntity.setParent(anchor)
        uiView.scene.addAnchor(anchor)
    }
}
