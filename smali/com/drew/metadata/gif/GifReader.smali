.class public Lcom/drew/metadata/gif/GifReader;
.super Ljava/lang/Object;
.source "GifReader.java"


# static fields
.field private static final GIF_87A_VERSION_IDENTIFIER:Ljava/lang/String; = "87a"

.field private static final GIF_89A_VERSION_IDENTIFIER:Ljava/lang/String; = "89a"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static gatherBytes(Lcom/drew/lang/SequentialReader;)[B
    .locals 6
    .param p0, "reader"    # Lcom/drew/lang/SequentialReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 351
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 352
    .local v3, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x101

    new-array v2, v4, [B

    .line 356
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    .line 357
    .local v0, "b":B
    if-nez v0, :cond_0

    .line 358
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 360
    :cond_0
    and-int/lit16 v1, v0, 0xff

    .line 362
    .local v1, "bInt":I
    aput-byte v0, v2, v5

    .line 363
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4, v1}, Lcom/drew/lang/SequentialReader;->getBytes([BII)V

    .line 364
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static gatherBytes(Lcom/drew/lang/SequentialReader;I)[B
    .locals 4
    .param p0, "reader"    # Lcom/drew/lang/SequentialReader;
    .param p1, "firstLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 372
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    move v1, p1

    .line 374
    .local v1, "length":I
    :goto_0
    if-lez v1, :cond_0

    .line 376
    invoke-virtual {p0, v1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 378
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private static readApplicationExtensionBlock(Lcom/drew/lang/SequentialReader;ILcom/drew/metadata/Metadata;)V
    .locals 10
    .param p0, "reader"    # Lcom/drew/lang/SequentialReader;
    .param p1, "blockSizeBytes"    # I
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 256
    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    .line 258
    new-instance v0, Lcom/drew/metadata/ErrorDirectory;

    const-string v3, "Invalid GIF application extension block size. Expected 11, got %d."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/drew/metadata/ErrorDirectory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    sget-object v0, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/SequentialReader;->getString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    .line 264
    .local v7, "extensionType":Ljava/lang/String;
    const-string v0, "XMP DataXMP"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    invoke-static {p0}, Lcom/drew/metadata/gif/GifReader;->gatherBytes(Lcom/drew/lang/SequentialReader;)[B

    move-result-object v1

    .line 268
    .local v1, "xmpBytes":[B
    new-instance v0, Lcom/drew/metadata/xmp/XmpReader;

    invoke-direct {v0}, Lcom/drew/metadata/xmp/XmpReader;-><init>()V

    array-length v3, v1

    add-int/lit16 v3, v3, -0x101

    const/4 v5, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/drew/metadata/xmp/XmpReader;->extract([BIILcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    goto :goto_0

    .line 270
    .end local v1    # "xmpBytes":[B
    :cond_2
    const-string v0, "ICCRGBG1012"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    invoke-static {p0, v0}, Lcom/drew/metadata/gif/GifReader;->gatherBytes(Lcom/drew/lang/SequentialReader;I)[B

    move-result-object v8

    .line 274
    .local v8, "iccBytes":[B
    array-length v0, v8

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Lcom/drew/metadata/icc/IccReader;

    invoke-direct {v0}, Lcom/drew/metadata/icc/IccReader;-><init>()V

    new-instance v2, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v2, v8}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    invoke-virtual {v0, v2, p2}, Lcom/drew/metadata/icc/IccReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;)V

    goto :goto_0

    .line 277
    .end local v8    # "iccBytes":[B
    :cond_3
    const-string v0, "NETSCAPE2.0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 282
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v9

    .line 284
    .local v9, "iterationCount":I
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 285
    new-instance v6, Lcom/drew/metadata/gif/GifAnimationDirectory;

    invoke-direct {v6}, Lcom/drew/metadata/gif/GifAnimationDirectory;-><init>()V

    .line 286
    .local v6, "animationDirectory":Lcom/drew/metadata/gif/GifAnimationDirectory;
    invoke-virtual {v6, v4, v9}, Lcom/drew/metadata/gif/GifAnimationDirectory;->setInt(II)V

    .line 287
    invoke-virtual {p2, v6}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_0

    .line 291
    .end local v6    # "animationDirectory":Lcom/drew/metadata/gif/GifAnimationDirectory;
    .end local v9    # "iterationCount":I
    :cond_4
    invoke-static {p0}, Lcom/drew/metadata/gif/GifReader;->skipBlocks(Lcom/drew/lang/SequentialReader;)V

    goto :goto_0
.end method

.method private static readCommentBlock(Lcom/drew/lang/SequentialReader;I)Lcom/drew/metadata/gif/GifCommentDirectory;
    .locals 4
    .param p0, "reader"    # Lcom/drew/lang/SequentialReader;
    .param p1, "blockSizeBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {p0, p1}, Lcom/drew/metadata/gif/GifReader;->gatherBytes(Lcom/drew/lang/SequentialReader;I)[B

    move-result-object v0

    .line 251
    .local v0, "buffer":[B
    new-instance v1, Lcom/drew/metadata/gif/GifCommentDirectory;

    new-instance v2, Lcom/drew/metadata/StringValue;

    sget-object v3, Lcom/drew/lang/Charsets;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lcom/drew/metadata/gif/GifCommentDirectory;-><init>(Lcom/drew/metadata/StringValue;)V

    return-object v1
.end method

.method private static readControlBlock(Lcom/drew/lang/SequentialReader;I)Lcom/drew/metadata/gif/GifControlDirectory;
    .locals 7
    .param p0, "reader"    # Lcom/drew/lang/SequentialReader;
    .param p1, "blockSizeBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 297
    if-ge p1, v6, :cond_0

    .line 298
    const/4 p1, 0x4

    .line 300
    :cond_0
    new-instance v0, Lcom/drew/metadata/gif/GifControlDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/gif/GifControlDirectory;-><init>()V

    .line 302
    .local v0, "directory":Lcom/drew/metadata/gif/GifControlDirectory;
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v1

    .line 303
    .local v1, "packedFields":S
    const/4 v2, 0x2

    shr-int/lit8 v5, v1, 0x2

    and-int/lit8 v5, v5, 0x7

    invoke-static {v5}, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->typeOf(I)Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/drew/metadata/gif/GifControlDirectory;->setObject(ILjava/lang/Object;)V

    .line 304
    const/4 v5, 0x3

    and-int/lit8 v2, v1, 0x2

    shr-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v5, v2}, Lcom/drew/metadata/gif/GifControlDirectory;->setBoolean(IZ)V

    .line 305
    and-int/lit8 v2, v1, 0x1

    if-ne v2, v3, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {v0, v6, v4}, Lcom/drew/metadata/gif/GifControlDirectory;->setBoolean(IZ)V

    .line 306
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/drew/metadata/gif/GifControlDirectory;->setInt(II)V

    .line 307
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/drew/metadata/gif/GifControlDirectory;->setInt(II)V

    .line 310
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 312
    return-object v0

    :cond_2
    move v2, v4

    .line 304
    goto :goto_0
.end method

.method private static readGifExtensionBlock(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V
    .locals 12
    .param p0, "reader"    # Lcom/drew/lang/SequentialReader;
    .param p1, "metadata"    # Lcom/drew/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v1

    .line 201
    .local v1, "extensionLabel":B
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v0

    .line 202
    .local v0, "blockSizeBytes":S
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getPosition()J

    move-result-wide v2

    .line 204
    .local v2, "blockStartPos":J
    packed-switch v1, :pswitch_data_0

    .line 221
    :pswitch_0
    new-instance v5, Lcom/drew/metadata/ErrorDirectory;

    const-string v8, "Unsupported GIF extension block with type 0x%02X."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/drew/metadata/ErrorDirectory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 225
    :cond_0
    :goto_0
    int-to-long v8, v0

    add-long/2addr v8, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getPosition()J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 226
    .local v6, "skipCount":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 227
    invoke-virtual {p0, v6, v7}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 228
    :cond_1
    return-void

    .line 207
    .end local v6    # "skipCount":J
    :pswitch_1
    invoke-static {p0, v0}, Lcom/drew/metadata/gif/GifReader;->readPlainTextBlock(Lcom/drew/lang/SequentialReader;I)Lcom/drew/metadata/Directory;

    move-result-object v4

    .line 208
    .local v4, "plainTextBlock":Lcom/drew/metadata/Directory;
    if-eqz v4, :cond_0

    .line 209
    invoke-virtual {p1, v4}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_0

    .line 212
    .end local v4    # "plainTextBlock":Lcom/drew/metadata/Directory;
    :pswitch_2
    invoke-static {p0, v0}, Lcom/drew/metadata/gif/GifReader;->readControlBlock(Lcom/drew/lang/SequentialReader;I)Lcom/drew/metadata/gif/GifControlDirectory;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_0

    .line 215
    :pswitch_3
    invoke-static {p0, v0}, Lcom/drew/metadata/gif/GifReader;->readCommentBlock(Lcom/drew/lang/SequentialReader;I)Lcom/drew/metadata/gif/GifCommentDirectory;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_0

    .line 218
    :pswitch_4
    invoke-static {p0, v0, p1}, Lcom/drew/metadata/gif/GifReader;->readApplicationExtensionBlock(Lcom/drew/lang/SequentialReader;ILcom/drew/metadata/Metadata;)V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static readGifHeader(Lcom/drew/lang/SequentialReader;)Lcom/drew/metadata/gif/GifHeaderDirectory;
    .locals 15
    .param p0, "reader"    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v14, 0x3

    const/4 v10, 0x1

    .line 146
    new-instance v5, Lcom/drew/metadata/gif/GifHeaderDirectory;

    invoke-direct {v5}, Lcom/drew/metadata/gif/GifHeaderDirectory;-><init>()V

    .line 148
    .local v5, "headerDirectory":Lcom/drew/metadata/gif/GifHeaderDirectory;
    invoke-virtual {p0, v14}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, "signature":Ljava/lang/String;
    const-string v12, "GIF"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 152
    const-string v10, "Invalid GIF file signature"

    invoke-virtual {v5, v10}, Lcom/drew/metadata/gif/GifHeaderDirectory;->addError(Ljava/lang/String;)V

    .line 195
    :cond_0
    :goto_0
    return-object v5

    .line 156
    :cond_1
    invoke-virtual {p0, v14}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, "version":Ljava/lang/String;
    const-string v12, "87a"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "89a"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 159
    const-string v10, "Unexpected GIF version"

    invoke-virtual {v5, v10}, Lcom/drew/metadata/gif/GifHeaderDirectory;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {v5, v10, v9}, Lcom/drew/metadata/gif/GifHeaderDirectory;->setString(ILjava/lang/String;)V

    .line 167
    const/4 v12, 0x2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v13

    invoke-virtual {v5, v12, v13}, Lcom/drew/metadata/gif/GifHeaderDirectory;->setInt(II)V

    .line 168
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v12

    invoke-virtual {v5, v14, v12}, Lcom/drew/metadata/gif/GifHeaderDirectory;->setInt(II)V

    .line 170
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v3

    .line 173
    .local v3, "flags":S
    and-int/lit8 v12, v3, 0x7

    add-int/lit8 v12, v12, 0x1

    shl-int v2, v10, v12

    .line 174
    .local v2, "colorTableSize":I
    and-int/lit8 v12, v3, 0x70

    shr-int/lit8 v12, v12, 0x4

    add-int/lit8 v1, v12, 0x1

    .line 175
    .local v1, "bitsPerPixel":I
    and-int/lit8 v12, v3, 0xf

    if-eqz v12, :cond_4

    move v4, v10

    .line 177
    .local v4, "hasGlobalColorTable":Z
    :goto_1
    const/4 v12, 0x4

    invoke-virtual {v5, v12, v2}, Lcom/drew/metadata/gif/GifHeaderDirectory;->setInt(II)V

    .line 179
    const-string v12, "89a"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 180
    and-int/lit8 v12, v3, 0x8

    if-eqz v12, :cond_5

    move v6, v10

    .line 181
    .local v6, "isColorTableSorted":Z
    :goto_2
    const/4 v10, 0x5

    invoke-virtual {v5, v10, v6}, Lcom/drew/metadata/gif/GifHeaderDirectory;->setBoolean(IZ)V

    .line 184
    .end local v6    # "isColorTableSorted":Z
    :cond_3
    const/4 v10, 0x6

    invoke-virtual {v5, v10, v1}, Lcom/drew/metadata/gif/GifHeaderDirectory;->setInt(II)V

    .line 185
    const/4 v10, 0x7

    invoke-virtual {v5, v10, v4}, Lcom/drew/metadata/gif/GifHeaderDirectory;->setBoolean(IZ)V

    .line 187
    const/16 v10, 0x8

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v11

    invoke-virtual {v5, v10, v11}, Lcom/drew/metadata/gif/GifHeaderDirectory;->setInt(II)V

    .line 189
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v0

    .line 190
    .local v0, "aspectRatioByte":I
    if-eqz v0, :cond_0

    .line 191
    int-to-double v10, v0

    const-wide/high16 v12, 0x402e000000000000L    # 15.0

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4050000000000000L    # 64.0

    div-double/2addr v10, v12

    double-to-float v7, v10

    .line 192
    .local v7, "pixelAspectRatio":F
    const/16 v10, 0x9

    invoke-virtual {v5, v10, v7}, Lcom/drew/metadata/gif/GifHeaderDirectory;->setFloat(IF)V

    goto :goto_0

    .end local v0    # "aspectRatioByte":I
    .end local v4    # "hasGlobalColorTable":Z
    .end local v7    # "pixelAspectRatio":F
    :cond_4
    move v4, v11

    .line 175
    goto :goto_1

    .restart local v4    # "hasGlobalColorTable":Z
    :cond_5
    move v6, v11

    .line 180
    goto :goto_2
.end method

.method private static readImageBlock(Lcom/drew/lang/SequentialReader;)Lcom/drew/metadata/gif/GifImageDirectory;
    .locals 10
    .param p0, "reader"    # Lcom/drew/lang/SequentialReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 317
    new-instance v3, Lcom/drew/metadata/gif/GifImageDirectory;

    invoke-direct {v3}, Lcom/drew/metadata/gif/GifImageDirectory;-><init>()V

    .line 319
    .local v3, "imageDirectory":Lcom/drew/metadata/gif/GifImageDirectory;
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v7

    invoke-virtual {v3, v4, v7}, Lcom/drew/metadata/gif/GifImageDirectory;->setInt(II)V

    .line 320
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v7

    invoke-virtual {v3, v9, v7}, Lcom/drew/metadata/gif/GifImageDirectory;->setInt(II)V

    .line 321
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Lcom/drew/metadata/gif/GifImageDirectory;->setInt(II)V

    .line 322
    const/4 v7, 0x4

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Lcom/drew/metadata/gif/GifImageDirectory;->setInt(II)V

    .line 324
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    .line 325
    .local v1, "flags":B
    and-int/lit8 v7, v1, 0x7

    if-eqz v7, :cond_1

    move v2, v4

    .line 326
    .local v2, "hasColorTable":Z
    :goto_0
    and-int/lit8 v7, v1, 0x40

    if-eqz v7, :cond_2

    move v5, v4

    .line 327
    .local v5, "isInterlaced":Z
    :goto_1
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_3

    .line 329
    .local v4, "isColorTableSorted":Z
    :goto_2
    const/4 v6, 0x5

    invoke-virtual {v3, v6, v2}, Lcom/drew/metadata/gif/GifImageDirectory;->setBoolean(IZ)V

    .line 330
    const/4 v6, 0x6

    invoke-virtual {v3, v6, v5}, Lcom/drew/metadata/gif/GifImageDirectory;->setBoolean(IZ)V

    .line 332
    if-eqz v2, :cond_0

    .line 334
    const/4 v6, 0x7

    invoke-virtual {v3, v6, v4}, Lcom/drew/metadata/gif/GifImageDirectory;->setBoolean(IZ)V

    .line 336
    and-int/lit8 v6, v1, 0x7

    add-int/lit8 v0, v6, 0x1

    .line 337
    .local v0, "bitsPerPixel":I
    const/16 v6, 0x8

    invoke-virtual {v3, v6, v0}, Lcom/drew/metadata/gif/GifImageDirectory;->setInt(II)V

    .line 340
    and-int/lit8 v6, v1, 0x7

    shl-int v6, v9, v6

    mul-int/lit8 v6, v6, 0x3

    int-to-long v6, v6

    invoke-virtual {p0, v6, v7}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 344
    .end local v0    # "bitsPerPixel":I
    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    .line 346
    return-object v3

    .end local v2    # "hasColorTable":Z
    .end local v4    # "isColorTableSorted":Z
    .end local v5    # "isInterlaced":Z
    :cond_1
    move v2, v6

    .line 325
    goto :goto_0

    .restart local v2    # "hasColorTable":Z
    :cond_2
    move v5, v6

    .line 326
    goto :goto_1

    .restart local v5    # "isInterlaced":Z
    :cond_3
    move v4, v6

    .line 327
    goto :goto_2
.end method

.method private static readPlainTextBlock(Lcom/drew/lang/SequentialReader;I)Lcom/drew/metadata/Directory;
    .locals 5
    .param p0, "reader"    # Lcom/drew/lang/SequentialReader;
    .param p1, "blockSizeBytes"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    .line 237
    new-instance v0, Lcom/drew/metadata/ErrorDirectory;

    const-string v1, "Invalid GIF plain text block size. Expected 12, got %d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/drew/metadata/ErrorDirectory;-><init>(Ljava/lang/String;)V

    .line 245
    :goto_0
    return-object v0

    .line 240
    :cond_0
    const-wide/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 243
    invoke-static {p0}, Lcom/drew/metadata/gif/GifReader;->skipBlocks(Lcom/drew/lang/SequentialReader;)V

    .line 245
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static skipBlocks(Lcom/drew/lang/SequentialReader;)V
    .locals 4
    .param p0, "reader"    # Lcom/drew/lang/SequentialReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    :goto_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v0

    .line 390
    .local v0, "length":S
    if-nez v0, :cond_0

    .line 391
    return-void

    .line 393
    :cond_0
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/drew/lang/SequentialReader;->skip(J)V

    goto :goto_0
.end method


# virtual methods
.method public extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V
    .locals 8
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
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/drew/lang/SequentialReader;->setMotorolaByteOrder(Z)V

    .line 64
    :try_start_0
    invoke-static {p1}, Lcom/drew/metadata/gif/GifReader;->readGifHeader(Lcom/drew/lang/SequentialReader;)Lcom/drew/metadata/gif/GifHeaderDirectory;

    move-result-object v3

    .line 65
    .local v3, "header":Lcom/drew/metadata/gif/GifHeaderDirectory;
    invoke-virtual {p2, v3}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    invoke-virtual {v3}, Lcom/drew/metadata/gif/GifHeaderDirectory;->hasErrors()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 125
    .end local v3    # "header":Lcom/drew/metadata/gif/GifHeaderDirectory;
    :goto_0
    :sswitch_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "ex":Ljava/io/IOException;
    new-instance v5, Lcom/drew/metadata/ErrorDirectory;

    const-string v6, "IOException processing GIF data"

    invoke-direct {v5, v6}, Lcom/drew/metadata/ErrorDirectory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_0

    .line 76
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v3    # "header":Lcom/drew/metadata/gif/GifHeaderDirectory;
    :cond_0
    const/4 v5, 0x4

    :try_start_1
    invoke-virtual {v3, v5}, Lcom/drew/metadata/gif/GifHeaderDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v2

    .line 77
    .local v2, "globalColorTableSize":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    int-to-long v6, v5

    invoke-virtual {p1, v6, v7}, Lcom/drew/lang/SequentialReader;->skip(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt8()B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 93
    .local v4, "marker":B
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 97
    :sswitch_1
    :try_start_3
    invoke-static {p1, p2}, Lcom/drew/metadata/gif/GifReader;->readGifExtensionBlock(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 122
    .end local v2    # "globalColorTableSize":Ljava/lang/Integer;
    .end local v4    # "marker":B
    :catch_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/drew/metadata/ErrorDirectory;

    const-string v6, "IOException processing GIF data"

    invoke-direct {v5, v6}, Lcom/drew/metadata/ErrorDirectory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "globalColorTableSize":Ljava/lang/Integer;
    :catch_2
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_0

    .line 102
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "marker":B
    :sswitch_2
    :try_start_4
    invoke-static {p1}, Lcom/drew/metadata/gif/GifReader;->readImageBlock(Lcom/drew/lang/SequentialReader;)Lcom/drew/metadata/gif/GifImageDirectory;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 105
    invoke-static {p1}, Lcom/drew/metadata/gif/GifReader;->skipBlocks(Lcom/drew/lang/SequentialReader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_2
        0x3b -> :sswitch_0
    .end sparse-switch
.end method
