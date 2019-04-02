.class public Lcom/pedro/rtsp/rtcp/SenderReportTcp;
.super Lcom/pedro/rtsp/rtcp/BaseSenderReport;
.source "SenderReportTcp.java"


# instance fields
.field private connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mTcpHeader:[B


# direct methods
.method public constructor <init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V
    .locals 1
    .param p1, "connectCheckerRtsp"    # Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/pedro/rtsp/rtcp/BaseSenderReport;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->mOutputStream:Ljava/io/OutputStream;

    .line 20
    iput-object p1, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->mTcpHeader:[B

    .line 22
    return-void

    .line 21
    nop

    :array_0
    .array-data 1
        0x24t
        0x0t
        0x0t
        0x1ct
    .end array-data
.end method

.method static synthetic access$000(Lcom/pedro/rtsp/rtcp/SenderReportTcp;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->mOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pedro/rtsp/rtcp/SenderReportTcp;)[B
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->mTcpHeader:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/pedro/rtsp/rtcp/SenderReportTcp;)Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtcp/SenderReportTcp;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    return-object v0
.end method

.method private send(JJ)V
    .locals 7
    .param p1, "ntpts"    # J
    .param p3, "rtpts"    # J

    .prologue
    .line 41
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/pedro/rtsp/rtcp/SenderReportTcp$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/pedro/rtsp/rtcp/SenderReportTcp$1;-><init>(Lcom/pedro/rtsp/rtcp/SenderReportTcp;JJ)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 57
    return-void
.end method


# virtual methods
.method public setOutputStream(Ljava/io/OutputStream;B)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "channelIdentifier"    # B

    .prologue
    .line 60
    iput-object p1, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->mOutputStream:Ljava/io/OutputStream;

    .line 61
    iget-object v0, p0, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->mTcpHeader:[B

    const/4 v1, 0x1

    aput-byte p2, v0, v1

    .line 62
    return-void
.end method

.method public update(IJ)V
    .locals 2
    .param p1, "length"    # I
    .param p2, "rtpts"    # J

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->updateSend(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/pedro/rtsp/rtcp/SenderReportTcp;->send(JJ)V

    .line 32
    :cond_0
    return-void
.end method
