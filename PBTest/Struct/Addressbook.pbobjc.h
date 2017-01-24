// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: addressbook.proto

#import "GPBProtocolBuffers.h"

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30000
#error This file was generated by a different version of protoc-gen-objc which is incompatible with your Protocol Buffer sources.
#endif

// @@protoc_insertion_point(imports)

CF_EXTERN_C_BEGIN

#pragma mark - Enum Person_PhoneType

typedef GPB_ENUM(Person_PhoneType) {
  Person_PhoneType_Mobile = 0,
  Person_PhoneType_Home = 1,
  Person_PhoneType_Work = 2,
};

GPBEnumDescriptor *Person_PhoneType_EnumDescriptor(void);

BOOL Person_PhoneType_IsValidValue(int32_t value);


#pragma mark - AddressbookRoot

@interface AddressbookRoot : GPBRootObject

// The base class provides:
//   + (GPBExtensionRegistry *)extensionRegistry;
// which is an GPBExtensionRegistry that includes all the extensions defined by
// this file and all files that it depends on.

@end

#pragma mark - Person

typedef GPB_ENUM(Person_FieldNumber) {
  Person_FieldNumber_Name = 1,
  Person_FieldNumber_Id_p = 2,
  Person_FieldNumber_Email = 3,
  Person_FieldNumber_PhoneArray = 4,
};

@interface Person : GPBMessage

@property(nonatomic, readwrite) BOOL hasName;
@property(nonatomic, readwrite, copy) NSString *name;

// Unique ID number for this person.
@property(nonatomic, readwrite) BOOL hasId_p;
@property(nonatomic, readwrite) int32_t id_p;

@property(nonatomic, readwrite) BOOL hasEmail;
@property(nonatomic, readwrite, copy) NSString *email;

// |phoneArray| contains |Person_PhoneNumber|
@property(nonatomic, readwrite, strong) NSMutableArray *phoneArray;

@end

#pragma mark - Person_PhoneNumber

typedef GPB_ENUM(Person_PhoneNumber_FieldNumber) {
  Person_PhoneNumber_FieldNumber_Number = 1,
  Person_PhoneNumber_FieldNumber_Type = 2,
};

@interface Person_PhoneNumber : GPBMessage

@property(nonatomic, readwrite) BOOL hasNumber;
@property(nonatomic, readwrite, copy) NSString *number;

@property(nonatomic, readwrite) BOOL hasType;
@property(nonatomic, readwrite) Person_PhoneType type;

@end

#pragma mark - AddressBook

typedef GPB_ENUM(AddressBook_FieldNumber) {
  AddressBook_FieldNumber_PersonArray = 1,
};

// Our address book file is just one of these.
@interface AddressBook : GPBMessage

// |personArray| contains |Person|
@property(nonatomic, readwrite, strong) NSMutableArray *personArray;

@end

CF_EXTERN_C_END

// @@protoc_insertion_point(global_scope)
