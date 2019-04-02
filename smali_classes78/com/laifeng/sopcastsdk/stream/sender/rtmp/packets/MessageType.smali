.class public final enum Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field public static final enum ABORT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field public static final enum ACKNOWLEDGEMENT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field public static final enum AGGREGATE_MESSAGE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field public static final enum AUDIO:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field public static final enum COMMAND_AMF0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field public static final enum COMMAND_AMF3:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field public static final enum DATA_AMF0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field public static final enum DATA_AMF3:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field public static final enum SET_CHUNK_SIZE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field public static final enum SET_PEER_BANDWIDTH:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field public static final enum SHARED_OBJECT_AMF0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field public static final enum SHARED_OBJECT_AMF3:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field public static final enum USER_CONTROL_MESSAGE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field public static final enum VIDEO:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field public static final enum WINDOW_ACKNOWLEDGEMENT_SIZE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field private static final quickLookupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 25
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    const-string v3, "SET_CHUNK_SIZE"

    invoke-direct {v2, v3, v1, v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->SET_CHUNK_SIZE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 32
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    const-string v3, "ABORT"

    invoke-direct {v2, v3, v6, v7}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->ABORT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 40
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    const-string v3, "ACKNOWLEDGEMENT"

    invoke-direct {v2, v3, v7, v8}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->ACKNOWLEDGEMENT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 48
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    const-string v3, "USER_CONTROL_MESSAGE"

    invoke-direct {v2, v3, v8, v9}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->USER_CONTROL_MESSAGE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 55
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    const-string v3, "WINDOW_ACKNOWLEDGEMENT_SIZE"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v9, v4}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->WINDOW_ACKNOWLEDGEMENT_SIZE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 63
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    const-string v3, "SET_PEER_BANDWIDTH"

    const/4 v4, 0x5

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->SET_PEER_BANDWIDTH:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 68
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    const-string v3, "AUDIO"

    const/4 v4, 0x6

    const/16 v5, 0x8

    invoke-direct {v2, v3, v4, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->AUDIO:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 73
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    const-string v3, "VIDEO"

    const/4 v4, 0x7

    const/16 v5, 0x9

    invoke-direct {v2, v3, v4, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->VIDEO:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 81
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    const-string v3, "DATA_AMF3"

    const/16 v4, 0x8

    const/16 v5, 0xf

    invoke-direct {v2, v3, v4, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->DATA_AMF3:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 89
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    const-string v3, "SHARED_OBJECT_AMF3"

    const/16 v4, 0x9

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->SHARED_OBJECT_AMF3:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 98
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    const-string v3, "COMMAND_AMF3"

    const/16 v4, 0xa

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->COMMAND_AMF3:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 106
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    const-string v3, "DATA_AMF0"

    const/16 v4, 0xb

    const/16 v5, 0x12

    invoke-direct {v2, v3, v4, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->DATA_AMF0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 115
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    const-string v3, "COMMAND_AMF0"

    const/16 v4, 0xc

    const/16 v5, 0x14

    invoke-direct {v2, v3, v4, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->COMMAND_AMF0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 123
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    const-string v3, "SHARED_OBJECT_AMF0"

    const/16 v4, 0xd

    const/16 v5, 0x13

    invoke-direct {v2, v3, v4, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->SHARED_OBJECT_AMF0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 128
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    const-string v3, "AGGREGATE_MESSAGE"

    const/16 v4, 0xe

    const/16 v5, 0x16

    invoke-direct {v2, v3, v4, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->AGGREGATE_MESSAGE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 20
    const/16 v2, 0xf

    new-array v2, v2, [Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->SET_CHUNK_SIZE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    aput-object v3, v2, v1

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->ABORT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->ACKNOWLEDGEMENT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->USER_CONTROL_MESSAGE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    aput-object v3, v2, v8

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->WINDOW_ACKNOWLEDGEMENT_SIZE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->SET_PEER_BANDWIDTH:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->AUDIO:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->VIDEO:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->DATA_AMF3:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->SHARED_OBJECT_AMF3:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->COMMAND_AMF3:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->DATA_AMF0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->COMMAND_AMF0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->SHARED_OBJECT_AMF0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->AGGREGATE_MESSAGE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    aput-object v4, v2, v3

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->$VALUES:[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 130
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->quickLookupMap:Ljava/util/Map;

    .line 133
    invoke-static {}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->values()[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    move-result-object v2

    array-length v3, v2

    .local v0, "messageTypId":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 134
    sget-object v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->quickLookupMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->getValue()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->value:B

    .line 140
    return-void
.end method

.method public static valueOf(B)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;
    .locals 3
    .param p0, "messageTypeId"    # B

    .prologue
    .line 148
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->quickLookupMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->quickLookupMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->toHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    return-object v0
.end method

.method public static values()[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->$VALUES:[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    invoke-virtual {v0}, [Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .prologue
    .line 144
    iget-byte v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->value:B

    return v0
.end method
