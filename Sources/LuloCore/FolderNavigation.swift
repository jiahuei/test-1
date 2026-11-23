import Foundation

/// Folder hierarchy rules shared by Gallery navigation and the breadcrumb.
public enum FolderNavigation {
    /// Returns the enclosing folder, or nil when `folder` is the filesystem root.
    public static func parent(of folder: URL) -> URL? {
        let folder = folder.standardizedFileURL
        guard folder.path != "/" else { return nil }
        return folder.deletingLastPathComponent()
    }
}
