.class public Lcom/drew/imaging/png/PngChunkReader;
.super Ljava/lang/Object;
.source "PngChunkReader.java"


# static fields
.field private static final PNG_SIGNATURE_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/drew/imaging/png/PngChunkReader;->PNG_SIGNATURE_BYTES:[B

    return-void

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(Lcom/drew/lang/SequentialReader;Ljava/util/Set;)Ljava/lang/Iterable;
    .locals 13
    .param p1, "reader"    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/drew/lang/SequentialReader;",
            "Ljava/util/Set",
            "<",
            "Lcom/drew/imaging/png/PngChunkType;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/drew/imaging/png/PngChunk;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "desiredChunkTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/drew/imaging/png/PngChunkType;>;"
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lcom/drew/lang/SequentialReader;->setMotorolaByteOrder(Z)V

    .line 75
    sget-object v8, Lcom/drew/imaging/png/PngChunkReader;->PNG_SIGNATURE_BYTES:[B

    sget-object v9, Lcom/drew/imaging/png/PngChunkReader;->PNG_SIGNATURE_BYTES:[B

    array-length v9, v9

    invoke-virtual {p1, v9}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_0

    .line 76
    new-instance v8, Lcom/drew/imaging/png/PngProcessingException;

    const-string v9, "PNG signature mismatch"

    invoke-direct {v8, v9}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 79
    :cond_0
    const/4 v5, 0x0

    .line 80
    .local v5, "seenImageHeader":Z
    const/4 v6, 0x0

    .line 82
    .local v6, "seenImageTrailer":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v3, "chunks":Ljava/util/List;, "Ljava/util/List<Lcom/drew/imaging/png/PngChunk;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 85
    .local v4, "seenChunkTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/drew/imaging/png/PngChunkType;>;"
    :goto_0
    if-nez v6, :cond_8

    .line 87
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v1

    .line 89
    .local v1, "chunkDataLength":I
    new-instance v2, Lcom/drew/imaging/png/PngChunkType;

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/drew/imaging/png/PngChunkType;-><init>([B)V

    .line 91
    .local v2, "chunkType":Lcom/drew/imaging/png/PngChunkType;
    if-eqz p2, :cond_1

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    const/4 v7, 0x1

    .line 93
    .local v7, "willStoreChunk":Z
    :goto_1
    invoke-virtual {p1, v1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v0

    .line 97
    .local v0, "chunkData":[B
    const-wide/16 v8, 0x4

    invoke-virtual {p1, v8, v9}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 99
    if-eqz v7, :cond_3

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Lcom/drew/imaging/png/PngChunkType;->areMultipleAllowed()Z

    move-result v8

    if-nez v8, :cond_3

    .line 100
    new-instance v8, Lcom/drew/imaging/png/PngProcessingException;

    const-string v9, "Observed multiple instances of PNG chunk \'%s\', for which multiples are not allowed"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 91
    .end local v0    # "chunkData":[B
    .end local v7    # "willStoreChunk":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 103
    .restart local v0    # "chunkData":[B
    .restart local v7    # "willStoreChunk":Z
    :cond_3
    sget-object v8, Lcom/drew/imaging/png/PngChunkType;->IHDR:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v2, v8}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 104
    const/4 v5, 0x1

    .line 109
    :cond_4
    sget-object v8, Lcom/drew/imaging/png/PngChunkType;->IEND:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v2, v8}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 110
    const/4 v6, 0x1

    .line 113
    :cond_5
    if-eqz v7, :cond_6

    .line 114
    new-instance v8, Lcom/drew/imaging/png/PngChunk;

    invoke-direct {v8, v2, v0}, Lcom/drew/imaging/png/PngChunk;-><init>(Lcom/drew/imaging/png/PngChunkType;[B)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_6
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_7
    if-nez v5, :cond_4

    .line 106
    new-instance v8, Lcom/drew/imaging/png/PngProcessingException;

    const-string v9, "First chunk should be \'%s\', but \'%s\' was observed"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/drew/imaging/png/PngChunkType;->IHDR:Lcom/drew/imaging/png/PngChunkType;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 120
    .end local v0    # "chunkData":[B
    .end local v1    # "chunkDataLength":I
    .end local v2    # "chunkType":Lcom/drew/imaging/png/PngChunkType;
    .end local v7    # "willStoreChunk":Z
    :cond_8
    return-object v3
.end method
