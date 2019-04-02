.class public Lcom/drew/metadata/photoshop/PsdReader;
.super Ljava/lang/Object;
.source "PsdReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/drew/metadata/photoshop/PsdReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/drew/metadata/photoshop/PsdReader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V
    .locals 16
    .param p1, "reader"    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 39
    new-instance v5, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;

    invoke-direct {v5}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;-><init>()V

    .line 40
    .local v5, "directory":Lcom/drew/metadata/photoshop/PsdHeaderDirectory;
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 45
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v9

    .line 46
    .local v9, "signature":I
    const v13, 0x38425053

    if-eq v9, v13, :cond_0

    .line 48
    const-string v13, "Invalid PSD file signature"

    invoke-virtual {v5, v13}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->addError(Ljava/lang/String;)V

    .line 120
    .end local v9    # "signature":I
    :goto_0
    return-void

    .line 52
    .restart local v9    # "signature":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v12

    .line 53
    .local v12, "version":I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    .line 55
    const-string v13, "Invalid PSD file version (must be 1 or 2)"

    invoke-virtual {v5, v13}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->addError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v9    # "signature":I
    .end local v12    # "version":I
    :catch_0
    move-exception v6

    .line 79
    .local v6, "e":Ljava/io/IOException;
    const-string v13, "Unable to read PSD header"

    invoke-virtual {v5, v13}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v9    # "signature":I
    .restart local v12    # "version":I
    :cond_1
    const-wide/16 v14, 0x6

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v3

    .line 63
    .local v3, "channelCount":I
    const/4 v13, 0x1

    invoke-virtual {v5, v13, v3}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->setInt(II)V

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v7

    .line 67
    .local v7, "imageHeight":I
    const/4 v13, 0x2

    invoke-virtual {v5, v13, v7}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->setInt(II)V

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v8

    .line 71
    .local v8, "imageWidth":I
    const/4 v13, 0x3

    invoke-virtual {v5, v13, v8}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->setInt(II)V

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    .line 74
    .local v2, "bitsPerChannel":I
    const/4 v13, 0x4

    invoke-virtual {v5, v13, v2}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->setInt(II)V

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v4

    .line 77
    .local v4, "colorMode":I
    const/4 v13, 0x5

    invoke-virtual {v5, v13, v4}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->setInt(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v10

    .line 100
    .local v10, "sectionLength":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/drew/lang/SequentialReader;->skip(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v10

    .line 110
    sget-boolean v13, Lcom/drew/metadata/photoshop/PsdReader;->$assertionsDisabled:Z

    if-nez v13, :cond_2

    const-wide/32 v14, 0x7fffffff

    cmp-long v13, v10, v14

    if-lez v13, :cond_2

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 113
    :catch_1
    move-exception v13

    goto :goto_0

    .line 101
    .end local v10    # "sectionLength":J
    :catch_2
    move-exception v6

    .line 102
    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 112
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v10    # "sectionLength":J
    :cond_2
    new-instance v13, Lcom/drew/metadata/photoshop/PhotoshopReader;

    invoke-direct {v13}, Lcom/drew/metadata/photoshop/PhotoshopReader;-><init>()V

    long-to-int v14, v10

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v14, v1}, Lcom/drew/metadata/photoshop/PhotoshopReader;->extract(Lcom/drew/lang/SequentialReader;ILcom/drew/metadata/Metadata;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
