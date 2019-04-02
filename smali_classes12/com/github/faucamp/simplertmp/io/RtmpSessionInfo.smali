.class public Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;
.super Ljava/lang/Object;
.source "RtmpSessionInfo.java"


# instance fields
.field private acknowledgementWindowSize:I

.field private chunkChannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private invokedMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rxChunkSize:I

.field private totalBytesRead:I

.field private txChunkSize:I

.field private windowBytesRead:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const v0, 0x7fffffff

    iput v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->acknowledgementWindowSize:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->totalBytesRead:I

    .line 23
    iput v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->rxChunkSize:I

    .line 24
    iput v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->txChunkSize:I

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->chunkChannels:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->invokedMethods:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addInvokedCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "transactionId"    # I
    .param p2, "commandName"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->invokedMethods:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final addToWindowBytesRead(ILcom/github/faucamp/simplertmp/packets/RtmpPacket;)V
    .locals 2
    .param p1, "numBytes"    # I
    .param p2, "packet"    # Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/faucamp/simplertmp/io/WindowAckRequired;
        }
    .end annotation

    .prologue
    .line 75
    iget v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->windowBytesRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->windowBytesRead:I

    .line 76
    iget v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->totalBytesRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->totalBytesRead:I

    .line 77
    iget v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->windowBytesRead:I

    iget v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->acknowledgementWindowSize:I

    if-lt v0, v1, :cond_0

    .line 78
    iget v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->windowBytesRead:I

    iget v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->acknowledgementWindowSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->windowBytesRead:I

    .line 79
    new-instance v0, Lcom/github/faucamp/simplertmp/io/WindowAckRequired;

    iget v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->totalBytesRead:I

    invoke-direct {v0, v1, p2}, Lcom/github/faucamp/simplertmp/io/WindowAckRequired;-><init>(ILcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    throw v0

    .line 81
    :cond_0
    return-void
.end method

.method public getAcknowledgementWindowSize()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->acknowledgementWindowSize:I

    return v0
.end method

.method public getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    .locals 3
    .param p1, "chunkStreamId"    # I

    .prologue
    .line 29
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->chunkChannels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    .line 30
    .local v0, "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    .end local v0    # "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;-><init>()V

    .line 32
    .restart local v0    # "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->chunkChannels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    return-object v0
.end method

.method public getRxChunkSize()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->rxChunkSize:I

    return v0
.end method

.method public getTxChunkSize()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->txChunkSize:I

    return v0
.end method

.method public setAcknowledgmentWindowSize(I)V
    .locals 0
    .param p1, "acknowledgementWindowSize"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->acknowledgementWindowSize:I

    .line 67
    return-void
.end method

.method public setRxChunkSize(I)V
    .locals 0
    .param p1, "chunkSize"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->rxChunkSize:I

    .line 51
    return-void
.end method

.method public setTxChunkSize(I)V
    .locals 0
    .param p1, "chunkSize"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->txChunkSize:I

    .line 59
    return-void
.end method

.method public takeInvokedCommand(I)Ljava/lang/String;
    .locals 2
    .param p1, "transactionId"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->invokedMethods:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
