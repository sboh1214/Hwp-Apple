import SwiftUI
import UniformTypeIdentifiers
import CoreHwp

extension UTType {
    static var hwp: UTType {
        UTType(exportedAs: "com.haansoft.HancomOfficeViewer.mac.hwp")
    }
}

struct HwpAppleDocument: FileDocument {
    var hwp: HwpFile

    init(text: String = "Hello, world!") {
        hwp = HwpFile()
    }

    static var readableContentTypes: [UTType] { [.hwp] }
    // static var writableContentTypes: [UTType] { [.hwp] }

    init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        hwp = HwpFile()
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        throw CocoaError(.persistentStoreSave)
    }
}
