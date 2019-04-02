.class public Lcom/drew/metadata/photoshop/PhotoshopReader;
.super Ljava/lang/Object;
.source "PhotoshopReader.java"

# interfaces
.implements Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;


# static fields
.field private static final JPEG_SEGMENT_PREAMBLE:Ljava/lang/String; = "Photoshop 3.0"
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(Lcom/drew/lang/SequentialReader;ILcom/drew/metadata/Metadata;)V
    .locals 16
    .param p1, "reader"    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "length"    # I
    .param p3, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 75
    new-instance v8, Lcom/drew/metadata/photoshop/PhotoshopDirectory;

    invoke-direct {v8}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;-><init>()V

    .line 76
    .local v8, "directory":Lcom/drew/metadata/photoshop/PhotoshopDirectory;
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 88
    const/4 v11, 0x0

    .line 89
    .local v11, "pos":I
    :cond_0
    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_2

    .line 92
    const/4 v3, 0x4

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 93
    .local v12, "signature":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x4

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v14

    .line 97
    .local v14, "tagType":I
    add-int/lit8 v11, v11, 0x2

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v9

    .line 101
    .local v9, "descriptionLength":S
    add-int/lit8 v11, v11, 0x1

    .line 103
    if-ltz v9, :cond_1

    add-int v3, v9, v11

    move/from16 v0, p2

    if-le v3, v0, :cond_3

    .line 104
    :cond_1
    new-instance v3, Lcom/drew/imaging/ImageProcessingException;

    const-string v4, "Invalid string length"

    invoke-direct {v3, v4}, Lcom/drew/imaging/ImageProcessingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v9    # "descriptionLength":S
    .end local v12    # "signature":Ljava/lang/String;
    .end local v14    # "tagType":I
    :catch_0
    move-exception v10

    .line 142
    .local v10, "ex":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->addError(Ljava/lang/String;)V

    .line 146
    .end local v10    # "ex":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 106
    .restart local v9    # "descriptionLength":S
    .restart local v12    # "signature":Ljava/lang/String;
    .restart local v14    # "tagType":I
    :cond_3
    int-to-long v4, v9

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 107
    add-int/2addr v11, v9

    .line 109
    rem-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_4

    .line 110
    const-wide/16 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 111
    add-int/lit8 v11, v11, 0x1

    .line 115
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v2

    .line 116
    .local v2, "byteCount":I
    add-int/lit8 v11, v11, 0x4

    .line 118
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v13

    .line 119
    .local v13, "tagBytes":[B
    add-int/2addr v11, v2

    .line 121
    rem-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_5

    .line 122
    const-wide/16 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 123
    add-int/lit8 v11, v11, 0x1

    .line 126
    :cond_5
    const-string v3, "8BIM"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const/16 v3, 0x404

    if-ne v14, v3, :cond_6

    .line 128
    new-instance v3, Lcom/drew/metadata/iptc/IptcReader;

    invoke-direct {v3}, Lcom/drew/metadata/iptc/IptcReader;-><init>()V

    new-instance v4, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v4, v13}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    array-length v5, v13

    int-to-long v6, v5

    move-object/from16 v5, p3

    invoke-virtual/range {v3 .. v8}, Lcom/drew/metadata/iptc/IptcReader;->extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;JLcom/drew/metadata/Directory;)V

    .line 138
    :goto_1
    const/16 v3, 0xfa0

    if-lt v14, v3, :cond_0

    const/16 v3, 0x1387

    if-gt v14, v3, :cond_0

    .line 139
    sget-object v3, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->_tagNameMap:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Plug-in %d Data"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit16 v15, v14, -0xfa0

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 129
    :cond_6
    const/16 v3, 0x40f

    if-ne v14, v3, :cond_7

    .line 130
    new-instance v3, Lcom/drew/metadata/icc/IccReader;

    invoke-direct {v3}, Lcom/drew/metadata/icc/IccReader;-><init>()V

    new-instance v4, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v4, v13}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0, v8}, Lcom/drew/metadata/icc/IccReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    goto :goto_1

    .line 131
    :cond_7
    const/16 v3, 0x422

    if-eq v14, v3, :cond_8

    const/16 v3, 0x423

    if-ne v14, v3, :cond_9

    .line 132
    :cond_8
    new-instance v3, Lcom/drew/metadata/exif/ExifReader;

    invoke-direct {v3}, Lcom/drew/metadata/exif/ExifReader;-><init>()V

    new-instance v4, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v4, v13}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0, v5, v8}, Lcom/drew/metadata/exif/ExifReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;ILcom/drew/metadata/Directory;)V

    goto :goto_1

    .line 133
    :cond_9
    const/16 v3, 0x424

    if-ne v14, v3, :cond_a

    .line 134
    new-instance v3, Lcom/drew/metadata/xmp/XmpReader;

    invoke-direct {v3}, Lcom/drew/metadata/xmp/XmpReader;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v13, v0, v8}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    goto :goto_1

    .line 136
    :cond_a
    invoke-virtual {v8, v14, v13}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->setByteArray(I[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
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
    .line 54
    sget-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPD:Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readJpegSegments(Ljava/lang/Iterable;Lcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V
    .locals 6
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
    .line 59
    .local p1, "segments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    const-string v3, "Photoshop 3.0"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 61
    .local v1, "preambleLength":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 63
    .local v2, "segmentBytes":[B
    array-length v3, v2

    add-int/lit8 v4, v1, 0x1

    if-lt v3, v4, :cond_0

    const-string v3, "Photoshop 3.0"

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    new-instance v3, Lcom/drew/lang/SequentialByteArrayReader;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v3, v2, v4}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([BI)V

    array-length v4, v2

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4, p2}, Lcom/drew/metadata/photoshop/PhotoshopReader;->extract(Lcom/drew/lang/SequentialReader;ILcom/drew/metadata/Metadata;)V

    goto :goto_0

    .line 71
    .end local v2    # "segmentBytes":[B
    :cond_1
    return-void
.end method
