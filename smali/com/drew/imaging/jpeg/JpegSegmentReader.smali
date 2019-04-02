.class public Lcom/drew/imaging/jpeg/JpegSegmentReader;
.super Ljava/lang/Object;
.source "JpegSegmentReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MARKER_EOI:B = -0x27t

.field private static final SEGMENT_IDENTIFIER:B = -0x1t

.field private static final SEGMENT_SOS:B = -0x26t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/drew/imaging/jpeg/JpegSegmentReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not intended for instantiation."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readSegments(Lcom/drew/lang/SequentialReader;Ljava/lang/Iterable;)Lcom/drew/imaging/jpeg/JpegSegmentData;
    .locals 11
    .param p0, "reader"    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/drew/lang/SequentialReader;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ">;)",
            "Lcom/drew/imaging/jpeg/JpegSegmentData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "segmentTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/drew/imaging/jpeg/JpegSegmentType;>;"
    const/4 v10, -0x1

    .line 97
    sget-boolean v8, Lcom/drew/imaging/jpeg/JpegSegmentReader;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->isMotorolaByteOrder()Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v1

    .line 101
    .local v1, "magicNumber":I
    const v8, 0xffd8

    if-eq v1, v8, :cond_1

    .line 102
    new-instance v8, Lcom/drew/imaging/jpeg/JpegProcessingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "JPEG data is expected to begin with 0xFFD8 (\u00ff\u00d8) not 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/drew/imaging/jpeg/JpegProcessingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 105
    :cond_1
    const/4 v7, 0x0

    .line 106
    .local v7, "segmentTypeBytes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Byte;>;"
    if-eqz p1, :cond_2

    .line 107
    new-instance v7, Ljava/util/HashSet;

    .end local v7    # "segmentTypeBytes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Byte;>;"
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 108
    .restart local v7    # "segmentTypeBytes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Byte;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 109
    .local v6, "segmentType":Lcom/drew/imaging/jpeg/JpegSegmentType;
    iget-byte v8, v6, Lcom/drew/imaging/jpeg/JpegSegmentType;->byteValue:B

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v6    # "segmentType":Lcom/drew/imaging/jpeg/JpegSegmentType;
    :cond_2
    new-instance v3, Lcom/drew/imaging/jpeg/JpegSegmentData;

    invoke-direct {v3}, Lcom/drew/imaging/jpeg/JpegSegmentData;-><init>()V

    .line 119
    .local v3, "segmentData":Lcom/drew/imaging/jpeg/JpegSegmentData;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v4

    .line 120
    .local v4, "segmentIdentifier":B
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v6

    .line 123
    .local v6, "segmentType":B
    :goto_2
    if-ne v4, v10, :cond_4

    if-eq v6, v10, :cond_4

    if-nez v6, :cond_5

    .line 124
    :cond_4
    move v4, v6

    .line 125
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v6

    goto :goto_2

    .line 128
    :cond_5
    const/16 v8, -0x26

    if-ne v6, v8, :cond_7

    .line 157
    :cond_6
    :goto_3
    return-object v3

    .line 135
    :cond_7
    const/16 v8, -0x27

    if-eq v6, v8, :cond_6

    .line 141
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v5

    .line 144
    .local v5, "segmentLength":I
    add-int/lit8 v5, v5, -0x2

    .line 146
    if-gez v5, :cond_8

    .line 147
    new-instance v8, Lcom/drew/imaging/jpeg/JpegProcessingException;

    const-string v9, "JPEG segment size would be less than zero"

    invoke-direct {v8, v9}, Lcom/drew/imaging/jpeg/JpegProcessingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 150
    :cond_8
    if-eqz v7, :cond_9

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 151
    :cond_9
    invoke-virtual {p0, v5}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v2

    .line 152
    .local v2, "segmentBytes":[B
    sget-boolean v8, Lcom/drew/imaging/jpeg/JpegSegmentReader;->$assertionsDisabled:Z

    if-nez v8, :cond_a

    array-length v8, v2

    if-eq v5, v8, :cond_a

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 153
    :cond_a
    invoke-virtual {v3, v6, v2}, Lcom/drew/imaging/jpeg/JpegSegmentData;->addSegment(B[B)V

    goto :goto_1

    .line 156
    .end local v2    # "segmentBytes":[B
    :cond_b
    int-to-long v8, v5

    invoke-virtual {p0, v8, v9}, Lcom/drew/lang/SequentialReader;->trySkip(J)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_3
.end method

.method public static readSegments(Ljava/io/File;Ljava/lang/Iterable;)Lcom/drew/imaging/jpeg/JpegSegmentData;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ">;)",
            "Lcom/drew/imaging/jpeg/JpegSegmentData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "segmentTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/drew/imaging/jpeg/JpegSegmentType;>;"
    const/4 v0, 0x0

    .line 74
    .local v0, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v0    # "stream":Ljava/io/FileInputStream;
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Lcom/drew/lang/StreamReader;

    invoke-direct {v2, v1}, Lcom/drew/lang/StreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, p1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegments(Lcom/drew/lang/SequentialReader;Ljava/lang/Iterable;)Lcom/drew/imaging/jpeg/JpegSegmentData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 77
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_0
    return-object v2

    .line 77
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v2

    .line 77
    .end local v0    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "stream":Ljava/io/FileInputStream;
    goto :goto_0
.end method
