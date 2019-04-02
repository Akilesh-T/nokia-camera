.class public final enum Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;
.super Ljava/lang/Enum;
.source "ChunkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

.field public static final enum TYPE_0_FULL:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

.field public static final enum TYPE_1_LARGE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

.field public static final enum TYPE_2_TIMESTAMP_ONLY:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

.field public static final enum TYPE_3_NO_BYTE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

.field private static final quickLookupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 20
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    const-string v3, "TYPE_0_FULL"

    invoke-direct {v2, v3, v1, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_0_FULL:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    .line 22
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    const-string v3, "TYPE_1_LARGE"

    invoke-direct {v2, v3, v4, v4}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_1_LARGE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    .line 24
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    const-string v3, "TYPE_2_TIMESTAMP_ONLY"

    invoke-direct {v2, v3, v5, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_2_TIMESTAMP_ONLY:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    .line 26
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    const-string v3, "TYPE_3_NO_BYTE"

    invoke-direct {v2, v3, v6, v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_3_NO_BYTE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    .line 18
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_0_FULL:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    aput-object v3, v2, v1

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_1_LARGE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_2_TIMESTAMP_ONLY:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_3_NO_BYTE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    aput-object v3, v2, v6

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->$VALUES:[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    .line 30
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->quickLookupMap:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->values()[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    move-result-object v2

    array-length v3, v2

    .local v0, "messageTypId":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 34
    sget-object v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->quickLookupMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->getValue()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "byteValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->value:B

    .line 40
    return-void
.end method

.method public static valueOf(B)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;
    .locals 3
    .param p0, "chunkHeaderType"    # B

    .prologue
    .line 48
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->quickLookupMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->quickLookupMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown chunk header type byte: "

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

.method public static valueOf(Ljava/lang/String;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    return-object v0
.end method

.method public static values()[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->$VALUES:[Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    invoke-virtual {v0}, [Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .prologue
    .line 44
    iget-byte v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->value:B

    return v0
.end method
