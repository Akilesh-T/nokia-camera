.class public Lcom/pedro/rtsp/rtp/packets/H264Packet;
.super Lcom/pedro/rtsp/rtp/packets/BasePacket;
.source "H264Packet.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private header:[B

.field private stapA:[B


# direct methods
.method public constructor <init>(Lcom/pedro/rtsp/rtsp/RtspClient;Lcom/pedro/rtsp/rtsp/Protocol;)V
    .locals 4
    .param p1, "rtspClient"    # Lcom/pedro/rtsp/rtsp/RtspClient;
    .param p2, "protocol"    # Lcom/pedro/rtsp/rtsp/Protocol;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/pedro/rtsp/rtp/packets/BasePacket;-><init>(Lcom/pedro/rtsp/rtsp/RtspClient;Lcom/pedro/rtsp/rtsp/Protocol;)V

    .line 20
    const-string v0, "H264Packet"

    iput-object v0, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->header:[B

    .line 28
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v2, v3}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->setClockFrequency(J)V

    .line 29
    return-void
.end method


# virtual methods
.method public createAndSendPacket(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 11
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 44
    :try_start_0
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->header:[B

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {p1, v6, v7, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 45
    iget-wide v6, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->ts:J

    .line 46
    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v3, v6, 0x1

    .line 47
    .local v3, "naluLength":I
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->header:[B

    const/4 v7, 0x4

    aget-byte v6, v6, v7

    and-int/lit8 v5, v6, 0x1f

    .line 49
    .local v5, "type":I
    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 50
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    invoke-virtual {v6}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->requestBuffer()[B

    move-result-object v6

    iput-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->buffer:[B

    .line 51
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    invoke-virtual {v6}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->markNextPacket()V

    .line 52
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    iget-wide v8, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->ts:J

    invoke-virtual {v6, v8, v9}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->updateTimestamp(J)V

    .line 53
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->stapA:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->buffer:[B

    const/16 v9, 0xc

    iget-object v10, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->stapA:[B

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    iget-object v7, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->stapA:[B

    array-length v7, v7

    add-int/lit8 v7, v7, 0xc

    invoke-virtual {v6, v7}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->commitBuffer(I)V

    .line 58
    :cond_0
    const/16 v6, 0x4ea

    if-gt v3, v6, :cond_3

    .line 59
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    invoke-virtual {v6}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->requestBuffer()[B

    move-result-object v6

    iput-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->buffer:[B

    .line 60
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->buffer:[B

    const/16 v7, 0xc

    iget-object v8, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->header:[B

    const/4 v9, 0x4

    aget-byte v8, v8, v9

    aput-byte v8, v6, v7

    .line 61
    add-int/lit8 v0, v3, -0x1

    .line 62
    .local v0, "cont":I
    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v0, v6, :cond_2

    move v2, v0

    .line 64
    .local v2, "length":I
    :goto_0
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->buffer:[B

    const/16 v7, 0xd

    invoke-virtual {p1, v6, v7, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 65
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    iget-wide v8, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->ts:J

    invoke-virtual {v6, v8, v9}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->updateTimestamp(J)V

    .line 66
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    invoke-virtual {v6}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->markNextPacket()V

    .line 67
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    add-int/lit8 v7, v3, 0xc

    invoke-virtual {v6, v7}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->commitBuffer(I)V

    .line 112
    .end local v0    # "cont":I
    .end local v2    # "length":I
    .end local v3    # "naluLength":I
    .end local v5    # "type":I
    :cond_1
    :goto_1
    return-void

    .line 62
    .restart local v0    # "cont":I
    .restart local v3    # "naluLength":I
    .restart local v5    # "type":I
    :cond_2
    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 63
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    sub-int v2, v6, v7

    goto :goto_0

    .line 72
    .end local v0    # "cont":I
    :cond_3
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->header:[B

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->header:[B

    const/4 v9, 0x4

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 73
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->header:[B

    const/4 v7, 0x1

    aget-byte v8, v6, v7

    add-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 75
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->header:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->header:[B

    const/4 v9, 0x4

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0x60

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 76
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->header:[B

    const/4 v7, 0x0

    aget-byte v8, v6, v7

    add-int/lit8 v8, v8, 0x1c

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 78
    const/4 v4, 0x1

    .line 79
    .local v4, "sum":I
    :goto_2
    if-ge v4, v3, :cond_1

    .line 80
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    invoke-virtual {v6}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->requestBuffer()[B

    move-result-object v6

    iput-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->buffer:[B

    .line 81
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->buffer:[B

    const/16 v7, 0xc

    iget-object v8, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->header:[B

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    aput-byte v8, v6, v7

    .line 82
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->buffer:[B

    const/16 v7, 0xd

    iget-object v8, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->header:[B

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    aput-byte v8, v6, v7

    .line 83
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    iget-wide v8, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->ts:J

    invoke-virtual {v6, v8, v9}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->updateTimestamp(J)V

    .line 84
    sub-int v6, v3, v4

    const/16 v7, 0x4ea

    if-le v6, v7, :cond_5

    const/16 v0, 0x4ea

    .line 88
    .restart local v0    # "cont":I
    :goto_3
    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v0, v6, :cond_6

    move v2, v0

    .line 90
    .restart local v2    # "length":I
    :goto_4
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->buffer:[B

    const/16 v7, 0xe

    invoke-virtual {p1, v6, v7, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 91
    if-ltz v2, :cond_1

    .line 94
    add-int/2addr v4, v2

    .line 96
    if-lt v4, v3, :cond_4

    .line 98
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->buffer:[B

    const/16 v7, 0xd

    aget-byte v8, v6, v7

    add-int/lit8 v8, v8, 0x40

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 99
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    invoke-virtual {v6}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->markNextPacket()V

    .line 101
    :cond_4
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    add-int/lit8 v7, v2, 0xc

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->commitBuffer(I)V

    .line 103
    iget-object v6, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->header:[B

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->header:[B

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v6, v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 106
    .end local v0    # "cont":I
    .end local v2    # "length":I
    .end local v3    # "naluLength":I
    .end local v4    # "sum":I
    .end local v5    # "type":I
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "naluLength":I
    .restart local v4    # "sum":I
    .restart local v5    # "type":I
    :cond_5
    sub-int v0, v3, v4

    goto :goto_3

    .line 88
    .restart local v0    # "cont":I
    :cond_6
    :try_start_1
    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    sub-int v2, v6, v7

    goto :goto_4

    .line 108
    .end local v0    # "cont":I
    .end local v3    # "naluLength":I
    .end local v4    # "sum":I
    .end local v5    # "type":I
    :catch_1
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 110
    invoke-virtual {p0}, Lcom/pedro/rtsp/rtp/packets/H264Packet;->getConnectCheckerRtsp()Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onConnectionFailedRtsp(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 106
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    goto :goto_5
.end method

.method public setSPSandPPS([B[B)V
    .locals 4
    .param p1, "sps"    # [B
    .param p2, "pps"    # [B

    .prologue
    const/4 v3, 0x0

    .line 115
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->stapA:[B

    .line 118
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->stapA:[B

    const/16 v1, 0x18

    aput-byte v1, v0, v3

    .line 121
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->stapA:[B

    const/4 v1, 0x1

    array-length v2, p1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 122
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->stapA:[B

    const/4 v1, 0x2

    array-length v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 125
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->stapA:[B

    array-length v1, p1

    add-int/lit8 v1, v1, 0x3

    array-length v2, p2

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 126
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->stapA:[B

    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    array-length v2, p2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 129
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->stapA:[B

    const/4 v1, 0x3

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->stapA:[B

    array-length v1, p1

    add-int/lit8 v1, v1, 0x5

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    return-void
.end method

.method public updateDestinationVideo()V
    .locals 5

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    instance-of v0, v0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    check-cast v0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;

    iget-object v1, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v1}, Lcom/pedro/rtsp/rtsp/RtspClient;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v2}, Lcom/pedro/rtsp/rtsp/RtspClient;->getVideoPorts()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    .line 34
    invoke-virtual {v3}, Lcom/pedro/rtsp/rtsp/RtspClient;->getVideoPorts()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->setDestination(Ljava/lang/String;II)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    check-cast v0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;

    iget-object v1, p0, Lcom/pedro/rtsp/rtp/packets/H264Packet;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v1}, Lcom/pedro/rtsp/rtsp/RtspClient;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;->setOutputStream(Ljava/io/OutputStream;B)V

    goto :goto_0
.end method
