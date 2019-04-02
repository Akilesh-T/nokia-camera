.class public Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
.super Ljava/lang/Object;
.source "ChunkStreamInfo.java"


# static fields
.field public static final RTMP_CID_AUDIO:B = 0x7t

.field public static final RTMP_CID_OVER_CONNECTION:B = 0x3t

.field public static final RTMP_CID_OVER_CONNECTION2:B = 0x4t

.field public static final RTMP_CID_OVER_STREAM:B = 0x5t

.field public static final RTMP_CID_PROTOCOL_CONTROL:B = 0x2t

.field public static final RTMP_CID_VIDEO:B = 0x6t

.field private static sessionBeginTimestamp:J


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private prevHeaderRx:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

.field private prevHeaderTx:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

.field private realLastTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->realLastTimestamp:J

    .line 28
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x20000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->baos:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public static markSessionTimestampTx()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sput-wide v0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->sessionBeginTimestamp:J

    .line 57
    return-void
.end method


# virtual methods
.method public canReusePrevHeaderTx(Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;)Z
    .locals 1
    .param p1, "forMessageType"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->prevHeaderTx:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->prevHeaderTx:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getMessageType()Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearStoredChunks()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 90
    return-void
.end method

.method public getPrevHeaderTx()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->prevHeaderTx:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    return-object v0
.end method

.method public getStoredPacketInputStream()Ljava/io/ByteArrayInputStream;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 83
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 84
    return-object v0
.end method

.method public markAbsoluteTimestampTx()J
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sget-wide v2, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->sessionBeginTimestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public markDeltaTimestampTx()J
    .locals 8

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v0, v4, v6

    .line 67
    .local v0, "currentTimestamp":J
    iget-wide v4, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->realLastTimestamp:J

    sub-long v2, v0, v4

    .line 68
    .local v2, "diffTimestamp":J
    iput-wide v0, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->realLastTimestamp:J

    .line 69
    return-wide v2
.end method

.method public prevHeaderRx()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->prevHeaderRx:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    return-object v0
.end method

.method public setPrevHeaderRx(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V
    .locals 0
    .param p1, "previousHeader"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->prevHeaderRx:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    .line 38
    return-void
.end method

.method public setPrevHeaderTx(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V
    .locals 0
    .param p1, "prevHeaderTx"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->prevHeaderTx:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    .line 52
    return-void
.end method

.method public storePacketChunk(Ljava/io/InputStream;I)Z
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v2, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->prevHeaderRx:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    invoke-virtual {v2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getPacketLength()I

    move-result v2

    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    sub-int v1, v2, v3

    .line 75
    .local v1, "remainingBytes":I
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v0, v2, [B

    .line 76
    .local v0, "chunk":[B
    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->readBytesUntilFull(Ljava/io/InputStream;[B)V

    .line 77
    iget-object v2, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 78
    iget-object v2, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->prevHeaderRx:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    invoke-virtual {v3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getPacketLength()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
