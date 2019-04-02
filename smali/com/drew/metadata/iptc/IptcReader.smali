.class public Lcom/drew/metadata/iptc/IptcReader;
.super Ljava/lang/Object;
.source "IptcReader.java"

# interfaces
.implements Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;


# static fields
.field private static final IptcMarkerByte:B = 0x1ct


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processTag(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Directory;III)V
    .locals 15
    .param p1, "reader"    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "directory"    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "directoryType"    # I
    .param p4, "tagType"    # I
    .param p5, "tagByteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    shl-int/lit8 v12, p3, 0x8

    or-int v11, p4, v12

    .line 164
    .local v11, "tagIdentifier":I
    if-nez p5, :cond_0

    .line 165
    const-string v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Lcom/drew/metadata/Directory;->setString(ILjava/lang/String;)V

    .line 236
    :goto_0
    return-void

    .line 169
    :cond_0
    sparse-switch v11, :sswitch_data_0

    .line 203
    :cond_1
    const/16 v12, 0x15a

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "charSetName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 206
    .local v5, "charset":Ljava/nio/charset/Charset;
    if-eqz v4, :cond_2

    .line 207
    :try_start_0
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 212
    :cond_2
    :goto_1
    if-eqz v4, :cond_4

    .line 213
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v5}, Lcom/drew/lang/SequentialReader;->getStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object v10

    .line 220
    .local v10, "string":Lcom/drew/metadata/StringValue;
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 222
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/drew/metadata/Directory;->getStringValueArray(I)[Lcom/drew/metadata/StringValue;

    move-result-object v8

    .line 224
    .local v8, "oldStrings":[Lcom/drew/metadata/StringValue;
    if-nez v8, :cond_6

    .line 226
    const/4 v12, 0x1

    new-array v7, v12, [Lcom/drew/metadata/StringValue;

    .line 231
    .local v7, "newStrings":[Lcom/drew/metadata/StringValue;
    :goto_3
    array-length v12, v7

    add-int/lit8 v12, v12, -0x1

    aput-object v10, v7, v12

    .line 232
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v7}, Lcom/drew/metadata/Directory;->setStringValueArray(I[Lcom/drew/metadata/StringValue;)V

    goto :goto_0

    .line 171
    .end local v4    # "charSetName":Ljava/lang/String;
    .end local v5    # "charset":Ljava/nio/charset/Charset;
    .end local v7    # "newStrings":[Lcom/drew/metadata/StringValue;
    .end local v8    # "oldStrings":[Lcom/drew/metadata/StringValue;
    .end local v10    # "string":Lcom/drew/metadata/StringValue;
    :sswitch_0
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v2

    .line 172
    .local v2, "bytes":[B
    invoke-static {v2}, Lcom/drew/metadata/iptc/Iso2022Converter;->convertISO2022CharsetToJavaCharset([B)Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, "charsetName":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 175
    new-instance v6, Ljava/lang/String;

    .end local v6    # "charsetName":Ljava/lang/String;
    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 177
    .restart local v6    # "charsetName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v6}, Lcom/drew/metadata/Directory;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 185
    .end local v2    # "bytes":[B
    .end local v6    # "charsetName":Ljava/lang/String;
    :sswitch_1
    const/4 v12, 0x2

    move/from16 v0, p5

    if-lt v0, v12, :cond_1

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v9

    .line 187
    .local v9, "shortValue":I
    add-int/lit8 v12, p5, -0x2

    int-to-long v12, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 188
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v9}, Lcom/drew/metadata/Directory;->setInt(II)V

    goto :goto_0

    .line 194
    .end local v9    # "shortValue":I
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Lcom/drew/metadata/Directory;->setInt(II)V

    .line 195
    add-int/lit8 v12, p5, -0x1

    int-to-long v12, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/drew/lang/SequentialReader;->skip(J)V

    goto :goto_0

    .line 215
    .restart local v4    # "charSetName":Ljava/lang/String;
    .restart local v5    # "charset":Ljava/nio/charset/Charset;
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v2

    .line 216
    .restart local v2    # "bytes":[B
    invoke-static {v2}, Lcom/drew/metadata/iptc/Iso2022Converter;->guessCharSet([B)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 217
    .local v3, "charSet":Ljava/nio/charset/Charset;
    if-eqz v3, :cond_5

    new-instance v10, Lcom/drew/metadata/StringValue;

    invoke-direct {v10, v2, v3}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    .restart local v10    # "string":Lcom/drew/metadata/StringValue;
    :goto_4
    goto :goto_2

    .end local v10    # "string":Lcom/drew/metadata/StringValue;
    :cond_5
    new-instance v10, Lcom/drew/metadata/StringValue;

    const/4 v12, 0x0

    invoke-direct {v10, v2, v12}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_4

    .line 228
    .end local v2    # "bytes":[B
    .end local v3    # "charSet":Ljava/nio/charset/Charset;
    .restart local v8    # "oldStrings":[Lcom/drew/metadata/StringValue;
    .restart local v10    # "string":Lcom/drew/metadata/StringValue;
    :cond_6
    array-length v12, v8

    add-int/lit8 v12, v12, 0x1

    new-array v7, v12, [Lcom/drew/metadata/StringValue;

    .line 229
    .restart local v7    # "newStrings":[Lcom/drew/metadata/StringValue;
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v8

    invoke-static {v8, v12, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 234
    .end local v7    # "newStrings":[Lcom/drew/metadata/StringValue;
    .end local v8    # "oldStrings":[Lcom/drew/metadata/StringValue;
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v10}, Lcom/drew/metadata/Directory;->setStringValue(ILcom/drew/metadata/StringValue;)V

    goto/16 :goto_0

    .line 208
    .end local v10    # "string":Lcom/drew/metadata/StringValue;
    :catch_0
    move-exception v12

    goto/16 :goto_1

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_1
        0x116 -> :sswitch_1
        0x15a -> :sswitch_0
        0x17a -> :sswitch_1
        0x200 -> :sswitch_1
        0x20a -> :sswitch_2
        0x246 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;J)V
    .locals 7
    .param p1, "reader"    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "length"    # J

    .prologue
    .line 83
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/drew/metadata/iptc/IptcReader;->extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;JLcom/drew/metadata/Directory;)V

    .line 84
    return-void
.end method

.method public extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;JLcom/drew/metadata/Directory;)V
    .locals 13
    .param p1, "reader"    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "length"    # J
    .param p5, "parentDirectory"    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v11, 0x1c

    .line 91
    new-instance v4, Lcom/drew/metadata/iptc/IptcDirectory;

    invoke-direct {v4}, Lcom/drew/metadata/iptc/IptcDirectory;-><init>()V

    .line 92
    .local v4, "directory":Lcom/drew/metadata/iptc/IptcDirectory;
    invoke-virtual {p2, v4}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 94
    if-eqz p5, :cond_0

    .line 95
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/drew/metadata/iptc/IptcDirectory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 97
    :cond_0
    const/4 v9, 0x0

    .line 100
    .local v9, "offset":I
    :goto_0
    int-to-long v2, v9

    cmp-long v2, v2, p3

    if-gez v2, :cond_1

    .line 105
    :try_start_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 106
    .local v10, "startByte":S
    add-int/lit8 v9, v9, 0x1

    .line 112
    if-eq v10, v11, :cond_2

    .line 115
    int-to-long v2, v9

    cmp-long v2, v2, p3

    if-eqz v2, :cond_1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid IPTC tag marker at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v9, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Expected \'0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' but got \'0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/drew/metadata/iptc/IptcDirectory;->addError(Ljava/lang/String;)V

    .line 154
    .end local v10    # "startByte":S
    :cond_1
    :goto_1
    return-void

    .line 107
    :catch_0
    move-exception v8

    .line 108
    .local v8, "e":Ljava/io/IOException;
    const-string v2, "Unable to read starting byte of IPTC tag"

    invoke-virtual {v4, v2}, Lcom/drew/metadata/iptc/IptcDirectory;->addError(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v10    # "startByte":S
    :cond_2
    add-int/lit8 v2, v9, 0x5

    int-to-long v2, v2

    cmp-long v2, v2, p3

    if-lez v2, :cond_3

    .line 122
    const-string v2, "Too few bytes remain for a valid IPTC tag"

    invoke-virtual {v4, v2}, Lcom/drew/metadata/iptc/IptcDirectory;->addError(Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v5

    .line 131
    .local v5, "directoryType":I
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v6

    .line 133
    .local v6, "tagType":I
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 134
    .local v7, "tagByteCount":I
    add-int/lit8 v9, v9, 0x4

    .line 140
    add-int v2, v9, v7

    int-to-long v2, v2

    cmp-long v2, v2, p3

    if-lez v2, :cond_4

    .line 141
    const-string v2, "Data for tag extends beyond end of IPTC segment"

    invoke-virtual {v4, v2}, Lcom/drew/metadata/iptc/IptcDirectory;->addError(Ljava/lang/String;)V

    goto :goto_1

    .line 135
    .end local v5    # "directoryType":I
    .end local v6    # "tagType":I
    .end local v7    # "tagByteCount":I
    :catch_1
    move-exception v8

    .line 136
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v2, "IPTC data segment ended mid-way through tag descriptor"

    invoke-virtual {v4, v2}, Lcom/drew/metadata/iptc/IptcDirectory;->addError(Ljava/lang/String;)V

    goto :goto_1

    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "directoryType":I
    .restart local v6    # "tagType":I
    .restart local v7    # "tagByteCount":I
    :cond_4
    move-object v2, p0

    move-object v3, p1

    .line 146
    :try_start_2
    invoke-direct/range {v2 .. v7}, Lcom/drew/metadata/iptc/IptcReader;->processTag(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Directory;III)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 152
    add-int/2addr v9, v7

    .line 153
    goto/16 :goto_0

    .line 147
    :catch_2
    move-exception v8

    .line 148
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v2, "Error processing IPTC tag"

    invoke-virtual {v4, v2}, Lcom/drew/metadata/iptc/IptcDirectory;->addError(Ljava/lang/String;)V

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
    .line 65
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
    .line 70
    .local p1, "segments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 72
    .local v1, "segmentBytes":[B
    array-length v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_0

    .line 73
    new-instance v2, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v2, v1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    array-length v3, v1

    int-to-long v4, v3

    invoke-virtual {p0, v2, p2, v4, v5}, Lcom/drew/metadata/iptc/IptcReader;->extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;J)V

    goto :goto_0

    .line 76
    .end local v1    # "segmentBytes":[B
    :cond_1
    return-void
.end method
