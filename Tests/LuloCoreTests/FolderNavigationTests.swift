import Foundation
import Testing

@testable import LuloCore

/// Ensures the enclosing folder stops at the filesystem root instead of wrapping to itself.
@Test
func parentOfFolderStopsAtRoot() {
    #expect(FolderNavigation.parent(of: URL(fileURLWithPath: "/photos/albums/trip"))?.path == "/photos/albums")
    #expect(
        FolderNavigation.parent(of: URL(fileURLWithPath: "/photos/albums/trip/", isDirectory: true))?.path
            == "/photos/albums")
    #expect(FolderNavigation.parent(of: URL(fileURLWithPath: "/photos"))?.path == "/")
    #expect(FolderNavigation.parent(of: URL(fileURLWithPath: "/", isDirectory: true)) == nil)
}
