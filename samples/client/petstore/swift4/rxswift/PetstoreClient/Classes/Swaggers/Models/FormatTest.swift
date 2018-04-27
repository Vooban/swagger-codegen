//
// FormatTest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class FormatTest: Codable {

    public var integer: Int?
    public var int32: Int?
    public var int64: Int64?
    public var number: Double
    public var float: Float?
    public var double: Double?
    public var string: String?
    public var byte: Data
    public var binary: Data?
    public var date: Date
    public var dateTime: Date?
    public var uuid: UUID?
    public var password: String


    
    public init(integer: Int?, int32: Int?, int64: Int64?, number: Double, float: Float?, double: Double?, string: String?, byte: Data, binary: Data?, date: Date, dateTime: Date?, uuid: UUID?, password: String) {
        self.integer = integer
        self.int32 = int32
        self.int64 = int64
        self.number = number
        self.float = float
        self.double = double
        self.string = string
        self.byte = byte
        self.binary = binary
        self.date = date
        self.dateTime = dateTime
        self.uuid = uuid
        self.password = password
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(integer, forKey: "integer")
        try container.encodeIfPresent(int32, forKey: "int32")
        try container.encodeIfPresent(int64, forKey: "int64")
        try container.encode(number, forKey: "number")
        try container.encodeIfPresent(float, forKey: "float")
        try container.encodeIfPresent(double, forKey: "double")
        try container.encodeIfPresent(string, forKey: "string")
        try container.encode(byte, forKey: "byte")
        try container.encodeIfPresent(binary, forKey: "binary")
        try container.encode(date, forKey: "date")
        try container.encodeIfPresent(dateTime, forKey: "dateTime")
        try container.encodeIfPresent(uuid, forKey: "uuid")
        try container.encode(password, forKey: "password")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        integer = try container.decodeIfPresent(Int.self, forKey: "integer")
        int32 = try container.decodeIfPresent(Int.self, forKey: "int32")
        int64 = try container.decodeIfPresent(Int64.self, forKey: "int64")
        number = try container.decode(Double.self, forKey: "number")
        float = try container.decodeIfPresent(Float.self, forKey: "float")
        double = try container.decodeIfPresent(Double.self, forKey: "double")
        string = try container.decodeIfPresent(String.self, forKey: "string")
        byte = try container.decode(Data.self, forKey: "byte")
        binary = try container.decodeIfPresent(Data.self, forKey: "binary")
        date = try container.decode(Date.self, forKey: "date")
        dateTime = try container.decodeIfPresent(Date.self, forKey: "dateTime")
        uuid = try container.decodeIfPresent(UUID.self, forKey: "uuid")
        password = try container.decode(String.self, forKey: "password")
    }
}

