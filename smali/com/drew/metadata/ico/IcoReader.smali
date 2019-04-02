.class public Lcom/drew/metadata/ico/IcoReader;
.super Ljava/lang/Object;
.source "IcoReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V
    .locals 11
    .param p1, "reader"    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    .line 41
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/drew/lang/SequentialReader;->setMotorolaByteOrder(Z)V

    .line 48
    :try_start_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v4

    .line 50
    .local v4, "reserved":I
    if-eqz v4, :cond_1

    .line 51
    new-instance v0, Lcom/drew/metadata/ico/IcoDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/ico/IcoDirectory;-><init>()V

    .line 52
    .local v0, "directory":Lcom/drew/metadata/ico/IcoDirectory;
    const-string v6, "Invalid header bytes"

    invoke-virtual {v0, v6}, Lcom/drew/metadata/ico/IcoDirectory;->addError(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 109
    .end local v0    # "directory":Lcom/drew/metadata/ico/IcoDirectory;
    .end local v4    # "reserved":I
    :cond_0
    :goto_0
    return-void

    .line 57
    .restart local v4    # "reserved":I
    :cond_1
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v5

    .line 59
    .local v5, "type":I
    if-eq v5, v10, :cond_2

    if-eq v5, v7, :cond_2

    .line 60
    new-instance v0, Lcom/drew/metadata/ico/IcoDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/ico/IcoDirectory;-><init>()V

    .line 61
    .restart local v0    # "directory":Lcom/drew/metadata/ico/IcoDirectory;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- expecting 1 or 2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/drew/metadata/ico/IcoDirectory;->addError(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v0    # "directory":Lcom/drew/metadata/ico/IcoDirectory;
    .end local v4    # "reserved":I
    .end local v5    # "type":I
    :catch_0
    move-exception v1

    .line 76
    .local v1, "ex":Ljava/io/IOException;
    new-instance v0, Lcom/drew/metadata/ico/IcoDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/ico/IcoDirectory;-><init>()V

    .line 77
    .restart local v0    # "directory":Lcom/drew/metadata/ico/IcoDirectory;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading ICO file metadata: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/drew/metadata/ico/IcoDirectory;->addError(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_0

    .line 66
    .end local v0    # "directory":Lcom/drew/metadata/ico/IcoDirectory;
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "reserved":I
    .restart local v5    # "type":I
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    .line 68
    .local v2, "imageCount":I
    if-nez v2, :cond_3

    .line 69
    new-instance v0, Lcom/drew/metadata/ico/IcoDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/ico/IcoDirectory;-><init>()V

    .line 70
    .restart local v0    # "directory":Lcom/drew/metadata/ico/IcoDirectory;
    const-string v6, "Image count cannot be zero"

    invoke-virtual {v0, v6}, Lcom/drew/metadata/ico/IcoDirectory;->addError(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    .end local v0    # "directory":Lcom/drew/metadata/ico/IcoDirectory;
    :cond_3
    const/4 v3, 0x0

    .local v3, "imageIndex":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 84
    new-instance v0, Lcom/drew/metadata/ico/IcoDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/ico/IcoDirectory;-><init>()V

    .line 86
    .restart local v0    # "directory":Lcom/drew/metadata/ico/IcoDirectory;
    const/4 v6, 0x1

    :try_start_2
    invoke-virtual {v0, v6, v5}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V

    .line 88
    const/4 v6, 0x2

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V

    .line 89
    const/4 v6, 0x3

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V

    .line 90
    const/4 v6, 0x4

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V

    .line 92
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    .line 93
    if-ne v5, v10, :cond_4

    .line 95
    const/4 v6, 0x5

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V

    .line 96
    const/4 v6, 0x7

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V

    .line 102
    :goto_2
    const/16 v6, 0x9

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Lcom/drew/metadata/ico/IcoDirectory;->setLong(IJ)V

    .line 103
    const/16 v6, 0xa

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Lcom/drew/metadata/ico/IcoDirectory;->setLong(IJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 107
    :goto_3
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    :cond_4
    const/4 v6, 0x6

    :try_start_3
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V

    .line 100
    const/16 v6, 0x8

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 104
    :catch_1
    move-exception v1

    .line 105
    .restart local v1    # "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading ICO file metadata: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/drew/metadata/ico/IcoDirectory;->addError(Ljava/lang/String;)V

    goto :goto_3
.end method
