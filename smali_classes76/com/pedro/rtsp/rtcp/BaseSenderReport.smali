.class public abstract Lcom/pedro/rtsp/rtcp/BaseSenderReport;
.super Ljava/lang/Object;
.source "BaseSenderReport.java"


# static fields
.field protected static final MTU:I = 0x5dc

.field protected static final PACKET_LENGTH:I = 0x1c


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected delta:J

.field protected interval:J

.field protected mBuffer:[B

.field protected mOctetCount:I

.field protected mPacketCount:I

.field protected now:J

.field protected old:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "SenderReport"

    iput-object v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->TAG:Ljava/lang/String;

    .line 14
    const/16 v0, 0x5dc

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mBuffer:[B

    .line 15
    iput v2, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mOctetCount:I

    iput v2, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mPacketCount:I

    .line 26
    iget-object v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mBuffer:[B

    const-string v1, "10000000"

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 29
    iget-object v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mBuffer:[B

    const/4 v1, 0x1

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    .line 32
    const-wide/16 v0, 0x6

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->setLong(JII)V

    .line 42
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->interval:J

    .line 43
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    const/16 v3, 0x18

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mPacketCount:I

    .line 82
    iput v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mOctetCount:I

    .line 83
    iget v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mPacketCount:I

    int-to-long v0, v0

    const/16 v2, 0x14

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->setLong(JII)V

    .line 84
    iget v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mOctetCount:I

    int-to-long v0, v0

    const/16 v2, 0x1c

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->setLong(JII)V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->old:J

    iput-wide v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->now:J

    iput-wide v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->delta:J

    .line 86
    return-void
.end method

.method protected setData(JJ)V
    .locals 9
    .param p1, "ntpts"    # J
    .param p3, "rtpts"    # J

    .prologue
    .line 96
    const-wide/32 v4, 0x3b9aca00

    div-long v0, p1, v4

    .line 97
    .local v0, "hb":J
    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v4, v0

    sub-long v4, p1, v4

    const-wide v6, 0x100000000L

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x3b9aca00

    div-long v2, v4, v6

    .line 98
    .local v2, "lb":J
    const/16 v4, 0x8

    const/16 v5, 0xc

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->setLong(JII)V

    .line 99
    const/16 v4, 0xc

    const/16 v5, 0x10

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->setLong(JII)V

    .line 100
    const/16 v4, 0x10

    const/16 v5, 0x14

    invoke-virtual {p0, p3, p4, v4, v5}, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->setLong(JII)V

    .line 101
    return-void
.end method

.method protected setLong(JII)V
    .locals 5
    .param p1, "n"    # J
    .param p3, "begin"    # I
    .param p4, "end"    # I

    .prologue
    .line 89
    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_0

    .line 90
    iget-object v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mBuffer:[B

    const-wide/16 v2, 0x100

    rem-long v2, p1, v2

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, p4

    .line 91
    const/16 v0, 0x8

    shr-long/2addr p1, v0

    .line 89
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public setSSRC(I)V
    .locals 6
    .param p1, "ssrc"    # I

    .prologue
    const/16 v5, 0x18

    const/4 v4, 0x0

    .line 46
    int-to-long v0, p1

    const/4 v2, 0x4

    const/16 v3, 0x8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->setLong(JII)V

    .line 47
    iput v4, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mPacketCount:I

    .line 48
    iput v4, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mOctetCount:I

    .line 49
    iget v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mPacketCount:I

    int-to-long v0, v0

    const/16 v2, 0x14

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->setLong(JII)V

    .line 50
    iget v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mOctetCount:I

    int-to-long v0, v0

    const/16 v2, 0x1c

    invoke-virtual {p0, v0, v1, v5, v2}, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->setLong(JII)V

    .line 51
    return-void
.end method

.method protected updateSend(I)Z
    .locals 8
    .param p1, "length"    # I

    .prologue
    const/16 v5, 0x18

    const-wide/16 v2, 0x0

    .line 59
    iget v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mPacketCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mPacketCount:I

    .line 60
    iget v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mOctetCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mOctetCount:I

    .line 61
    iget v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mPacketCount:I

    int-to-long v0, v0

    const/16 v4, 0x14

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->setLong(JII)V

    .line 62
    iget v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->mOctetCount:I

    int-to-long v0, v0

    const/16 v4, 0x1c

    invoke-virtual {p0, v0, v1, v5, v4}, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->setLong(JII)V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->now:J

    .line 65
    iget-wide v4, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->delta:J

    iget-wide v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->old:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->now:J

    iget-wide v6, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->old:J

    sub-long/2addr v0, v6

    :goto_0
    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->delta:J

    .line 66
    iget-wide v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->now:J

    iput-wide v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->old:J

    .line 67
    iget-wide v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->interval:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 68
    iget-wide v0, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->delta:J

    iget-wide v4, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->interval:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 70
    iput-wide v2, p0, Lcom/pedro/rtsp/rtcp/BaseSenderReport;->delta:J

    .line 71
    const/4 v0, 0x1

    .line 74
    :goto_1
    return v0

    :cond_0
    move-wide v0, v2

    .line 65
    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
