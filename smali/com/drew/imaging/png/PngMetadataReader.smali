.class public Lcom/drew/imaging/png/PngMetadataReader;
.super Ljava/lang/Object;
.source "PngMetadataReader.java"


# static fields
.field private static _desiredChunkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/drew/imaging/png/PngChunkType;",
            ">;"
        }
    .end annotation
.end field

.field private static _latin1Encoding:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    sget-object v1, Lcom/drew/lang/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v1, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 62
    .local v0, "desiredChunkTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/drew/imaging/png/PngChunkType;>;"
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->IHDR:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->PLTE:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->tRNS:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->cHRM:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->sRGB:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->gAMA:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->iCCP:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->bKGD:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->tEXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->zTXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->iTXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->tIME:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->pHYs:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->sBIT:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/drew/imaging/png/PngMetadataReader;->_desiredChunkTypes:Ljava/util/Set;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static processChunk(Lcom/drew/metadata/Metadata;Lcom/drew/imaging/png/PngChunk;)V
    .locals 42
    .param p0, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "chunk"    # Lcom/drew/imaging/png/PngChunk;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/drew/imaging/png/PngChunk;->getType()Lcom/drew/imaging/png/PngChunkType;

    move-result-object v7

    .line 115
    .local v7, "chunkType":Lcom/drew/imaging/png/PngChunkType;
    invoke-virtual/range {p1 .. p1}, Lcom/drew/imaging/png/PngChunk;->getBytes()[B

    move-result-object v4

    .line 117
    .local v4, "bytes":[B
    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->IHDR:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1

    .line 118
    new-instance v15, Lcom/drew/imaging/png/PngHeader;

    invoke-direct {v15, v4}, Lcom/drew/imaging/png/PngHeader;-><init>([B)V

    .line 119
    .local v15, "header":Lcom/drew/imaging/png/PngHeader;
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->IHDR:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 120
    .local v13, "directory":Lcom/drew/metadata/png/PngDirectory;
    const/16 v36, 0x1

    invoke-virtual {v15}, Lcom/drew/imaging/png/PngHeader;->getImageWidth()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 121
    const/16 v36, 0x2

    invoke-virtual {v15}, Lcom/drew/imaging/png/PngHeader;->getImageHeight()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 122
    const/16 v36, 0x3

    invoke-virtual {v15}, Lcom/drew/imaging/png/PngHeader;->getBitsPerSample()B

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 123
    const/16 v36, 0x4

    invoke-virtual {v15}, Lcom/drew/imaging/png/PngHeader;->getColorType()Lcom/drew/imaging/png/PngColorType;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/drew/imaging/png/PngColorType;->getNumericValue()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 124
    const/16 v36, 0x5

    invoke-virtual {v15}, Lcom/drew/imaging/png/PngHeader;->getCompressionType()B

    move-result v37

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 125
    const/16 v36, 0x6

    invoke-virtual {v15}, Lcom/drew/imaging/png/PngHeader;->getFilterMethod()B

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 126
    const/16 v36, 0x7

    invoke-virtual {v15}, Lcom/drew/imaging/png/PngHeader;->getInterlaceMethod()B

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 127
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 328
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    .end local v15    # "header":Lcom/drew/imaging/png/PngHeader;
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->PLTE:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_2

    .line 129
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->PLTE:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 130
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    const/16 v36, 0x8

    array-length v0, v4

    move/from16 v37, v0

    div-int/lit8 v37, v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 131
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_0

    .line 132
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    :cond_2
    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->tRNS:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3

    .line 133
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->tRNS:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 134
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    const/16 v36, 0x9

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 135
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_0

    .line 136
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    :cond_3
    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->sRGB:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_4

    .line 137
    const/16 v36, 0x0

    aget-byte v28, v4, v36

    .line 138
    .local v28, "srgbRenderingIntent":I
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->sRGB:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 139
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    const/16 v36, 0xa

    move/from16 v0, v36

    move/from16 v1, v28

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 140
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_0

    .line 141
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    .end local v28    # "srgbRenderingIntent":I
    :cond_4
    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->cHRM:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 142
    new-instance v6, Lcom/drew/imaging/png/PngChromaticities;

    invoke-direct {v6, v4}, Lcom/drew/imaging/png/PngChromaticities;-><init>([B)V

    .line 143
    .local v6, "chromaticities":Lcom/drew/imaging/png/PngChromaticities;
    new-instance v13, Lcom/drew/metadata/png/PngChromaticitiesDirectory;

    invoke-direct {v13}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;-><init>()V

    .line 144
    .local v13, "directory":Lcom/drew/metadata/png/PngChromaticitiesDirectory;
    const/16 v36, 0x1

    invoke-virtual {v6}, Lcom/drew/imaging/png/PngChromaticities;->getWhitePointX()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 145
    const/16 v36, 0x2

    invoke-virtual {v6}, Lcom/drew/imaging/png/PngChromaticities;->getWhitePointY()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 146
    const/16 v36, 0x3

    invoke-virtual {v6}, Lcom/drew/imaging/png/PngChromaticities;->getRedX()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 147
    const/16 v36, 0x4

    invoke-virtual {v6}, Lcom/drew/imaging/png/PngChromaticities;->getRedY()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 148
    const/16 v36, 0x5

    invoke-virtual {v6}, Lcom/drew/imaging/png/PngChromaticities;->getGreenX()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 149
    const/16 v36, 0x6

    invoke-virtual {v6}, Lcom/drew/imaging/png/PngChromaticities;->getGreenY()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 150
    const/16 v36, 0x7

    invoke-virtual {v6}, Lcom/drew/imaging/png/PngChromaticities;->getBlueX()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 151
    const/16 v36, 0x8

    invoke-virtual {v6}, Lcom/drew/imaging/png/PngChromaticities;->getBlueY()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_0

    .line 153
    .end local v6    # "chromaticities":Lcom/drew/imaging/png/PngChromaticities;
    .end local v13    # "directory":Lcom/drew/metadata/png/PngChromaticitiesDirectory;
    :cond_5
    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->gAMA:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_6

    .line 154
    invoke-static {v4}, Lcom/drew/lang/ByteConvert;->toInt32BigEndian([B)I

    move-result v14

    .line 155
    .local v14, "gammaInt":I
    new-instance v36, Lcom/drew/lang/SequentialByteArrayReader;

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    invoke-virtual/range {v36 .. v36}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    .line 156
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->gAMA:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 157
    .local v13, "directory":Lcom/drew/metadata/png/PngDirectory;
    const/16 v36, 0xb

    int-to-double v0, v14

    move-wide/from16 v38, v0

    const-wide v40, 0x40f86a0000000000L    # 100000.0

    div-double v38, v38, v40

    move/from16 v0, v36

    move-wide/from16 v1, v38

    invoke-virtual {v13, v0, v1, v2}, Lcom/drew/metadata/png/PngDirectory;->setDouble(ID)V

    .line 158
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_0

    .line 159
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    .end local v14    # "gammaInt":I
    :cond_6
    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->iCCP:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_8

    .line 160
    new-instance v26, Lcom/drew/lang/SequentialByteArrayReader;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 163
    .local v26, "reader":Lcom/drew/lang/SequentialReader;
    const/16 v36, 0x50

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/drew/lang/SequentialReader;->getNullTerminatedBytes(I)[B

    move-result-object v25

    .line 164
    .local v25, "profileNameBytes":[B
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->iCCP:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 165
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    const/16 v36, 0xc

    new-instance v37, Lcom/drew/metadata/StringValue;

    sget-object v38, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    move/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setStringValue(ILcom/drew/metadata/StringValue;)V

    .line 166
    invoke-virtual/range {v26 .. v26}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v10

    .line 168
    .local v10, "compressionMethod":B
    if-nez v10, :cond_7

    .line 171
    array-length v0, v4

    move/from16 v36, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    add-int/lit8 v37, v37, 0x1

    sub-int v5, v36, v37

    .line 172
    .local v5, "bytesLeft":I
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v8

    .line 175
    .local v8, "compressedProfile":[B
    :try_start_0
    new-instance v17, Ljava/util/zip/InflaterInputStream;

    new-instance v36, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v36

    invoke-direct {v0, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 176
    .local v17, "inflateStream":Ljava/util/zip/InflaterInputStream;
    new-instance v36, Lcom/drew/metadata/icc/IccReader;

    invoke-direct/range {v36 .. v36}, Lcom/drew/metadata/icc/IccReader;-><init>()V

    new-instance v37, Lcom/drew/lang/RandomAccessStreamReader;

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/drew/lang/RandomAccessStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2, v13}, Lcom/drew/metadata/icc/IccReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    .line 177
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v5    # "bytesLeft":I
    .end local v8    # "compressedProfile":[B
    .end local v17    # "inflateStream":Ljava/util/zip/InflaterInputStream;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_0

    .line 178
    .restart local v5    # "bytesLeft":I
    .restart local v8    # "compressedProfile":[B
    :catch_0
    move-exception v35

    .line 179
    .local v35, "zex":Ljava/util/zip/ZipException;
    const-string v36, "Exception decompressing PNG iCCP chunk : %s"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v35 .. v35}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_1

    .line 183
    .end local v5    # "bytesLeft":I
    .end local v8    # "compressedProfile":[B
    .end local v35    # "zex":Ljava/util/zip/ZipException;
    :cond_7
    const-string v36, "Invalid compression method value"

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    goto :goto_1

    .line 186
    .end local v10    # "compressionMethod":B
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    .end local v25    # "profileNameBytes":[B
    .end local v26    # "reader":Lcom/drew/lang/SequentialReader;
    :cond_8
    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->bKGD:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_9

    .line 187
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->bKGD:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 188
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    const/16 v36, 0xf

    move/from16 v0, v36

    invoke-virtual {v13, v0, v4}, Lcom/drew/metadata/png/PngDirectory;->setByteArray(I[B)V

    .line 189
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_0

    .line 190
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    :cond_9
    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->tEXt:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_a

    .line 191
    new-instance v26, Lcom/drew/lang/SequentialByteArrayReader;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 194
    .restart local v26    # "reader":Lcom/drew/lang/SequentialReader;
    const/16 v36, 0x50

    sget-object v37, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    move-object/from16 v0, v26

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/SequentialReader;->getNullTerminatedStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object v19

    .line 195
    .local v19, "keywordsv":Lcom/drew/metadata/StringValue;
    invoke-virtual/range {v19 .. v19}, Lcom/drew/metadata/StringValue;->toString()Ljava/lang/String;

    move-result-object v18

    .line 199
    .local v18, "keyword":Ljava/lang/String;
    array-length v0, v4

    move/from16 v36, v0

    invoke-virtual/range {v19 .. v19}, Lcom/drew/metadata/StringValue;->getBytes()[B

    move-result-object v37

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    sub-int v5, v36, v37

    .line 200
    .restart local v5    # "bytesLeft":I
    sget-object v36, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Lcom/drew/lang/SequentialReader;->getNullTerminatedStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object v33

    .line 201
    .local v33, "value":Lcom/drew/metadata/StringValue;
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v30, "textPairs":Ljava/util/List;, "Ljava/util/List<Lcom/drew/lang/KeyValuePair;>;"
    new-instance v36, Lcom/drew/lang/KeyValuePair;

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/drew/lang/KeyValuePair;-><init>(Ljava/lang/String;Lcom/drew/metadata/StringValue;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->tEXt:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 204
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    const/16 v36, 0xd

    move/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setObject(ILjava/lang/Object;)V

    .line 205
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_0

    .line 206
    .end local v5    # "bytesLeft":I
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    .end local v18    # "keyword":Ljava/lang/String;
    .end local v19    # "keywordsv":Lcom/drew/metadata/StringValue;
    .end local v26    # "reader":Lcom/drew/lang/SequentialReader;
    .end local v30    # "textPairs":Ljava/util/List;, "Ljava/util/List<Lcom/drew/lang/KeyValuePair;>;"
    .end local v33    # "value":Lcom/drew/metadata/StringValue;
    :cond_a
    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->zTXt:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_d

    .line 207
    new-instance v26, Lcom/drew/lang/SequentialByteArrayReader;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 210
    .restart local v26    # "reader":Lcom/drew/lang/SequentialReader;
    const/16 v36, 0x50

    sget-object v37, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    move-object/from16 v0, v26

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/SequentialReader;->getNullTerminatedStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object v19

    .line 211
    .restart local v19    # "keywordsv":Lcom/drew/metadata/StringValue;
    invoke-virtual/range {v19 .. v19}, Lcom/drew/metadata/StringValue;->toString()Ljava/lang/String;

    move-result-object v18

    .line 212
    .restart local v18    # "keyword":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v10

    .line 216
    .restart local v10    # "compressionMethod":B
    array-length v0, v4

    move/from16 v36, v0

    invoke-virtual/range {v19 .. v19}, Lcom/drew/metadata/StringValue;->getBytes()[B

    move-result-object v37

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    add-int/lit8 v37, v37, 0x1

    sub-int v5, v36, v37

    .line 217
    .restart local v5    # "bytesLeft":I
    const/16 v29, 0x0

    .line 218
    .local v29, "textBytes":[B
    if-nez v10, :cond_b

    .line 220
    :try_start_1
    new-instance v36, Ljava/util/zip/InflaterInputStream;

    new-instance v37, Ljava/io/ByteArrayInputStream;

    array-length v0, v4

    move/from16 v38, v0

    sub-int v38, v38, v5

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-direct {v0, v4, v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct/range {v36 .. v37}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static/range {v36 .. v36}, Lcom/drew/lang/StreamUtil;->readAllBytes(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v29

    .line 232
    :goto_2
    if-eqz v29, :cond_0

    .line 233
    const-string v36, "XML:com.adobe.xmp"

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_c

    .line 235
    new-instance v36, Lcom/drew/metadata/xmp/XmpReader;

    invoke-direct/range {v36 .. v36}, Lcom/drew/metadata/xmp/XmpReader;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;)V

    goto/16 :goto_0

    .line 221
    :catch_1
    move-exception v35

    .line 222
    .restart local v35    # "zex":Ljava/util/zip/ZipException;
    const/16 v29, 0x0

    .line 223
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->zTXt:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 224
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    const-string v36, "Exception decompressing PNG zTXt chunk with keyword \"%s\": %s"

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v18, v37, v38

    const/16 v38, 0x1

    invoke-virtual/range {v35 .. v35}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_2

    .line 228
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    .end local v35    # "zex":Ljava/util/zip/ZipException;
    :cond_b
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->zTXt:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 229
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    const-string v36, "Invalid compression method value"

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_2

    .line 237
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    :cond_c
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .restart local v30    # "textPairs":Ljava/util/List;, "Ljava/util/List<Lcom/drew/lang/KeyValuePair;>;"
    new-instance v36, Lcom/drew/lang/KeyValuePair;

    new-instance v37, Lcom/drew/metadata/StringValue;

    sget-object v38, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/drew/lang/KeyValuePair;-><init>(Ljava/lang/String;Lcom/drew/metadata/StringValue;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->zTXt:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 240
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    const/16 v36, 0xd

    move/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setObject(ILjava/lang/Object;)V

    .line 241
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_0

    .line 244
    .end local v5    # "bytesLeft":I
    .end local v10    # "compressionMethod":B
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    .end local v18    # "keyword":Ljava/lang/String;
    .end local v19    # "keywordsv":Lcom/drew/metadata/StringValue;
    .end local v26    # "reader":Lcom/drew/lang/SequentialReader;
    .end local v29    # "textBytes":[B
    .end local v30    # "textPairs":Ljava/util/List;, "Ljava/util/List<Lcom/drew/lang/KeyValuePair;>;"
    :cond_d
    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->iTXt:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_12

    .line 245
    new-instance v26, Lcom/drew/lang/SequentialByteArrayReader;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 248
    .restart local v26    # "reader":Lcom/drew/lang/SequentialReader;
    const/16 v36, 0x50

    sget-object v37, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    move-object/from16 v0, v26

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/SequentialReader;->getNullTerminatedStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object v19

    .line 249
    .restart local v19    # "keywordsv":Lcom/drew/metadata/StringValue;
    invoke-virtual/range {v19 .. v19}, Lcom/drew/metadata/StringValue;->toString()Ljava/lang/String;

    move-result-object v18

    .line 250
    .restart local v18    # "keyword":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v9

    .line 251
    .local v9, "compressionFlag":B
    invoke-virtual/range {v26 .. v26}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v10

    .line 253
    .restart local v10    # "compressionMethod":B
    array-length v0, v4

    move/from16 v36, v0

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/drew/lang/SequentialReader;->getNullTerminatedBytes(I)[B

    move-result-object v20

    .line 254
    .local v20, "languageTagBytes":[B
    array-length v0, v4

    move/from16 v36, v0

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/drew/lang/SequentialReader;->getNullTerminatedBytes(I)[B

    move-result-object v31

    .line 258
    .local v31, "translatedKeywordBytes":[B
    array-length v0, v4

    move/from16 v36, v0

    invoke-virtual/range {v19 .. v19}, Lcom/drew/metadata/StringValue;->getBytes()[B

    move-result-object v37

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    add-int/lit8 v37, v37, 0x1

    add-int/lit8 v37, v37, 0x1

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v38, v0

    add-int v37, v37, v38

    add-int/lit8 v37, v37, 0x1

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v38, v0

    add-int v37, v37, v38

    add-int/lit8 v37, v37, 0x1

    sub-int v5, v36, v37

    .line 259
    .restart local v5    # "bytesLeft":I
    const/16 v29, 0x0

    .line 260
    .restart local v29    # "textBytes":[B
    if-nez v9, :cond_e

    .line 261
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/drew/lang/SequentialReader;->getNullTerminatedBytes(I)[B

    move-result-object v29

    .line 283
    :goto_3
    if-eqz v29, :cond_0

    .line 284
    const-string v36, "XML:com.adobe.xmp"

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_11

    .line 286
    new-instance v36, Lcom/drew/metadata/xmp/XmpReader;

    invoke-direct/range {v36 .. v36}, Lcom/drew/metadata/xmp/XmpReader;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;)V

    goto/16 :goto_0

    .line 262
    :cond_e
    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v9, v0, :cond_10

    .line 263
    if-nez v10, :cond_f

    .line 265
    :try_start_2
    new-instance v36, Ljava/util/zip/InflaterInputStream;

    new-instance v37, Ljava/io/ByteArrayInputStream;

    array-length v0, v4

    move/from16 v38, v0

    sub-int v38, v38, v5

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-direct {v0, v4, v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct/range {v36 .. v37}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static/range {v36 .. v36}, Lcom/drew/lang/StreamUtil;->readAllBytes(Ljava/io/InputStream;)[B
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v29

    goto :goto_3

    .line 266
    :catch_2
    move-exception v35

    .line 267
    .restart local v35    # "zex":Ljava/util/zip/ZipException;
    const/16 v29, 0x0

    .line 268
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->iTXt:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 269
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    const-string v36, "Exception decompressing PNG iTXt chunk with keyword \"%s\": %s"

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v18, v37, v38

    const/16 v38, 0x1

    invoke-virtual/range {v35 .. v35}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_3

    .line 273
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    .end local v35    # "zex":Ljava/util/zip/ZipException;
    :cond_f
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->iTXt:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 274
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    const-string v36, "Invalid compression method value"

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_3

    .line 278
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    :cond_10
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->iTXt:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 279
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    const-string v36, "Invalid compression flag value"

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_3

    .line 288
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    :cond_11
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .restart local v30    # "textPairs":Ljava/util/List;, "Ljava/util/List<Lcom/drew/lang/KeyValuePair;>;"
    new-instance v36, Lcom/drew/lang/KeyValuePair;

    new-instance v37, Lcom/drew/metadata/StringValue;

    sget-object v38, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/drew/lang/KeyValuePair;-><init>(Ljava/lang/String;Lcom/drew/metadata/StringValue;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->iTXt:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 291
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    const/16 v36, 0xd

    move/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setObject(ILjava/lang/Object;)V

    .line 292
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_0

    .line 295
    .end local v5    # "bytesLeft":I
    .end local v9    # "compressionFlag":B
    .end local v10    # "compressionMethod":B
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    .end local v18    # "keyword":Ljava/lang/String;
    .end local v19    # "keywordsv":Lcom/drew/metadata/StringValue;
    .end local v20    # "languageTagBytes":[B
    .end local v26    # "reader":Lcom/drew/lang/SequentialReader;
    .end local v29    # "textBytes":[B
    .end local v30    # "textPairs":Ljava/util/List;, "Ljava/util/List<Lcom/drew/lang/KeyValuePair;>;"
    .end local v31    # "translatedKeywordBytes":[B
    :cond_12
    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->tIME:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_14

    .line 296
    new-instance v26, Lcom/drew/lang/SequentialByteArrayReader;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 297
    .local v26, "reader":Lcom/drew/lang/SequentialByteArrayReader;
    invoke-virtual/range {v26 .. v26}, Lcom/drew/lang/SequentialByteArrayReader;->getUInt16()I

    move-result v34

    .line 298
    .local v34, "year":I
    invoke-virtual/range {v26 .. v26}, Lcom/drew/lang/SequentialByteArrayReader;->getUInt8()S

    move-result v22

    .line 299
    .local v22, "month":I
    invoke-virtual/range {v26 .. v26}, Lcom/drew/lang/SequentialByteArrayReader;->getUInt8()S

    move-result v12

    .line 300
    .local v12, "day":I
    invoke-virtual/range {v26 .. v26}, Lcom/drew/lang/SequentialByteArrayReader;->getUInt8()S

    move-result v16

    .line 301
    .local v16, "hour":I
    invoke-virtual/range {v26 .. v26}, Lcom/drew/lang/SequentialByteArrayReader;->getUInt8()S

    move-result v21

    .line 302
    .local v21, "minute":I
    invoke-virtual/range {v26 .. v26}, Lcom/drew/lang/SequentialByteArrayReader;->getUInt8()S

    move-result v27

    .line 303
    .local v27, "second":I
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->tIME:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 304
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    add-int/lit8 v36, v22, -0x1

    move/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1, v12}, Lcom/drew/lang/DateUtil;->isValidDate(III)Z

    move-result v36

    if-eqz v36, :cond_13

    move/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/drew/lang/DateUtil;->isValidTime(III)Z

    move-result v36

    if-eqz v36, :cond_13

    .line 305
    const-string v36, "%04d:%02d:%02d %02d:%02d:%02d"

    const/16 v37, 0x6

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 306
    .local v11, "dateString":Ljava/lang/String;
    const/16 v36, 0xe

    move/from16 v0, v36

    invoke-virtual {v13, v0, v11}, Lcom/drew/metadata/png/PngDirectory;->setString(ILjava/lang/String;)V

    .line 312
    .end local v11    # "dateString":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_0

    .line 308
    :cond_13
    const-string v36, "PNG tIME data describes an invalid date/time: year=%d month=%d day=%d hour=%d minute=%d second=%d"

    const/16 v37, 0x6

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    goto :goto_4

    .line 313
    .end local v12    # "day":I
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    .end local v16    # "hour":I
    .end local v21    # "minute":I
    .end local v22    # "month":I
    .end local v26    # "reader":Lcom/drew/lang/SequentialByteArrayReader;
    .end local v27    # "second":I
    .end local v34    # "year":I
    :cond_14
    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->pHYs:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_15

    .line 314
    new-instance v26, Lcom/drew/lang/SequentialByteArrayReader;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 315
    .restart local v26    # "reader":Lcom/drew/lang/SequentialByteArrayReader;
    invoke-virtual/range {v26 .. v26}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    move-result v23

    .line 316
    .local v23, "pixelsPerUnitX":I
    invoke-virtual/range {v26 .. v26}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    move-result v24

    .line 317
    .local v24, "pixelsPerUnitY":I
    invoke-virtual/range {v26 .. v26}, Lcom/drew/lang/SequentialByteArrayReader;->getInt8()B

    move-result v32

    .line 318
    .local v32, "unitSpecifier":B
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->pHYs:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 319
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    const/16 v36, 0x10

    move/from16 v0, v36

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 320
    const/16 v36, 0x11

    move/from16 v0, v36

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 321
    const/16 v36, 0x12

    move/from16 v0, v36

    move/from16 v1, v32

    invoke-virtual {v13, v0, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 322
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_0

    .line 323
    .end local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    .end local v23    # "pixelsPerUnitX":I
    .end local v24    # "pixelsPerUnitY":I
    .end local v26    # "reader":Lcom/drew/lang/SequentialByteArrayReader;
    .end local v32    # "unitSpecifier":B
    :cond_15
    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->sBIT:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 324
    new-instance v13, Lcom/drew/metadata/png/PngDirectory;

    sget-object v36, Lcom/drew/imaging/png/PngChunkType;->sBIT:Lcom/drew/imaging/png/PngChunkType;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 325
    .restart local v13    # "directory":Lcom/drew/metadata/png/PngDirectory;
    const/16 v36, 0x13

    move/from16 v0, v36

    invoke-virtual {v13, v0, v4}, Lcom/drew/metadata/png/PngDirectory;->setByteArray(I[B)V

    .line 326
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_0
.end method

.method public static readMetadata(Ljava/io/File;)Lcom/drew/metadata/Metadata;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 86
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lcom/drew/imaging/png/PngMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 88
    .local v1, "metadata":Lcom/drew/metadata/Metadata;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 90
    new-instance v2, Lcom/drew/metadata/file/FileMetadataReader;

    invoke-direct {v2}, Lcom/drew/metadata/file/FileMetadataReader;-><init>()V

    invoke-virtual {v2, p0, v1}, Lcom/drew/metadata/file/FileMetadataReader;->read(Ljava/io/File;Lcom/drew/metadata/Metadata;)V

    .line 91
    return-object v1

    .line 88
    .end local v1    # "metadata":Lcom/drew/metadata/Metadata;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method public static readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;
    .locals 8
    .param p0, "inputStream"    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v5, Lcom/drew/imaging/png/PngChunkReader;

    invoke-direct {v5}, Lcom/drew/imaging/png/PngChunkReader;-><init>()V

    new-instance v6, Lcom/drew/lang/StreamReader;

    invoke-direct {v6, p0}, Lcom/drew/lang/StreamReader;-><init>(Ljava/io/InputStream;)V

    sget-object v7, Lcom/drew/imaging/png/PngMetadataReader;->_desiredChunkTypes:Ljava/util/Set;

    invoke-virtual {v5, v6, v7}, Lcom/drew/imaging/png/PngChunkReader;->extract(Lcom/drew/lang/SequentialReader;Ljava/util/Set;)Ljava/lang/Iterable;

    move-result-object v1

    .line 99
    .local v1, "chunks":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/drew/imaging/png/PngChunk;>;"
    new-instance v4, Lcom/drew/metadata/Metadata;

    invoke-direct {v4}, Lcom/drew/metadata/Metadata;-><init>()V

    .line 101
    .local v4, "metadata":Lcom/drew/metadata/Metadata;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/imaging/png/PngChunk;

    .line 103
    .local v0, "chunk":Lcom/drew/imaging/png/PngChunk;
    :try_start_0
    invoke-static {v4, v0}, Lcom/drew/imaging/png/PngMetadataReader;->processChunk(Lcom/drew/metadata/Metadata;Lcom/drew/imaging/png/PngChunk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v5}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 109
    .end local v0    # "chunk":Lcom/drew/imaging/png/PngChunk;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method
