// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: addressbook.proto

#import "GPBProtocolBuffers_RuntimeSupport.h"
#import "Addressbook.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma mark - AddressbookRoot

@implementation AddressbookRoot

@end

static GPBFileDescriptor *AddressbookRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"tutorial"
                                                     syntax:GPBFileSyntaxProto2];
  }
  return descriptor;
}

#pragma mark - Person

@implementation Person

@dynamic hasName, name;
@dynamic hasId_p, id_p;
@dynamic hasEmail, email;
@dynamic phoneArray;

typedef struct Person_Storage {
  uint32_t _has_storage_[1];
  int32_t id_p;
  NSString *name;
  NSString *email;
  NSMutableArray *phoneArray;
} Person_Storage;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = NULL;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .number = Person_FieldNumber_Name,
        .hasIndex = 0,
        .flags = GPBFieldRequired,
        .type = GPBTypeString,
        .offset = offsetof(Person_Storage, name),
        .defaultValue.valueString = nil,
        .typeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "id_p",
        .number = Person_FieldNumber_Id_p,
        .hasIndex = 1,
        .flags = GPBFieldRequired,
        .type = GPBTypeInt32,
        .offset = offsetof(Person_Storage, id_p),
        .defaultValue.valueInt32 = 0,
        .typeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "email",
        .number = Person_FieldNumber_Email,
        .hasIndex = 2,
        .flags = GPBFieldOptional,
        .type = GPBTypeString,
        .offset = offsetof(Person_Storage, email),
        .defaultValue.valueString = nil,
        .typeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "phoneArray",
        .number = Person_FieldNumber_PhoneArray,
        .hasIndex = GPBNoHasBit,
        .flags = GPBFieldRepeated,
        .type = GPBTypeMessage,
        .offset = offsetof(Person_Storage, phoneArray),
        .defaultValue.valueMessage = nil,
        .typeSpecific.className = GPBStringifySymbol(Person_PhoneNumber),
        .fieldOptions = NULL,
      },
    };
    static GPBMessageEnumDescription enums[] = {
      { .enumDescriptorFunc = Person_PhoneType_EnumDescriptor },
    };
    descriptor = [GPBDescriptor allocDescriptorForClass:[Person class]
                                              rootClass:[AddressbookRoot class]
                                                   file:AddressbookRoot_FileDescriptor()
                                                 fields:fields
                                             fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                                 oneofs:NULL
                                             oneofCount:0
                                                  enums:enums
                                              enumCount:sizeof(enums) / sizeof(GPBMessageEnumDescription)
                                                 ranges:NULL
                                             rangeCount:0
                                            storageSize:sizeof(Person_Storage)
                                             wireFormat:NO];
  }
  return descriptor;
}

@end

#pragma mark - Enum Person_PhoneType

GPBEnumDescriptor *Person_PhoneType_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static GPBMessageEnumValueDescription values[] = {
      { .name = "Mobile", .number = Person_PhoneType_Mobile },
      { .name = "Home", .number = Person_PhoneType_Home },
      { .name = "Work", .number = Person_PhoneType_Work },
    };
    descriptor = [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Person_PhoneType)
                                                   values:values
                                               valueCount:sizeof(values) / sizeof(GPBMessageEnumValueDescription)
                                             enumVerifier:Person_PhoneType_IsValidValue];
  }
  return descriptor;
}

BOOL Person_PhoneType_IsValidValue(int32_t value__) {
  switch (value__) {
    case Person_PhoneType_Mobile:
    case Person_PhoneType_Home:
    case Person_PhoneType_Work:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Person_PhoneNumber

@implementation Person_PhoneNumber

@dynamic hasNumber, number;
@dynamic hasType, type;

typedef struct Person_PhoneNumber_Storage {
  uint32_t _has_storage_[1];
  Person_PhoneType type;
  NSString *number;
} Person_PhoneNumber_Storage;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = NULL;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "number",
        .number = Person_PhoneNumber_FieldNumber_Number,
        .hasIndex = 0,
        .flags = GPBFieldRequired,
        .type = GPBTypeString,
        .offset = offsetof(Person_PhoneNumber_Storage, number),
        .defaultValue.valueString = nil,
        .typeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "type",
        .number = Person_PhoneNumber_FieldNumber_Type,
        .hasIndex = 1,
        .flags = GPBFieldOptional | GPBFieldHasDefaultValue | GPBFieldHasEnumDescriptor,
        .type = GPBTypeEnum,
        .offset = offsetof(Person_PhoneNumber_Storage, type),
        .defaultValue.valueEnum = Person_PhoneType_Home,
        .typeSpecific.enumDescFunc = Person_PhoneType_EnumDescriptor,
        .fieldOptions = NULL,
      },
    };
    descriptor = [GPBDescriptor allocDescriptorForClass:[Person_PhoneNumber class]
                                              rootClass:[AddressbookRoot class]
                                                   file:AddressbookRoot_FileDescriptor()
                                                 fields:fields
                                             fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                                 oneofs:NULL
                                             oneofCount:0
                                                  enums:NULL
                                              enumCount:0
                                                 ranges:NULL
                                             rangeCount:0
                                            storageSize:sizeof(Person_PhoneNumber_Storage)
                                             wireFormat:NO];
  }
  return descriptor;
}

@end

#pragma mark - AddressBook

@implementation AddressBook

@dynamic personArray;

typedef struct AddressBook_Storage {
  uint32_t _has_storage_[1];
  NSMutableArray *personArray;
} AddressBook_Storage;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = NULL;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "personArray",
        .number = AddressBook_FieldNumber_PersonArray,
        .hasIndex = GPBNoHasBit,
        .flags = GPBFieldRepeated,
        .type = GPBTypeMessage,
        .offset = offsetof(AddressBook_Storage, personArray),
        .defaultValue.valueMessage = nil,
        .typeSpecific.className = GPBStringifySymbol(Person),
        .fieldOptions = NULL,
      },
    };
    descriptor = [GPBDescriptor allocDescriptorForClass:[AddressBook class]
                                              rootClass:[AddressbookRoot class]
                                                   file:AddressbookRoot_FileDescriptor()
                                                 fields:fields
                                             fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                                 oneofs:NULL
                                             oneofCount:0
                                                  enums:NULL
                                              enumCount:0
                                                 ranges:NULL
                                             rangeCount:0
                                            storageSize:sizeof(AddressBook_Storage)
                                             wireFormat:NO];
  }
  return descriptor;
}

@end


// @@protoc_insertion_point(global_scope)
