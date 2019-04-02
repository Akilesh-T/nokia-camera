.class public Lcom/drew/metadata/jpeg/JpegDhtReader;
.super Ljava/lang/Object;
.source "JpegDhtReader.java"

# interfaces
.implements Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBytes(Lcom/drew/lang/SequentialReader;I)[B
    .locals 7
    .param p1, "reader"    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-array v1, p2, [B

    .line 89
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 90
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    .line 91
    .local v0, "b":B
    and-int/lit16 v4, v0, 0xff

    const/16 v5, 0xff

    if-ne v4, v5, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    .line 93
    .local v3, "stuffing":B
    if-eqz v3, :cond_0

    .line 94
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Marker "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/drew/imaging/jpeg/JpegSegmentType;->fromByte(B)Lcom/drew/imaging/jpeg/JpegSegmentType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found inside DHT segment"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 97
    .end local v3    # "stuffing":B
    :cond_0
    aput-byte v0, v1, v2

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "b":B
    :cond_1
    return-object v1
.end method


# virtual methods
.method public extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V
    .locals 15
    .param p1, "reader"    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 60
    const-class v13, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v3

    check-cast v3, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;

    .line 61
    .local v3, "directory":Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;
    if-nez v3, :cond_0

    .line 62
    new-instance v3, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;

    .end local v3    # "directory":Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;
    invoke-direct {v3}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;-><init>()V

    .line 63
    .restart local v3    # "directory":Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 67
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->available()I

    move-result v13

    if-lez v13, :cond_2

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v4

    .line 69
    .local v4, "header":B
    and-int/lit16 v13, v4, 0xf0

    shr-int/lit8 v13, v13, 0x4

    invoke-static {v13}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;->typeOf(I)Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;

    move-result-object v9

    .line 70
    .local v9, "tableClass":Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;
    and-int/lit8 v10, v4, 0xf

    .line 72
    .local v10, "tableDestinationId":I
    const/16 v13, 0x10

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13}, Lcom/drew/metadata/jpeg/JpegDhtReader;->getBytes(Lcom/drew/lang/SequentialReader;I)[B

    move-result-object v6

    .line 73
    .local v6, "lBytes":[B
    const/4 v12, 0x0

    .line 74
    .local v12, "vCount":I
    move-object v1, v6

    .local v1, "arr$":[B
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_1

    aget-byte v2, v1, v5

    .line 75
    .local v2, "b":B
    and-int/lit16 v13, v2, 0xff

    add-int/2addr v12, v13

    .line 74
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 77
    .end local v2    # "b":B
    :cond_1
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12}, Lcom/drew/metadata/jpeg/JpegDhtReader;->getBytes(Lcom/drew/lang/SequentialReader;I)[B

    move-result-object v11

    .line 78
    .local v11, "vBytes":[B
    invoke-virtual {v3}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->getTables()Ljava/util/List;

    move-result-object v13

    new-instance v14, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;

    invoke-direct {v14, v9, v10, v6, v11}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;-><init>(Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;I[B[B)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v1    # "arr$":[B
    .end local v4    # "header":B
    .end local v5    # "i$":I
    .end local v6    # "lBytes":[B
    .end local v7    # "len$":I
    .end local v9    # "tableClass":Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;
    .end local v10    # "tableDestinationId":I
    .end local v11    # "vBytes":[B
    .end local v12    # "vCount":I
    :catch_0
    move-exception v8

    .line 81
    .local v8, "me":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->addError(Ljava/lang/String;)V

    .line 84
    .end local v8    # "me":Ljava/io/IOException;
    :cond_2
    const/4 v13, 0x1

    invoke-virtual {v3}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->getTables()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v3, v13, v14}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->setInt(II)V

    .line 85
    return-void
.end method

.method public getSegmentTypes()Ljava/lang/Iterable;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->DHT:Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readJpegSegments(Ljava/lang/Iterable;Lcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V
    .locals 3
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "segmentType"    # Lcom/drew/imaging/jpeg/JpegSegmentType;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<[B>;",
            "Lcom/drew/metadata/Metadata;",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "segments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 50
    .local v1, "segmentBytes":[B
    new-instance v2, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v2, v1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    invoke-virtual {p0, v2, p2}, Lcom/drew/metadata/jpeg/JpegDhtReader;->extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V

    goto :goto_0

    .line 52
    .end local v1    # "segmentBytes":[B
    :cond_0
    return-void
.end method
