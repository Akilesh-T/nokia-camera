.class public Lcom/drew/metadata/webp/WebpRiffHandler;
.super Ljava/lang/Object;
.source "WebpRiffHandler.java"

# interfaces
.implements Lcom/drew/imaging/riff/RiffHandler;


# instance fields
.field private final _metadata:Lcom/drew/metadata/Metadata;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Metadata;)V
    .locals 0
    .param p1, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/drew/metadata/webp/WebpRiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    .line 54
    return-void
.end method


# virtual methods
.method public processChunk(Ljava/lang/String;[B)V
    .locals 17
    .param p1, "fourCC"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "payload"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 75
    const-string v14, "EXIF"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 76
    new-instance v14, Lcom/drew/metadata/exif/ExifReader;

    invoke-direct {v14}, Lcom/drew/metadata/exif/ExifReader;-><init>()V

    new-instance v15, Lcom/drew/lang/ByteArrayReader;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/drew/metadata/webp/WebpRiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/drew/metadata/exif/ExifReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v14, "ICCP"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 78
    new-instance v14, Lcom/drew/metadata/icc/IccReader;

    invoke-direct {v14}, Lcom/drew/metadata/icc/IccReader;-><init>()V

    new-instance v15, Lcom/drew/lang/ByteArrayReader;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/drew/metadata/webp/WebpRiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/drew/metadata/icc/IccReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;)V

    goto :goto_0

    .line 79
    :cond_2
    const-string v14, "XMP "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 80
    new-instance v14, Lcom/drew/metadata/xmp/XmpReader;

    invoke-direct {v14}, Lcom/drew/metadata/xmp/XmpReader;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/webp/WebpRiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;)V

    goto :goto_0

    .line 81
    :cond_3
    const-string v14, "VP8X"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0xa

    if-ne v14, v15, :cond_4

    .line 82
    new-instance v11, Lcom/drew/lang/ByteArrayReader;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 83
    .local v11, "reader":Lcom/drew/lang/RandomAccessReader;
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 88
    const/4 v14, 0x1

    :try_start_0
    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->getBit(I)Z

    move-result v10

    .line 91
    .local v10, "isAnimation":Z
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->getBit(I)Z

    move-result v7

    .line 95
    .local v7, "hasAlpha":Z
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->getInt24(I)I

    move-result v13

    .line 96
    .local v13, "widthMinusOne":I
    const/4 v14, 0x7

    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->getInt24(I)I

    move-result v9

    .line 98
    .local v9, "heightMinusOne":I
    new-instance v5, Lcom/drew/metadata/webp/WebpDirectory;

    invoke-direct {v5}, Lcom/drew/metadata/webp/WebpDirectory;-><init>()V

    .line 99
    .local v5, "directory":Lcom/drew/metadata/webp/WebpDirectory;
    const/4 v14, 0x2

    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v5, v14, v15}, Lcom/drew/metadata/webp/WebpDirectory;->setInt(II)V

    .line 100
    const/4 v14, 0x1

    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v5, v14, v15}, Lcom/drew/metadata/webp/WebpDirectory;->setInt(II)V

    .line 101
    const/4 v14, 0x3

    invoke-virtual {v5, v14, v7}, Lcom/drew/metadata/webp/WebpDirectory;->setBoolean(IZ)V

    .line 102
    const/4 v14, 0x4

    invoke-virtual {v5, v14, v10}, Lcom/drew/metadata/webp/WebpDirectory;->setBoolean(IZ)V

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/drew/metadata/webp/WebpRiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v14, v5}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 106
    .end local v5    # "directory":Lcom/drew/metadata/webp/WebpDirectory;
    .end local v7    # "hasAlpha":Z
    .end local v9    # "heightMinusOne":I
    .end local v10    # "isAnimation":Z
    .end local v13    # "widthMinusOne":I
    :catch_0
    move-exception v6

    .line 107
    .local v6, "e":Ljava/io/IOException;
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v14}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_0

    .line 109
    .end local v6    # "e":Ljava/io/IOException;
    .end local v11    # "reader":Lcom/drew/lang/RandomAccessReader;
    :cond_4
    const-string v14, "VP8L"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x4

    if-le v14, v15, :cond_5

    .line 110
    new-instance v11, Lcom/drew/lang/ByteArrayReader;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 111
    .restart local v11    # "reader":Lcom/drew/lang/RandomAccessReader;
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 117
    const/4 v14, 0x0

    :try_start_1
    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->getInt8(I)B

    move-result v14

    const/16 v15, 0x2f

    if-ne v14, v15, :cond_0

    .line 119
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v1

    .line 120
    .local v1, "b1":I
    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v2

    .line 121
    .local v2, "b2":I
    const/4 v14, 0x3

    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v3

    .line 122
    .local v3, "b3":I
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v4

    .line 124
    .local v4, "b4":I
    and-int/lit8 v14, v2, 0x3f

    shl-int/lit8 v14, v14, 0x8

    or-int v13, v14, v1

    .line 126
    .restart local v13    # "widthMinusOne":I
    and-int/lit8 v14, v4, 0xf

    shl-int/lit8 v14, v14, 0xa

    shl-int/lit8 v15, v3, 0x2

    or-int/2addr v14, v15

    and-int/lit16 v15, v2, 0xc0

    shr-int/lit8 v15, v15, 0x6

    or-int v9, v14, v15

    .line 128
    .restart local v9    # "heightMinusOne":I
    new-instance v5, Lcom/drew/metadata/webp/WebpDirectory;

    invoke-direct {v5}, Lcom/drew/metadata/webp/WebpDirectory;-><init>()V

    .line 129
    .restart local v5    # "directory":Lcom/drew/metadata/webp/WebpDirectory;
    const/4 v14, 0x2

    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v5, v14, v15}, Lcom/drew/metadata/webp/WebpDirectory;->setInt(II)V

    .line 130
    const/4 v14, 0x1

    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v5, v14, v15}, Lcom/drew/metadata/webp/WebpDirectory;->setInt(II)V

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/drew/metadata/webp/WebpRiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v14, v5}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 134
    .end local v1    # "b1":I
    .end local v2    # "b2":I
    .end local v3    # "b3":I
    .end local v4    # "b4":I
    .end local v5    # "directory":Lcom/drew/metadata/webp/WebpDirectory;
    .end local v9    # "heightMinusOne":I
    .end local v13    # "widthMinusOne":I
    :catch_1
    move-exception v6

    .line 135
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v14}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_0

    .line 137
    .end local v6    # "e":Ljava/io/IOException;
    .end local v11    # "reader":Lcom/drew/lang/RandomAccessReader;
    :cond_5
    const-string v14, "VP8 "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0x9

    if-le v14, v15, :cond_0

    .line 138
    new-instance v11, Lcom/drew/lang/ByteArrayReader;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 139
    .restart local v11    # "reader":Lcom/drew/lang/RandomAccessReader;
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 146
    const/4 v14, 0x3

    :try_start_2
    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v14

    const/16 v15, 0x9d

    if-ne v14, v15, :cond_0

    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    const/4 v14, 0x5

    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v14

    const/16 v15, 0x2a

    if-ne v14, v15, :cond_0

    .line 150
    const/4 v14, 0x6

    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v12

    .line 151
    .local v12, "width":I
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v8

    .line 153
    .local v8, "height":I
    new-instance v5, Lcom/drew/metadata/webp/WebpDirectory;

    invoke-direct {v5}, Lcom/drew/metadata/webp/WebpDirectory;-><init>()V

    .line 154
    .restart local v5    # "directory":Lcom/drew/metadata/webp/WebpDirectory;
    const/4 v14, 0x2

    invoke-virtual {v5, v14, v12}, Lcom/drew/metadata/webp/WebpDirectory;->setInt(II)V

    .line 155
    const/4 v14, 0x1

    invoke-virtual {v5, v14, v8}, Lcom/drew/metadata/webp/WebpDirectory;->setInt(II)V

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/drew/metadata/webp/WebpRiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v14, v5}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 159
    .end local v5    # "directory":Lcom/drew/metadata/webp/WebpDirectory;
    .end local v8    # "height":I
    .end local v12    # "width":I
    :catch_2
    move-exception v6

    .line 160
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v14}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_0
.end method

.method public shouldAcceptChunk(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fourCC"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 63
    const-string v0, "VP8X"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VP8L"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VP8 "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EXIF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ICCP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XMP "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAcceptRiffIdentifier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 58
    const-string v0, "WEBP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
