.class public Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;
.super Ljava/lang/Object;
.source "SessionInfo.java"


# static fields
.field public static final RTMP_AUDIO_CHANNEL:B = 0x7t

.field public static final RTMP_COMMAND_CHANNEL:B = 0x3t

.field public static final RTMP_CONTROL_CHANNEL:B = 0x2t

.field public static final RTMP_STREAM_CHANNEL:B = 0x5t

.field public static final RTMP_VIDEO_CHANNEL:B = 0x6t

.field private static sessionBeginTimestamp:J


# instance fields
.field private acknowledgementWindowSize:I

.field private chunkReceiveChannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;",
            ">;"
        }
    .end annotation
.end field

.field private chunkSendChannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;",
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


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const v0, 0x7fffffff

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->acknowledgementWindowSize:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->totalBytesRead:I

    .line 33
    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->rxChunkSize:I

    .line 34
    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->txChunkSize:I

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->chunkReceiveChannels:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->chunkSendChannels:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->invokedMethods:Ljava/util/Map;

    return-void
.end method

.method public static markSessionTimestampTx()V
    .locals 4

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sput-wide v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->sessionBeginTimestamp:J

    .line 92
    return-void
.end method


# virtual methods
.method public addInvokedCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "transactionId"    # I
    .param p2, "commandName"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->invokedMethods:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAcknowledgementWindowSize()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->acknowledgementWindowSize:I

    return v0
.end method

.method public getPreReceiveChunkHeader(I)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    .locals 2
    .param p1, "chunkStreamId"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->chunkReceiveChannels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    return-object v0
.end method

.method public getPreSendChunkHeader(I)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    .locals 2
    .param p1, "chunkStreamId"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->chunkSendChannels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    return-object v0
.end method

.method public getRxChunkSize()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->rxChunkSize:I

    return v0
.end method

.method public getTxChunkSize()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->txChunkSize:I

    return v0
.end method

.method public markAbsoluteTimestampTx()J
    .locals 4

    .prologue
    .line 96
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sget-wide v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->sessionBeginTimestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public putPreReceiveChunkHeader(ILcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V
    .locals 2
    .param p1, "chunkStreamId"    # I
    .param p2, "chunkHeader"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->chunkReceiveChannels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public putPreSendChunkHeader(ILcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V
    .locals 2
    .param p1, "chunkStreamId"    # I
    .param p2, "chunkHeader"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->chunkSendChannels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public setAcknowledgmentWindowSize(I)V
    .locals 0
    .param p1, "acknowledgementWindowSize"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->acknowledgementWindowSize:I

    .line 85
    return-void
.end method

.method public setRxChunkSize(I)V
    .locals 0
    .param p1, "chunkSize"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->rxChunkSize:I

    .line 69
    return-void
.end method

.method public setTxChunkSize(I)V
    .locals 0
    .param p1, "chunkSize"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->txChunkSize:I

    .line 77
    return-void
.end method

.method public takeInvokedCommand(I)Ljava/lang/String;
    .locals 2
    .param p1, "transactionId"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->invokedMethods:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
