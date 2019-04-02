.class public abstract Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;
.super Ljava/lang/Object;
.source "BaseRtpSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected bufferCommitted:Ljava/util/concurrent/Semaphore;

.field protected bufferCount:I

.field protected bufferIn:I

.field protected bufferOut:I

.field protected bufferRequested:Ljava/util/concurrent/Semaphore;

.field protected buffers:[[B

.field protected clock:J

.field protected seq:I

.field protected thread:Ljava/lang/Thread;

.field protected timestamps:[J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v1, "RtpSocket"

    iput-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->TAG:Ljava/lang/String;

    .line 20
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->clock:J

    .line 21
    iput v4, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->seq:I

    .line 28
    const/16 v1, 0x12c

    iput v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferCount:I

    .line 29
    iget v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferCount:I

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->buffers:[[B

    .line 30
    invoke-virtual {p0}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->resetFifo()V

    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferCount:I

    if-ge v0, v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->buffers:[[B

    const/16 v2, 0x514

    new-array v2, v2, [B

    aput-object v2, v1, v0

    .line 41
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->buffers:[[B

    aget-object v1, v1, v0

    const-string v2, "10000000"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 42
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->buffers:[[B

    aget-object v1, v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x60

    aput-byte v3, v1, v2

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public commitBuffer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->thread:Ljava/lang/Thread;

    .line 97
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    :cond_0
    iget v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferIn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferIn:I

    iget v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferCount:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferIn:I

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferCommitted:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 101
    return-void
.end method

.method public commitBuffer(I)V
    .locals 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->buffers:[[B

    iget v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferIn:I

    aget-object v1, v0, v1

    iget v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->seq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->seq:I

    int-to-long v2, v0

    const/4 v4, 0x2

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->setLong([BJII)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->implementCommitBuffer(I)V

    .line 108
    iget v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferIn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferIn:I

    iget v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferIn:I

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferCommitted:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 110
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->thread:Ljava/lang/Thread;

    .line 112
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    :cond_1
    return-void
.end method

.method protected abstract implementCommitBuffer(I)V
.end method

.method public markNextPacket()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->buffers:[[B

    iget v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferIn:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 121
    return-void
.end method

.method public requestBuffer()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferRequested:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 79
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->buffers:[[B

    iget v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferIn:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 80
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->buffers:[[B

    iget v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferIn:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected resetFifo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    iput v2, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferIn:I

    .line 52
    iput v2, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferOut:I

    .line 53
    iget v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->timestamps:[J

    .line 54
    new-instance v0, Ljava/util/concurrent/Semaphore;

    iget v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferCount:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferRequested:Ljava/util/concurrent/Semaphore;

    .line 55
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferCommitted:Ljava/util/concurrent/Semaphore;

    .line 56
    return-void
.end method

.method public setClockFrequency(J)V
    .locals 1
    .param p1, "clock"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->clock:J

    .line 70
    return-void
.end method

.method protected setLong([BJII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "n"    # J
    .param p4, "begin"    # I
    .param p5, "end"    # I

    .prologue
    .line 124
    add-int/lit8 p5, p5, -0x1

    :goto_0
    if-lt p5, p4, :cond_0

    .line 125
    const-wide/16 v0, 0x100

    rem-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p5

    .line 126
    const/16 v0, 0x8

    shr-long/2addr p2, v0

    .line 124
    add-int/lit8 p5, p5, -0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method protected setLongSSRC(I)V
    .locals 7
    .param p1, "ssrc"    # I

    .prologue
    .line 62
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferCount:I

    if-ge v6, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->buffers:[[B

    aget-object v1, v0, v6

    int-to-long v2, p1

    const/16 v4, 0x8

    const/16 v5, 0xc

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->setLong([BJII)V

    .line 62
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public abstract setSSRC(I)V
.end method

.method public updateTimestamp(J)V
    .locals 7
    .param p1, "timestamp"    # J

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->clock:J

    mul-long/2addr v0, p1

    const-wide/32 v4, 0x3b9aca00

    div-long v2, v0, v4

    .line 90
    .local v2, "ts":J
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->timestamps:[J

    iget v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferIn:I

    aput-wide v2, v0, v1

    .line 91
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->buffers:[[B

    iget v1, p0, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->bufferIn:I

    aget-object v1, v0, v1

    const/4 v4, 0x4

    const/16 v5, 0x8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->setLong([BJII)V

    .line 92
    return-void
.end method
