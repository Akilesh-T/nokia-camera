.class public Lcom/pedro/rtsp/rtp/packets/AacPacket;
.super Lcom/pedro/rtsp/rtp/packets/BasePacket;
.source "AacPacket.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private oldTs:J


# direct methods
.method public constructor <init>(Lcom/pedro/rtsp/rtsp/RtspClient;Lcom/pedro/rtsp/rtsp/Protocol;)V
    .locals 1
    .param p1, "rtspClient"    # Lcom/pedro/rtsp/rtsp/RtspClient;
    .param p2, "protocol"    # Lcom/pedro/rtsp/rtsp/Protocol;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/pedro/rtsp/rtp/packets/BasePacket;-><init>(Lcom/pedro/rtsp/rtsp/RtspClient;Lcom/pedro/rtsp/rtsp/Protocol;)V

    .line 20
    const-string v0, "AacPacket"

    iput-object v0, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public createAndSendPacket(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    const/16 v1, 0x4e8

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    invoke-virtual {v2}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->requestBuffer()[B

    move-result-object v2

    iput-object v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->buffer:[B

    .line 44
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 47
    .local v1, "length":I
    :goto_0
    if-lez v1, :cond_2

    .line 48
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->buffer:[B

    const/16 v3, 0x10

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 49
    iget-wide v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->ts:J

    iput-wide v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->oldTs:J

    .line 50
    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->ts:J

    .line 51
    iget-wide v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->oldTs:J

    iget-wide v4, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->ts:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    invoke-virtual {v2}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->commitBuffer()V

    .line 82
    .end local v1    # "length":I
    :goto_1
    return-void

    .line 45
    :cond_0
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 46
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_0

    .line 55
    .restart local v1    # "length":I
    :cond_1
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    invoke-virtual {v2}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->markNextPacket()V

    .line 56
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    iget-wide v4, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->ts:J

    invoke-virtual {v2, v4, v5}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->updateTimestamp(J)V

    .line 61
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->buffer:[B

    const/16 v3, 0xc

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 62
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->buffer:[B

    const/16 v3, 0xd

    const/16 v4, 0x10

    aput-byte v4, v2, v3

    .line 65
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->buffer:[B

    const/16 v3, 0xe

    shr-int/lit8 v4, v1, 0x5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 66
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->buffer:[B

    const/16 v3, 0xf

    shl-int/lit8 v4, v1, 0x3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 69
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->buffer:[B

    const/16 v3, 0xf

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xf8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 70
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->buffer:[B

    const/16 v3, 0xf

    aget-byte v4, v2, v3

    or-int/lit8 v4, v4, 0x0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 72
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    add-int/lit8 v3, v1, 0xc

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->commitBuffer(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 76
    .end local v1    # "length":I
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "length":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    invoke-virtual {v2}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->commitBuffer()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 76
    .end local v1    # "length":I
    :catch_1
    move-exception v0

    goto :goto_2

    .line 78
    :catch_2
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 80
    invoke-virtual {p0}, Lcom/pedro/rtsp/rtp/packets/AacPacket;->getConnectCheckerRtsp()Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onConnectionFailedRtsp(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setSampleRate(I)V
    .locals 4
    .param p1, "sampleRate"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->setClockFrequency(J)V

    .line 39
    return-void
.end method

.method public updateDestinationAudio()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 29
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    instance-of v0, v0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    check-cast v0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;

    iget-object v1, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v1}, Lcom/pedro/rtsp/rtsp/RtspClient;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v2}, Lcom/pedro/rtsp/rtsp/RtspClient;->getAudioPorts()[I

    move-result-object v2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    .line 31
    invoke-virtual {v3}, Lcom/pedro/rtsp/rtsp/RtspClient;->getAudioPorts()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->setDestination(Ljava/lang/String;II)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    check-cast v0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;

    iget-object v1, p0, Lcom/pedro/rtsp/rtp/packets/AacPacket;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v1}, Lcom/pedro/rtsp/rtsp/RtspClient;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->setOutputStream(Ljava/io/OutputStream;B)V

    goto :goto_0
.end method
