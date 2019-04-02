.class public final Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LensSdkParamsProto.java"

# interfaces
.implements Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParamsOrBuilder;


# annotations
.annotation build Lcom/google/protobuf/ProtoMessage;
    checkInitialized = {}
    messageSetWireFormat = false
    protoSyntax = .enum Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LensSdkParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$Builder;,
        Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite",
        "<",
        "Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;",
        "Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$Builder;",
        ">;",
        "Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParamsOrBuilder;"
    }
.end annotation


# static fields
.field public static final AGSA_VERSION_NAME_FIELD_NUMBER:I = 0x2

.field public static final AR_STICKERS_AVAILABILITY_STATUS_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

.field public static final LENS_AVAILABILITY_STATUS_FIELD_NUMBER:I = 0x3

.field public static final LENS_SDK_VERSION_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private agsaVersionName_:Ljava/lang/String;
    .annotation build Lcom/google/protobuf/ProtoField;
        fieldNumber = 0x2
        isEnforceUtf8 = false
        isRequired = false
        type = .enum Lcom/google/protobuf/FieldType;->STRING:Lcom/google/protobuf/FieldType;
    .end annotation

    .annotation build Lcom/google/protobuf/ProtoPresenceCheckedField;
        mask = 0x2
        presenceBitsId = 0x0
    .end annotation
.end field

.field private arStickersAvailabilityStatus_:I
    .annotation build Lcom/google/protobuf/ProtoField;
        fieldNumber = 0x4
        isRequired = false
        type = .enum Lcom/google/protobuf/FieldType;->ENUM:Lcom/google/protobuf/FieldType;
    .end annotation

    .annotation build Lcom/google/protobuf/ProtoPresenceCheckedField;
        mask = 0x8
        presenceBitsId = 0x0
    .end annotation
.end field

.field private bitField0_:I
    .annotation build Lcom/google/protobuf/ProtoPresenceBits;
        id = 0x0
    .end annotation
.end field

.field private lensAvailabilityStatus_:I
    .annotation build Lcom/google/protobuf/ProtoField;
        fieldNumber = 0x3
        isRequired = false
        type = .enum Lcom/google/protobuf/FieldType;->ENUM:Lcom/google/protobuf/FieldType;
    .end annotation

    .annotation build Lcom/google/protobuf/ProtoPresenceCheckedField;
        mask = 0x4
        presenceBitsId = 0x0
    .end annotation
.end field

.field private lensSdkVersion_:Ljava/lang/String;
    .annotation build Lcom/google/protobuf/ProtoField;
        fieldNumber = 0x1
        isEnforceUtf8 = false
        isRequired = false
        type = .enum Lcom/google/protobuf/FieldType;->STRING:Lcom/google/protobuf/FieldType;
    .end annotation

    .annotation build Lcom/google/protobuf/ProtoPresenceCheckedField;
        mask = 0x1
        presenceBitsId = 0x0
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 917
    new-instance v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-direct {v0}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;-><init>()V

    sput-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    .line 921
    const-class v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    sget-object v1, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 923
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 101
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->lensSdkVersion_:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->agsaVersionName_:Ljava/lang/String;

    .line 104
    iput v1, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus_:I

    .line 105
    iput v1, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->arStickersAvailabilityStatus_:I

    .line 106
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->setLensSdkVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->clearArStickersAvailabilityStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->clearLensSdkVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->setLensSdkVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->setAgsaVersionName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->clearAgsaVersionName()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->setAgsaVersionNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .param p1, "x1"    # Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->setLensAvailabilityStatus(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->clearLensAvailabilityStatus()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .param p1, "x1"    # Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->setArStickersAvailabilityStatus(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;)V

    return-void
.end method

.method private clearAgsaVersionName()V
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    .line 445
    invoke-static {}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->getDefaultInstance()Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->getAgsaVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->agsaVersionName_:Ljava/lang/String;

    .line 446
    return-void
.end method

.method private clearArStickersAvailabilityStatus()V
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    .line 544
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->arStickersAvailabilityStatus_:I

    .line 545
    return-void
.end method

.method private clearLensAvailabilityStatus()V
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    .line 502
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus_:I

    .line 503
    return-void
.end method

.method private clearLensSdkVersion()V
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    .line 359
    invoke-static {}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->getDefaultInstance()Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->getLensSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->lensSdkVersion_:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .locals 1

    .prologue
    .line 925
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$Builder;
    .locals 1

    .prologue
    .line 622
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-virtual {v0}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    .prologue
    .line 625
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-static {v0, p0}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 563
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 570
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 550
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 557
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 575
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 582
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 931
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-virtual {v0}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAgsaVersionName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 430
    if-nez p1, :cond_0

    .line 431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 433
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    .line 434
    iput-object p1, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->agsaVersionName_:Ljava/lang/String;

    .line 435
    return-void
