public enum DoOrDoNot: Error {
    /// offline
    case onlineMustYouGo
    /// json parsing and
    case parseResponseWeCannot(parsingError:Error)
    /// general error to catch underlying errors
    case problemWeHave(underlyingError: Error?)
}
