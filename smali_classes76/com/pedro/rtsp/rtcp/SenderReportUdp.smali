.class public Lcom/pedro/rtsp/rtcp/SenderReportUdp;
.super Lcom/pedro/rtsp/rtcp/BaseSenderReport;
.source "SenderReportUdp.java"


# instance fields
.field private connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

.field private datagramPacket:Ljava/net/DatagramPacket;

.field private socket:Ljava/net/MulticastSocket;


# direct methods
.method public constructor <init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V
    .locals 4
    .param p1, "connectCheckerRtsp"    # Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/pedro/rtsp/rtcp/BaseSenderReport;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .line 24
    :try_start_0
    new-instance v1, Ljava/net/MulticastSocket;

    invoke-direct {v1}, Ljava/net/MulticastSocket;-><init>()V

    iput-object v1, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->socket:Ljava/net/MulticastSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->mBuffer:[B

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v1, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->datagramPacket:Ljava/net/DatagramPacket;

    .line 30
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/pedro/rtsp/rtcp/SenderReportUdp;)Ljava/net/DatagramPacket;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->datagramPacket:Ljava/net/DatagramPacket;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pedro/rtsp/rtcp/SenderReportUdp;)Ljava/net/MulticastSocket;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->socket:Ljava/net/MulticastSocket;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pedro/rtsp/rtcp/SenderReportUdp;)Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtcp/SenderReportUdp;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    return-object v0
.end method

.method private send(JJI)V
    .locals 9
    .param p1, "ntpts"    # J
    .param p3, "rtpts"    # J
    .param p5, "port"    # I

    .prologue
    .line 59
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/pedro/rtsp/rtcp/SenderReportUdp$1;-><init>(Lcom/pedro/rtsp/rtcp/SenderReportUdp;JJI)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    .line 34
    return-void
.end method

.method public setDestination(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "dest"    # Ljava/net/InetAddress;
    .param p2, "dport"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->datagramPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 49
    iget-object v0, p0, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->datagramPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 50
    return-void
.end method

.method public update(IJI)V
    .locals 8
    .param p1, "length"    # I
    .param p2, "rtpts"    # J
    .param p4, "port"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->updateSend(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/pedro/rtsp/rtcp/SenderReportUdp;->send(JJI)V

    .line 45
    :cond_0
    return-void
.end method
