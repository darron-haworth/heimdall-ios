//
//  HumanStandardToken.swift
//
//  Generated by Bivrost at 1510152537.96728.
//

struct HumanStandardToken {

    struct Decimals: SolidityFunction {
        static let methodId = "313ce567"
        typealias Return = Solidity.UInt8
        typealias Arguments = Void

        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }

        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Decode Static Types & Locations for Dynamic Types
            let param0 = try Solidity.UInt8.decode(source: source)
            // Dynamic Types (if any)
            return param0
        }

        static func decode(argumentsData: String) throws -> Arguments {}
    }

    struct Name: SolidityFunction {
        static let methodId = "06fdde03"
        typealias Return = Solidity.String
        typealias Arguments = Void

        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }

        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Decode Static Types & Locations for Dynamic Types
            // Ignore location for param0 (dynamic type)
            _ = try source.consume()
            // Dynamic Types (if any)
            let param0 = try Solidity.String.decode(source: source)
            return param0
        }

        static func decode(argumentsData: String) throws -> Arguments {}
    }

    struct TotalSupply: SolidityFunction {
        static let methodId = "18160ddd"
        typealias Return = Solidity.UInt256
        typealias Arguments = Void

        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }

        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Decode Static Types & Locations for Dynamic Types
            let param0 = try Solidity.UInt256.decode(source: source)
            // Dynamic Types (if any)
            return param0
        }

        static func decode(argumentsData: String) throws -> Arguments {}
    }

    struct Allowance: SolidityFunction {
        static let methodId = "dd62ed3e"
        typealias Return = Solidity.UInt256
        typealias Arguments = (_owner: Solidity.Address, _spender: Solidity.Address)

        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments._owner, arguments._spender))"
        }

        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Decode Static Types & Locations for Dynamic Types
            let remaining = try Solidity.UInt256.decode(source: source)
            // Dynamic Types (if any)
            return remaining
        }

        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Decode Static Types & Locations for Dynamic Types
            let _owner = try Solidity.Address.decode(source: source)
            let _spender = try Solidity.Address.decode(source: source)
            // Dynamic Types (if any)
            return Arguments(_owner: _owner, _spender: _spender)
        }
    }

    struct ApproveAndCall: SolidityFunction {
        static let methodId = "cae9ca51"
        typealias Return = Solidity.Bool
        typealias Arguments = (_spender: Solidity.Address, _value: Solidity.UInt256, _extraData: Solidity.Bytes)

        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments._spender, arguments._value, arguments._extraData))"
        }

        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Decode Static Types & Locations for Dynamic Types
            let success = try Solidity.Bool.decode(source: source)
            // Dynamic Types (if any)
            return success
        }

        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Decode Static Types & Locations for Dynamic Types
            let _spender = try Solidity.Address.decode(source: source)
            let _value = try Solidity.UInt256.decode(source: source)
            // Ignore location for _extraData (dynamic type)
            _ = try source.consume()
            // Dynamic Types (if any)
            let _extraData = try Solidity.Bytes.decode(source: source)
            return Arguments(_spender: _spender, _value: _value, _extraData: _extraData)
        }
    }

    struct Approve: SolidityFunction {
        static let methodId = "095ea7b3"
        typealias Return = Solidity.Bool
        typealias Arguments = (_spender: Solidity.Address, _value: Solidity.UInt256)

        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments._spender, arguments._value))"
        }

        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Decode Static Types & Locations for Dynamic Types
            let success = try Solidity.Bool.decode(source: source)
            // Dynamic Types (if any)
            return success
        }

        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Decode Static Types & Locations for Dynamic Types
            let _spender = try Solidity.Address.decode(source: source)
            let _value = try Solidity.UInt256.decode(source: source)
            // Dynamic Types (if any)
            return Arguments(_spender: _spender, _value: _value)
        }
    }

    struct Version: SolidityFunction {
        static let methodId = "54fd4d50"
        typealias Return = Solidity.String
        typealias Arguments = Void

        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }

        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Decode Static Types & Locations for Dynamic Types
            // Ignore location for param0 (dynamic type)
            _ = try source.consume()
            // Dynamic Types (if any)
            let param0 = try Solidity.String.decode(source: source)
            return param0
        }

        static func decode(argumentsData: String) throws -> Arguments {}
    }

    struct TransferFrom: SolidityFunction {
        static let methodId = "23b872dd"
        typealias Return = Solidity.Bool
        typealias Arguments = (_from: Solidity.Address, _to: Solidity.Address, _value: Solidity.UInt256)

        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments._from, arguments._to, arguments._value))"
        }

        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Decode Static Types & Locations for Dynamic Types
            let success = try Solidity.Bool.decode(source: source)
            // Dynamic Types (if any)
            return success
        }

        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Decode Static Types & Locations for Dynamic Types
            let _from = try Solidity.Address.decode(source: source)
            let _to = try Solidity.Address.decode(source: source)
            let _value = try Solidity.UInt256.decode(source: source)
            // Dynamic Types (if any)
            return Arguments(_from: _from, _to: _to, _value: _value)
        }
    }

    struct BalanceOf: SolidityFunction {
        static let methodId = "70a08231"
        typealias Return = Solidity.UInt256
        typealias Arguments = Solidity.Address

        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }

        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Decode Static Types & Locations for Dynamic Types
            let balance = try Solidity.UInt256.decode(source: source)
            // Dynamic Types (if any)
            return balance
        }

        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Decode Static Types & Locations for Dynamic Types
            let _owner = try Solidity.Address.decode(source: source)
            // Dynamic Types (if any)
            return _owner
        }
    }

    struct Symbol: SolidityFunction {
        static let methodId = "95d89b41"
        typealias Return = Solidity.String
        typealias Arguments = Void

        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }

        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Decode Static Types & Locations for Dynamic Types
            // Ignore location for param0 (dynamic type)
            _ = try source.consume()
            // Dynamic Types (if any)
            let param0 = try Solidity.String.decode(source: source)
            return param0
        }

        static func decode(argumentsData: String) throws -> Arguments {}
    }

    struct Transfer: SolidityFunction {
        static let methodId = "a9059cbb"
        typealias Return = Solidity.Bool
        typealias Arguments = (_to: Solidity.Address, _value: Solidity.UInt256)

        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments._to, arguments._value))"
        }

        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Decode Static Types & Locations for Dynamic Types
            let success = try Solidity.Bool.decode(source: source)
            // Dynamic Types (if any)
            return success
        }

        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Decode Static Types & Locations for Dynamic Types
            let _to = try Solidity.Address.decode(source: source)
            let _value = try Solidity.UInt256.decode(source: source)
            // Dynamic Types (if any)
            return Arguments(_to: _to, _value: _value)
        }
    }
}
