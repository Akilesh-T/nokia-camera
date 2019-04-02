.class public abstract Lcom/pedro/rtsp/rtp/packets/BasePacket;
.super Ljava/lang/Object;
.source "BasePacket.java"


# static fields
.field protected static final maxPacketSize:I = 0x4f8


# instance fields
.field protected buffer:[B

.field protected rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

.field protected socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

.field protected ts:J


# direct methods
.method public constructor <init>(Lcom/pedro/rtsp/rtsp/RtspClient;Lcom/pedro/rtsp/rtsp/Protocol;)V
    .locals 4
    .param p1, "rtspClient"    # Lcom/pedro/rtsp/rtsp/RtspClient;
    .param p2, "protocol"    # Lcom/pedro/rtsp/rtsp/Protocol;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pedro/rtsp/rtp/packets/BasePacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    .line 28
    iput-object p1, p0, Lcom/pedro/rtsp/rtp/packets/BasePacket;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    .line 29
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/pedro/rtsp/rtp/packets/BasePacket;->ts:J

    .line 30
    sget-object v1, Lcom/pedro/rtsp/rtsp/Protocol;->UDP:Lcom/pedro/rtsp/rtsp/Protocol;

    if-ne p2, v1, :cond_1

    .line 31
    new-instance v1, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;

    invoke-virtual {p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->getConnectCheckerRtsp()Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;-><init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V

    iput-object v1, p0, Lcom/pedro/rtsp/rtp/packets/BasePacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/packets/BasePacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;->setSSRC(I)V

    .line 36
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/packets/BasePacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    instance-of v1, v1, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;

    if-eqz v1, :cond_0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/pedro/rtsp/rtp/packets/BasePacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    check-cast v1, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->setTimeToLive(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_1
    return-void

    .line 33
    :cond_1
    new-instance v1, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;

    invoke-virtual {p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->getConnectCheckerRtsp()Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/pedro/rtsp/rtp/sockets/RtpSocketTcp;-><init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V

    iput-object v1, p0, Lcom/pedro/rtsp/rtp/packets/BasePacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    goto :goto_0

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
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/BasePacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    instance-of v0, v0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/BasePacket;->socket:Lcom/pedro/rtsp/rtp/sockets/BaseRtpSocket;

    check-cast v0, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;

    invoke-virtual {v0}, Lcom/pedro/rtsp/rtp/sockets/RtpSocketUdp;->close()V

    .line 49
    :cond_0
    return-void
.end method

.method public getConnectCheckerRtsp()Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pedro/rtsp/rtp/packets/BasePacket;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0}, Lcom/pedro/rtsp/rtsp/RtspClient;->getConnectCheckerRtsp()Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    move-result-object v0

    return-object v0
.end method
