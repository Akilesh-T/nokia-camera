.class public Lcom/drew/metadata/icc/IccDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "IccDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/icc/IccDirectory;",
        ">;"
    }
.end annotation


# static fields
.field private static final ICC_TAG_TYPE_CURV:I = 0x63757276

.field private static final ICC_TAG_TYPE_DESC:I = 0x64657363

.field private static final ICC_TAG_TYPE_MEAS:I = 0x6d656173

.field private static final ICC_TAG_TYPE_MLUC:I = 0x6d6c7563

.field private static final ICC_TAG_TYPE_SIG:I = 0x73696720

.field private static final ICC_TAG_TYPE_TEXT:I = 0x74657874

.field private static final ICC_TAG_TYPE_XYZ_ARRAY:I = 0x58595a20


# direct methods
.method public constructor <init>(Lcom/drew/metadata/icc/IccDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/icc/IccDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 46
    return-void
.end method

.method public static formatDoubleAsString(DIZ)Ljava/lang/String;
    .locals 18
    .param p0, "value"    # D
    .param p2, "precision"    # I
    .param p3, "zeroes"    # Z
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 230
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ge v0, v12, :cond_0

    .line 231
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 245
    :goto_0
    return-object v12

    .line 232
    :cond_0
    move-wide/from16 v0, p0

    double-to-long v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 233
    .local v4, "intPart":J
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    long-to-double v14, v4

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v12, v12

    int-to-long v8, v12

    .line 234
    .local v8, "rest":J
    move-wide v10, v8

    .line 235
    .local v10, "restKept":J
    const-string v7, ""

    .line 237
    .local v7, "res":Ljava/lang/String;
    move/from16 v3, p2

    .local v3, "i":I
    :goto_1
    if-lez v3, :cond_3

    .line 238
    const-wide/16 v12, 0xa

    rem-long v12, v8, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    long-to-int v12, v12

    int-to-byte v2, v12

    .line 239
    .local v2, "cour":B
    const-wide/16 v12, 0xa

    div-long/2addr v8, v12

    .line 240
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_1

    if-nez p3, :cond_1

    if-nez v2, :cond_1

    const/4 v12, 0x1

    if-ne v3, v12, :cond_2

    .line 241
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 237
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 243
    .end local v2    # "cour":B
    :cond_3
    add-long/2addr v4, v8

    .line 244
    const-wide/16 v12, 0x0

    cmpg-double v12, p0, v12

    if-gez v12, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_4

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 245
    .local v6, "isNegative":Z
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_6

    const-string v12, "-"

    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 244
    .end local v6    # "isNegative":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 245
    .restart local v6    # "isNegative":Z
    :cond_6
    const-string v12, ""

    goto :goto_3
.end method

.method private static getInt32FromString(Ljava/lang/String;)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 340
    .local v0, "bytes":[B
    new-instance v1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v1, v0}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/drew/lang/ByteArrayReader;->getInt32(I)I

    move-result v1

    return v1
.end method

.method private getPlatformDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 261
    iget-object v3, p0, Lcom/drew/metadata/icc/IccDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/icc/IccDirectory;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lcom/drew/metadata/icc/IccDirectory;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 263
    const/4 v2, 0x0

    .line 284
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 268
    .restart local v2    # "str":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {v2}, Lcom/drew/metadata/icc/IccDescriptor;->getInt32FromString(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 272
    .local v1, "i":I
    sparse-switch v1, :sswitch_data_0

    .line 284
    const-string v3, "Unknown (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 269
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 274
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i":I
    :sswitch_0
    const-string v2, "Apple Computer, Inc."

    goto :goto_0

    .line 276
    :sswitch_1
    const-string v2, "Microsoft Corporation"

    goto :goto_0

    .line 278
    :sswitch_2
    const-string v2, "Silicon Graphics, Inc."

    goto :goto_0

    .line 280
    :sswitch_3
    const-string v2, "Sun Microsystems, Inc."

    goto :goto_0

    .line 282
    :sswitch_4
    const-string v2, "Taligent, Inc."

    goto :goto_0

    .line 272
    nop

    :sswitch_data_0
    .sparse-switch
        0x4150504c -> :sswitch_0
        0x4d534654 -> :sswitch_1
        0x53474920 -> :sswitch_2
        0x53554e57 -> :sswitch_3
        0x54474e54 -> :sswitch_4
    .end sparse-switch
.end method

.method private getProfileClassDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 291
    iget-object v3, p0, Lcom/drew/metadata/icc/IccDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/icc/IccDirectory;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/drew/metadata/icc/IccDirectory;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 293
    const/4 v2, 0x0

    .line 318
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 298
    .restart local v2    # "str":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {v2}, Lcom/drew/metadata/icc/IccDescriptor;->getInt32FromString(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 302
    .local v1, "i":I
    sparse-switch v1, :sswitch_data_0

    .line 318
    const-string v3, "Unknown (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 299
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i":I
    :sswitch_0
    const-string v2, "Input Device"

    goto :goto_0

    .line 306
    :sswitch_1
    const-string v2, "Display Device"

    goto :goto_0

    .line 308
    :sswitch_2
    const-string v2, "Output Device"

    goto :goto_0

    .line 310
    :sswitch_3
    const-string v2, "DeviceLink"

    goto :goto_0

    .line 312
    :sswitch_4
    const-string v2, "ColorSpace Conversion"

    goto :goto_0

    .line 314
    :sswitch_5
    const-string v2, "Abstract"

    goto :goto_0

    .line 316
    :sswitch_6
    const-string v2, "Named Color"

    goto :goto_0

    .line 302
    nop

    :sswitch_data_0
    .sparse-switch
        0x61627374 -> :sswitch_5
        0x6c696e6b -> :sswitch_3
        0x6d6e7472 -> :sswitch_1
        0x6e6d636c -> :sswitch_6
        0x70727472 -> :sswitch_2
        0x73636e72 -> :sswitch_0
        0x73706163 -> :sswitch_4
    .end sparse-switch
.end method

.method private getProfileVersionDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 325
    iget-object v4, p0, Lcom/drew/metadata/icc/IccDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v4, Lcom/drew/metadata/icc/IccDirectory;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/drew/metadata/icc/IccDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v3

    .line 327
    .local v3, "value":Ljava/lang/Integer;
    if-nez v3, :cond_0

    .line 328
    const/4 v4, 0x0

    .line 334
    :goto_0
    return-object v4

    .line 330
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    shr-int/lit8 v1, v4, 0x18

    .line 331
    .local v1, "m":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v5, 0xf00000

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x14

    .line 332
    .local v2, "r":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v5, 0xf0000

    and-int/2addr v4, v5

    shr-int/lit8 v0, v4, 0x10

    .line 334
    .local v0, "R":I
    const-string v4, "%d.%d.%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getRenderingIntentDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 251
    const/16 v0, 0x40

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Perceptual"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Media-Relative Colorimetric"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Saturation"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ICC-Absolute Colorimetric"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/icc/IccDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTagDataString(I)Ljava/lang/String;
    .locals 36
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 80
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/drew/metadata/icc/IccDescriptor;->_directory:Lcom/drew/metadata/Directory;

    move-object/from16 v30, v0

    check-cast v30, Lcom/drew/metadata/icc/IccDirectory;

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/drew/metadata/icc/IccDirectory;->getByteArray(I)[B

    move-result-object v4

    .line 81
    .local v4, "bytes":[B
    if-nez v4, :cond_0

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/drew/metadata/icc/IccDescriptor;->_directory:Lcom/drew/metadata/Directory;

    move-object/from16 v30, v0

    check-cast v30, Lcom/drew/metadata/icc/IccDirectory;

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/drew/metadata/icc/IccDirectory;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 223
    .end local v4    # "bytes":[B
    :goto_0
    return-object v30

    .line 83
    .restart local v4    # "bytes":[B
    :cond_0
    new-instance v23, Lcom/drew/lang/ByteArrayReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 84
    .local v23, "reader":Lcom/drew/lang/RandomAccessReader;
    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v13

    .line 85
    .local v13, "iccTagType":I
    sparse-switch v13, :sswitch_data_0

    .line 217
    const-string v30, "%s (0x%08X): %d bytes"

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v13}, Lcom/drew/metadata/icc/IccReader;->getStringFromInt32(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    array-length v0, v4

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v30

    goto :goto_0

    .line 88
    :sswitch_0
    :try_start_1
    new-instance v30, Ljava/lang/String;

    const/16 v31, 0x8

    array-length v0, v4

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x8

    add-int/lit8 v32, v32, -0x1

    const-string v33, "ASCII"

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v7

    .line 90
    .local v7, "ex":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    new-instance v30, Ljava/lang/String;

    const/16 v31, 0x8

    array-length v0, v4

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x8

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    .line 219
    .end local v4    # "bytes":[B
    .end local v7    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v13    # "iccTagType":I
    .end local v23    # "reader":Lcom/drew/lang/RandomAccessReader;
    :catch_1
    move-exception v6

    .line 223
    .local v6, "e":Ljava/io/IOException;
    const/16 v30, 0x0

    goto :goto_0

    .line 93
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "bytes":[B
    .restart local v13    # "iccTagType":I
    .restart local v23    # "reader":Lcom/drew/lang/RandomAccessReader;
    :sswitch_1
    const/16 v30, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v26

    .line 94
    .local v26, "stringLength":I
    new-instance v30, Ljava/lang/String;

    const/16 v31, 0xc

    add-int/lit8 v32, v26, -0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([BII)V

    goto/16 :goto_0

    .line 96
    .end local v26    # "stringLength":I
    :sswitch_2
    const/16 v30, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Lcom/drew/metadata/icc/IccReader;->getStringFromInt32(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 98
    :sswitch_3
    const/16 v30, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v21

    .line 99
    .local v21, "observerType":I
    const/16 v30, 0xc

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v27

    .line 100
    .local v27, "x":F
    const/16 v30, 0x10

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v28

    .line 101
    .local v28, "y":F
    const/16 v30, 0x14

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v29

    .line 102
    .local v29, "z":F
    const/16 v30, 0x18

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v11

    .line 103
    .local v11, "geometryType":I
    const/16 v30, 0x1c

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v8

    .line 104
    .local v8, "flare":F
    const/16 v30, 0x20

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v15

    .line 106
    .local v15, "illuminantType":I
    packed-switch v21, :pswitch_data_0

    .line 117
    const-string v30, "Unknown %d"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 120
    .local v20, "observerString":Ljava/lang/String;
    :goto_1
    packed-switch v11, :pswitch_data_1

    .line 131
    const-string v30, "Unknown %d"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, "geometryString":Ljava/lang/String;
    :goto_2
    packed-switch v15, :pswitch_data_2

    .line 163
    const-string v30, "Unknown %d"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 166
    .local v14, "illuminantString":Ljava/lang/String;
    :goto_3
    new-instance v9, Ljava/text/DecimalFormat;

    const-string v30, "0.###"

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 167
    .local v9, "format":Ljava/text/DecimalFormat;
    const-string v30, "%s Observer, Backing (%s, %s, %s), Geometry %s, Flare %d%%, Illuminant %s"

    const/16 v31, 0x7

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v20, v31, v32

    const/16 v32, 0x1

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-virtual {v9, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-virtual {v9, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x3

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-virtual {v9, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x4

    aput-object v10, v31, v32

    const/16 v32, 0x5

    const/high16 v33, 0x42c80000    # 100.0f

    mul-float v33, v33, v8

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x6

    aput-object v14, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 108
    .end local v9    # "format":Ljava/text/DecimalFormat;
    .end local v10    # "geometryString":Ljava/lang/String;
    .end local v14    # "illuminantString":Ljava/lang/String;
    .end local v20    # "observerString":Ljava/lang/String;
    :pswitch_0
    const-string v20, "Unknown"

    .line 109
    .restart local v20    # "observerString":Ljava/lang/String;
    goto/16 :goto_1

    .line 111
    .end local v20    # "observerString":Ljava/lang/String;
    :pswitch_1
    const-string v20, "1931 2\u00b0"

    .line 112
    .restart local v20    # "observerString":Ljava/lang/String;
    goto/16 :goto_1

    .line 114
    .end local v20    # "observerString":Ljava/lang/String;
    :pswitch_2
    const-string v20, "1964 10\u00b0"

    .line 115
    .restart local v20    # "observerString":Ljava/lang/String;
    goto/16 :goto_1

    .line 122
    :pswitch_3
    const-string v10, "Unknown"

    .line 123
    .restart local v10    # "geometryString":Ljava/lang/String;
    goto/16 :goto_2

    .line 125
    .end local v10    # "geometryString":Ljava/lang/String;
    :pswitch_4
    const-string v10, "0/45 or 45/0"

    .line 126
    .restart local v10    # "geometryString":Ljava/lang/String;
    goto/16 :goto_2

    .line 128
    .end local v10    # "geometryString":Ljava/lang/String;
    :pswitch_5
    const-string v10, "0/d or d/0"

    .line 129
    .restart local v10    # "geometryString":Ljava/lang/String;
    goto/16 :goto_2

    .line 136
    :pswitch_6
    const-string v14, "unknown"

    .line 137
    .restart local v14    # "illuminantString":Ljava/lang/String;
    goto :goto_3

    .line 139
    .end local v14    # "illuminantString":Ljava/lang/String;
    :pswitch_7
    const-string v14, "D50"

    .line 140
    .restart local v14    # "illuminantString":Ljava/lang/String;
    goto :goto_3

    .line 142
    .end local v14    # "illuminantString":Ljava/lang/String;
    :pswitch_8
    const-string v14, "D65"

    .line 143
    .restart local v14    # "illuminantString":Ljava/lang/String;
    goto/16 :goto_3

    .line 145
    .end local v14    # "illuminantString":Ljava/lang/String;
    :pswitch_9
    const-string v14, "D93"

    .line 146
    .restart local v14    # "illuminantString":Ljava/lang/String;
    goto/16 :goto_3

    .line 148
    .end local v14    # "illuminantString":Ljava/lang/String;
    :pswitch_a
    const-string v14, "F2"

    .line 149
    .restart local v14    # "illuminantString":Ljava/lang/String;
    goto/16 :goto_3

    .line 151
    .end local v14    # "illuminantString":Ljava/lang/String;
    :pswitch_b
    const-string v14, "D55"

    .line 152
    .restart local v14    # "illuminantString":Ljava/lang/String;
    goto/16 :goto_3

    .line 154
    .end local v14    # "illuminantString":Ljava/lang/String;
    :pswitch_c
    const-string v14, "A"

    .line 155
    .restart local v14    # "illuminantString":Ljava/lang/String;
    goto/16 :goto_3

    .line 157
    .end local v14    # "illuminantString":Ljava/lang/String;
    :pswitch_d
    const-string v14, "Equi-Power (E)"

    .line 158
    .restart local v14    # "illuminantString":Ljava/lang/String;
    goto/16 :goto_3

    .line 160
    .end local v14    # "illuminantString":Ljava/lang/String;
    :pswitch_e
    const-string v14, "F8"

    .line 161
    .restart local v14    # "illuminantString":Ljava/lang/String;
    goto/16 :goto_3

    .line 171
    .end local v8    # "flare":F
    .end local v10    # "geometryString":Ljava/lang/String;
    .end local v11    # "geometryType":I
    .end local v14    # "illuminantString":Ljava/lang/String;
    .end local v15    # "illuminantType":I
    .end local v20    # "observerString":Ljava/lang/String;
    .end local v21    # "observerType":I
    .end local v27    # "x":F
    .end local v28    # "y":F
    .end local v29    # "z":F
    :sswitch_4
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v24, "res":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/text/DecimalFormat;

    const-string v30, "0.####"

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v9    # "format":Ljava/text/DecimalFormat;
    array-length v0, v4

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x8

    div-int/lit8 v5, v30, 0xc

    .line 174
    .local v5, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    if-ge v12, v5, :cond_2

    .line 175
    mul-int/lit8 v30, v12, 0xc

    add-int/lit8 v30, v30, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v27

    .line 176
    .restart local v27    # "x":F
    mul-int/lit8 v30, v12, 0xc

    add-int/lit8 v30, v30, 0x8

    add-int/lit8 v30, v30, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v28

    .line 177
    .restart local v28    # "y":F
    mul-int/lit8 v30, v12, 0xc

    add-int/lit8 v30, v30, 0x8

    add-int/lit8 v30, v30, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v29

    .line 178
    .restart local v29    # "z":F
    if-lez v12, :cond_1

    .line 179
    const-string v30, ", "

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_1
    const-string v30, "("

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    invoke-virtual {v9, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    invoke-virtual {v9, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    invoke-virtual {v9, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ")"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 182
    .end local v27    # "x":F
    .end local v28    # "y":F
    .end local v29    # "z":F
    :cond_2
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 185
    .end local v5    # "count":I
    .end local v9    # "format":Ljava/text/DecimalFormat;
    .end local v12    # "i":I
    .end local v24    # "res":Ljava/lang/StringBuilder;
    :sswitch_5
    const/16 v30, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v16

    .line 186
    .local v16, "int1":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .restart local v24    # "res":Ljava/lang/StringBuilder;
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_3

    .line 191
    mul-int/lit8 v30, v12, 0xc

    add-int/lit8 v30, v30, 0x10

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Lcom/drew/metadata/icc/IccReader;->getStringFromInt32(I)Ljava/lang/String;

    move-result-object v25

    .line 192
    .local v25, "str":Ljava/lang/String;
    mul-int/lit8 v30, v12, 0xc

    add-int/lit8 v30, v30, 0x10

    add-int/lit8 v30, v30, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v17

    .line 193
    .local v17, "len":I
    mul-int/lit8 v30, v12, 0xc

    add-int/lit8 v30, v30, 0x10

    add-int/lit8 v30, v30, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v22

    .line 196
    .local v22, "ofs":I
    :try_start_3
    new-instance v18, Ljava/lang/String;

    const-string v30, "UTF-16BE"

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v17

    move-object/from16 v3, v30

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 200
    .local v18, "name":Ljava/lang/String;
    :goto_6
    :try_start_4
    const-string v30, " "

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "("

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ")"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 197
    .end local v18    # "name":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 198
    .restart local v7    # "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .restart local v18    # "name":Ljava/lang/String;
    goto :goto_6

    .line 203
    .end local v7    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v17    # "len":I
    .end local v18    # "name":Ljava/lang/String;
    .end local v22    # "ofs":I
    .end local v25    # "str":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 206
    .end local v12    # "i":I
    .end local v16    # "int1":I
    .end local v24    # "res":Ljava/lang/StringBuilder;
    :sswitch_6
    const/16 v30, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v19

    .line 207
    .local v19, "num":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .restart local v24    # "res":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_7
    move/from16 v0, v19

    if-ge v12, v0, :cond_5

    .line 209
    if-eqz v12, :cond_4

    .line 210
    const-string v30, ", "

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_4
    mul-int/lit8 v30, v12, 0x2

    add-int/lit8 v30, v30, 0xc

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x40efffe000000000L    # 65535.0

    div-double v30, v30, v32

    const/16 v32, 0x7

    const/16 v33, 0x0

    invoke-static/range {v30 .. v33}, Lcom/drew/metadata/icc/IccDescriptor;->formatDoubleAsString(DIZ)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 214
    :cond_5
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v30

    goto/16 :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x58595a20 -> :sswitch_4
        0x63757276 -> :sswitch_6
        0x64657363 -> :sswitch_1
        0x6d656173 -> :sswitch_3
        0x6d6c7563 -> :sswitch_5
        0x73696720 -> :sswitch_2
        0x74657874 -> :sswitch_0
    .end sparse-switch

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 120
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 134
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I

    .prologue
    .line 51
    sparse-switch p1, :sswitch_data_0

    .line 62
    const v0, 0x20202020

    if-le p1, v0, :cond_0

    const v0, 0x7a7a7a7a

    if-ge p1, v0, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/drew/metadata/icc/IccDescriptor;->getTagDataString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 53
    :sswitch_0
    invoke-direct {p0}, Lcom/drew/metadata/icc/IccDescriptor;->getProfileVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :sswitch_1
    invoke-direct {p0}, Lcom/drew/metadata/icc/IccDescriptor;->getProfileClassDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :sswitch_2
    invoke-direct {p0}, Lcom/drew/metadata/icc/IccDescriptor;->getPlatformDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :sswitch_3
    invoke-direct {p0}, Lcom/drew/metadata/icc/IccDescriptor;->getRenderingIntentDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
        0x28 -> :sswitch_2
        0x40 -> :sswitch_3
    .end sparse-switch
.end method
