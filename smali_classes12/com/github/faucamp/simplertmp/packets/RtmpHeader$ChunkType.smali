.class public final enum Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;
.super Ljava/lang/Enum;
.source "RtmpHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/faucamp/simplertmp/packets/RtmpHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChunkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

.field public static final enum TYPE_0_FULL:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

.field public static final enum TYPE_1_RELATIVE_LARGE:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

.field public static final enum TYPE_2_RELATIVE_TIMESTAMP_ONLY:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

.field public static final enum TYPE_3_RELATIVE_SINGLE_BYTE:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

.field private static final quickLookupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;",
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

    .line 170
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    const-string v3, "TYPE_0_FULL"

    invoke-direct {v2, v3, v1, v1}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_0_FULL:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    .line 172
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    const-string v3, "TYPE_1_RELATIVE_LARGE"

    invoke-direct {v2, v3, v4, v4}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_1_RELATIVE_LARGE:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    .line 174
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    const-string v3, "TYPE_2_RELATIVE_TIMESTAMP_ONLY"

    invoke-direct {v2, v3, v5, v5}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_2_RELATIVE_TIMESTAMP_ONLY:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    .line 176
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    const-string v3, "TYPE_3_RELATIVE_SINGLE_BYTE"

    invoke-direct {v2, v3, v6, v6}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_3_RELATIVE_SINGLE_BYTE:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    .line 167
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_0_FULL:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    aput-object v3, v2, v1

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_1_RELATIVE_LARGE:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_2_RELATIVE_TIMESTAMP_ONLY:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_3_RELATIVE_SINGLE_BYTE:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    aput-object v3, v2, v6

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->$VALUES:[Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    .line 180
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->quickLookupMap:Ljava/util/Map;

    .line 183
    invoke-static {}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->values()[Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    move-result-object v2

    array-length v3, v2

    .local v0, "messageTypId":Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 184
    sget-object v4, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->quickLookupMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->getValue()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
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
    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 189
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->value:B

    .line 190
    return-void
.end method

.method public static valueOf(B)Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;
    .locals 3
    .param p0, "chunkHeaderType"    # B

    .prologue
    .line 198
    sget-object v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->quickLookupMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->quickLookupMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    return-object v0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown chunk header type byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/github/faucamp/simplertmp/Util;->toHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    const-class v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    return-object v0
.end method

.method public static values()[Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->$VALUES:[Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    invoke-virtual {v0}, [Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .prologue
    .line 194
    iget-byte v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->value:B

    return v0
.end method
