.class public Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;
.super Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;
.source "RtpSocketUdp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

.field private mSocket:Ljava/net/MulticastSocket;

.field private packets:[Ljava/net/DatagramPacket;

.field private port:I

.field private senderReportUdp:Lcom/pedro/rtsp/rtcp/SenderReportUdp;


# direct methods
.method public constructor <init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V
    .locals 6
    .param p1, "connectCheckerRtsp"    # Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;-><init>()V

    .line 22
    const/4 v2, -0x1

    iput v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->port:I

    .line 30
    iput-object p1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .line 31
    new-instance v2, Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    invoke-direct {v2, p1}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;-><init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V

    iput-object v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->senderReportUdp:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    .line 32
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->senderReportUdp:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    invoke-virtual {v2}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->reset()V

    .line 33
    iget v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->bufferCount:I

    new-array v2, v2, [Ljava/net/DatagramPacket;

    iput-object v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->packets:[Ljava/net/DatagramPacket;

    .line 34
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->bufferCount:I

    if-ge v1, v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->packets:[Ljava/net/DatagramPacket;

    new-instance v3, Ljava/net/DatagramPacket;

    iget-object v4, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->buffers:[[B

    aget-object v4, v4, v1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    aput-object v3, v2, v1

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/MulticastSocket;

    invoke-direct {v2}, Ljava/net/MulticastSocket;-><init>()V

    iput-object v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->mSocket:Ljava/net/MulticastSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_1
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->mSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    .line 47
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->senderReportUdp:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    invoke-virtual {v0}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->close()V

    .line 48
    return-void
.end method

.method public implementCommitBuffer(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->packets:[Ljava/net/DatagramPacket;

    iget v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->bufferIn:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 80
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 86
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->bufferCommitted:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->senderReportUdp:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    iget-object v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->packets:[Ljava/net/DatagramPacket;

    iget v3, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->bufferOut:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->timestamps:[J

    iget v4, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->bufferOut:I

    aget-wide v4, v3, v4

    iget v3, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->port:I

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->update(IJI)V

    .line 88
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->mSocket:Ljava/net/MulticastSocket;

    iget-object v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->packets:[Ljava/net/DatagramPacket;

    iget v3, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->bufferOut:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 89
    const-string v1, "RtpSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send packet, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->packets:[Ljava/net/DatagramPacket;

    iget v4, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->bufferOut:I

    aget-object v3, v3, v4

    .line 90
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Size, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->packets:[Ljava/net/DatagramPacket;

    iget v4, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->bufferOut:I

    aget-object v3, v3, v4

    .line 92
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->bufferOut:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->bufferOut:I

    iget v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->bufferCount:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->bufferOut:I

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->bufferRequested:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "RtpSocket"

    const-string v2, "UDP send error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

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

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->thread:Ljava/lang/Thread;

    .line 102
    invoke-virtual {p0}, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->resetFifo()V

    .line 103
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->senderReportUdp:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    invoke-virtual {v1}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->reset()V

    .line 104
    return-void

    .line 97
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setDestination(Ljava/lang/String;II)V
    .locals 4
    .param p1, "dest"    # Ljava/lang/String;
    .param p2, "dport"    # I
    .param p3, "rtcpPort"    # I

    .prologue
    .line 64
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 65
    :try_start_0
    iput p2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->port:I

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->bufferCount:I

    if-ge v1, v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->packets:[Ljava/net/DatagramPacket;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 68
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->packets:[Ljava/net/DatagramPacket;

    aget-object v2, v2, v1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->senderReportUdp:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->setDestination(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1
.end method

.method public setSSRC(I)V
    .locals 1
    .param p1, "ssrc"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->setLongSSRC(I)V

    .line 53
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->senderReportUdp:Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    invoke-virtual {v0, p1}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->setSSRC(I)V

    .line 54
    return-void
.end method

.method public setTimeToLive(I)V
    .locals 1
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->mSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 59
    return-void
.end method