.end method

.method private setAgsaVersionNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 456
    if-nez p1, :cond_0

    .line 457
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 459
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    .line 460
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->agsaVersionName_:Ljava/lang/String;

    .line 461
    return-void
.end method

.method private setArStickersAvailabilityStatus(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;)V
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;

    .prologue
    .line 533
    if-nez p1, :cond_0

    .line 534
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 536
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    .line 537
    invoke-virtual {p1}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->arStickersAvailabilityStatus_:I

    .line 538
    return-void
.end method

.method private setLensAvailabilityStatus(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;)V
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;

    .prologue
    .line 491
    if-nez p1, :cond_0

    .line 492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 494
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    .line 495
    invoke-virtual {p1}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus_:I

    .line 496
    return-void
.end method

.method private setLensSdkVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 347
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    .line 348
    iput-object p1, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->lensSdkVersion_:Ljava/lang/String;

    .line 349
    return-void
.end method

.method private setLensSdkVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 370
    if-nez p1, :cond_0

    .line 371
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 373
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    .line 374
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->lensSdkVersion_:Ljava/lang/String;

    .line 375
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 862
    sget-object v5, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 908
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 864
    :pswitch_0
    new-instance v2, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-direct {v2}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;-><init>()V

    .line 905
    :cond_0
    :goto_0
    return-object v2

    .line 867
    :pswitch_1
    new-instance v2, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$Builder;

    invoke-direct {v2, v4}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$Builder;-><init>(Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$1;)V

    goto :goto_0

    .line 870
    :pswitch_2
    const/4 v4, 0x7

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "bitField0_"

    aput-object v5, v1, v4

    const-string v4, "lensSdkVersion_"

    aput-object v4, v1, v7

    const/4 v4, 0x2

    const-string v5, "agsaVersionName_"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "lensAvailabilityStatus_"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    .line 875
    invoke-static {}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;->internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "arStickersAvailabilityStatus_"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    .line 877
    invoke-static {}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;->internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v5

    aput-object v5, v1, v4

    .line 879
    .local v1, "objects":[Ljava/lang/Object;
    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0008\u0001\u0003\u000c\u0002\u0004\u000c\u0003"

    .line 882
    .local v0, "info":Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-static {v4, v0, v1}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 886
    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "objects":[Ljava/lang/Object;
    :pswitch_3
    sget-object v2, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    goto :goto_0

    .line 889
    :pswitch_4
    sget-object v2, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->PARSER:Lcom/google/protobuf/Parser;

    .line 890
    .local v2, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;>;"
    if-nez v2, :cond_0

    .line 891
    const-class v5, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    monitor-enter v5

    .line 892
    :try_start_0
    sget-object v2, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->PARSER:Lcom/google/protobuf/Parser;

    .line 893
    if-nez v2, :cond_1

    .line 894
    new-instance v3, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v4, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->DEFAULT_INSTANCE:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;

    invoke-direct {v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    .end local v2    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;>;"
    .local v3, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;>;"
    :try_start_1
    sput-object v3, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->PARSER:Lcom/google/protobuf/Parser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 897
    .end local v3    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;>;"
    .restart local v2    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;>;"
    :cond_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 902
    .end local v2    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;>;"
    :pswitch_5
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto :goto_0

    :pswitch_6
    move-object v2, v4

    .line 905
    goto :goto_0

    .line 897
    .restart local v3    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;>;"
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;>;"
    .restart local v2    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;>;"
    goto :goto_1

    .line 862
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getAgsaVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->agsaVersionName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAgsaVersionNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->agsaVersionName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getArStickersAvailabilityStatus()Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;
    .locals 2

    .prologue
    .line 526
    iget v1, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->arStickersAvailabilityStatus_:I

    invoke-static {v1}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;->forNumber(I)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;

    move-result-object v0

    .line 527
    .local v0, "result":Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;->LENS_AVAILABILITY_UNKNOWN:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;

    .end local v0    # "result":Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;
    :cond_0
    return-object v0
.end method

.method public getLensAvailabilityStatus()Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;
    .locals 2

    .prologue
    .line 484
    iget v1, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus_:I

    invoke-static {v1}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;->forNumber(I)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;

    move-result-object v0

    .line 485
    .local v0, "result":Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;->LENS_AVAILABILITY_UNKNOWN:Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;

    .end local v0    # "result":Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;
    :cond_0
    return-object v0
.end method

.method public getLensSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->lensSdkVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getLensSdkVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->lensSdkVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAgsaVersionName()Z
    .locals 2

    .prologue
    .line 396
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasArStickersAvailabilityStatus()Z
    .locals 2

    .prologue
    .line 519
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLensAvailabilityStatus()Z
    .locals 2

    .prologue
    .line 477
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLensSdkVersion()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 310
    iget v1, p0, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
