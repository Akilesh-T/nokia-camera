.class public Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;
.super Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;
.source "RtpSocketTcp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

.field private lengths:[I

.field private outputStream:Ljava/io/OutputStream;

.field private senderReportTcp:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

.field private tcpHeader:[B


# direct methods
.method public constructor <init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V
    .locals 1
    .param p1, "connectCheckerRtsp"    # Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->outputStream:Ljava/io/OutputStream;

    .line 23
    iput-object p1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .line 24
    iget v0, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->bufferCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->lengths:[I

    .line 25
    new-instance v0, Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    invoke-direct {v0, p1}, Lcom/pedro/rtsp/rtcp/SenderReportTcp;-><init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V

    iput-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->senderReportTcp:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    .line 26
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->senderReportTcp:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    invoke-virtual {v0}, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->reset()V

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->tcpHeader:[B

    .line 28
    return-void

    .line 27
    nop

    :array_0
    .array-data 1
        0x24t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private sendTCP()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->outputStream:Ljava/io/OutputStream;

    monitor-enter v2

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->lengths:[I

    iget v3, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->bufferOut:I

    aget v0, v1, v3

    .line 73
    .local v0, "len":I
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->tcpHeader:[B

    const/4 v3, 0x2

    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 74
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->tcpHeader:[B

    const/4 v3, 0x3

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 75
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->outputStream:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->tcpHeader:[B

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 76
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->outputStream:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->buffers:[[B

    iget v4, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->bufferOut:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 78
    const-string v1, "RtpSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send packet, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Size"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    monitor-exit v2

    .line 80
    return-void

    .line 79
    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public implementCommitBuffer(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->lengths:[I

    iget v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->bufferIn:I

    aput p1, v0, v1

    .line 48
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 54
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->bufferCommitted:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->senderReportTcp:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    iget-object v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->lengths:[I

    iget v3, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->bufferOut:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->timestamps:[J

    iget v4, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->bufferOut:I

    aget-wide v4, v3, v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->update(IJ)V

    .line 56
    invoke-direct {p0}, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->sendTCP()V

    .line 57
    iget v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->bufferOut:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->bufferOut:I

    iget v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->bufferCount:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->bufferOut:I

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->bufferRequested:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "RtpSocket"

    const-string v2, "TCP send error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error send packet, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onConnectionFailedRtsp(Ljava/lang/String;)V

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->thread:Ljava/lang/Thread;

    .line 66
    invoke-virtual {p0}, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->resetFifo()V

    .line 67
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->senderReportTcp:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    invoke-virtual {v1}, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->reset()V

    .line 68
    return-void

    .line 60
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setOutputStream(Ljava/io/OutputStream;B)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "channelIdentifier"    # B

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->outputStream:Ljava/io/OutputStream;

    .line 39
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->tcpHeader:[B

    const/4 v1, 0x1

    aput-byte p2, v0, v1

    .line 40
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->senderReportTcp:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    add-int/lit8 v1, p2, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->setOutputStream(Ljava/io/OutputStream;B)V

    .line 42
    :cond_0
    return-void
.end method

.method public setSSRC(I)V
    .locals 1
    .param p1, "ssrc"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->setLongSSRC(I)V

    .line 33
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->senderReportTcp:Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    invoke-virtual {v0, p1}, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->setSSRC(I)V

    .line 34
    return-void
.end method
