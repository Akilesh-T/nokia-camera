.class public Lcom/drew/imaging/riff/RiffReader;
.super Ljava/lang/Object;
.source "RiffReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processRiff(Lcom/drew/lang/SequentialReader;Lcom/drew/imaging/riff/RiffHandler;)V
    .locals 9
    .param p1, "reader"    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "handler"    # Lcom/drew/imaging/riff/RiffHandler;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/riff/RiffProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    .line 54
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/drew/lang/SequentialReader;->setMotorolaByteOrder(Z)V

    .line 58
    invoke-virtual {p1, v8}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "fileFourCC":Ljava/lang/String;
    const-string v6, "RIFF"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 61
    new-instance v6, Lcom/drew/imaging/riff/RiffProcessingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid RIFF header: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/drew/imaging/riff/RiffProcessingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v3

    .line 65
    .local v3, "fileSize":I
    move v5, v3

    .line 67
    .local v5, "sizeLeft":I
    invoke-virtual {p1, v8}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "identifier":Ljava/lang/String;
    add-int/lit8 v5, v5, -0x4

    .line 70
    invoke-interface {p2, v4}, Lcom/drew/imaging/riff/RiffHandler;->shouldAcceptRiffIdentifier(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 100
    :cond_1
    return-void

    .line 85
    .local v0, "chunkFourCC":Ljava/lang/String;
    .local v1, "chunkSize":I
    :cond_2
    invoke-interface {p2, v0}, Lcom/drew/imaging/riff/RiffHandler;->shouldAcceptChunk(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 87
    invoke-virtual {p1, v1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v6

    invoke-interface {p2, v0, v6}, Lcom/drew/imaging/riff/RiffHandler;->processChunk(Ljava/lang/String;[B)V

    .line 92
    :goto_0
    sub-int/2addr v5, v1

    .line 95
    rem-int/lit8 v6, v1, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 96
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt8()B

    .line 97
    add-int/lit8 v5, v5, -0x1

    .line 75
    .end local v0    # "chunkFourCC":Ljava/lang/String;
    .end local v1    # "chunkSize":I
    :cond_3
    if-eqz v5, :cond_1

    .line 76
    invoke-virtual {p1, v8}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0    # "chunkFourCC":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v1

    .line 78
    .restart local v1    # "chunkSize":I
    add-int/lit8 v5, v5, -0x8

    .line 82
    if-ltz v1, :cond_4

    if-ge v5, v1, :cond_2

    .line 83
    :cond_4
    new-instance v6, Lcom/drew/imaging/riff/RiffProcessingException;

    const-string v7, "Invalid RIFF chunk size"

    invoke-direct {v6, v7}, Lcom/drew/imaging/riff/RiffProcessingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 89
    :cond_5
    int-to-long v6, v1

    invoke-virtual {p1, v6, v7}, Lcom/drew/lang/SequentialReader;->skip(J)V

    goto :goto_0
.end method
