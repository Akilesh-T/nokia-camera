.class public Lcom/drew/metadata/pcx/PcxReader;
.super Ljava/lang/Object;
.source "PcxReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V
    .locals 10
    .param p1, "reader"    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/16 v8, 0xa

    const/4 v9, 0x1

    .line 43
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/drew/lang/SequentialReader;->setMotorolaByteOrder(Z)V

    .line 45
    new-instance v0, Lcom/drew/metadata/pcx/PcxDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/pcx/PcxDirectory;-><init>()V

    .line 46
    .local v0, "directory":Lcom/drew/metadata/pcx/PcxDirectory;
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 49
    :try_start_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v4

    .line 50
    .local v4, "identifier":B
    if-eq v4, v8, :cond_1

    .line 51
    new-instance v7, Lcom/drew/imaging/ImageProcessingException;

    const-string v8, "Invalid PCX identifier byte"

    invoke-direct {v7, v8}, Lcom/drew/imaging/ImageProcessingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v4    # "identifier":B
    :catch_0
    move-exception v2

    .line 84
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception reading PCX file metadata: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/drew/metadata/pcx/PcxDirectory;->addError(Ljava/lang/String;)V

    .line 86
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v4    # "identifier":B
    :cond_1
    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 55
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v1

    .line 56
    .local v1, "encoding":B
    if-eq v1, v9, :cond_2

    .line 57
    new-instance v7, Lcom/drew/imaging/ImageProcessingException;

    const-string v8, "Invalid PCX encoding byte"

    invoke-direct {v7, v8}, Lcom/drew/imaging/ImageProcessingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 59
    :cond_2
    const/4 v7, 0x2

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 60
    const/4 v7, 0x3

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 61
    const/4 v7, 0x4

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 62
    const/4 v7, 0x5

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 63
    const/4 v7, 0x6

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 64
    const/4 v7, 0x7

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 65
    const/16 v7, 0x8

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 66
    const/16 v7, 0x9

    const/16 v8, 0x30

    invoke-virtual {p1, v8}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/drew/metadata/pcx/PcxDirectory;->setByteArray(I[B)V

    .line 67
    const-wide/16 v8, 0x1

    invoke-virtual {p1, v8, v9}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 68
    const/16 v7, 0xa

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 69
    const/16 v7, 0xb

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 71
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v5

    .line 72
    .local v5, "paletteType":I
    if-eqz v5, :cond_3

    .line 73
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v5}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 75
    :cond_3
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v3

    .line 76
    .local v3, "hScrSize":I
    if-eqz v3, :cond_4

    .line 77
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v3}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 79
    :cond_4
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v6

    .line 80
    .local v6, "vScrSize":I
    if-eqz v6, :cond_0

    .line 81
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v6}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
