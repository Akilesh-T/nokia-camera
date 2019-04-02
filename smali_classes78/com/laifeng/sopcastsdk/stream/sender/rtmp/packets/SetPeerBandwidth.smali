.class public Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth;
.super Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
.source "SetPeerBandwidth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;
    }
.end annotation


# instance fields
.field private acknowledgementWindowSize:I

.field private limitType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;


# direct methods
.method public constructor <init>(ILcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)V
    .locals 4
    .param p1, "acknowledgementWindowSize"    # I
    .param p2, "limitType"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;
    .param p3, "channelInfo"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    .prologue
    .line 68
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_0_FULL:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    const/4 v2, 0x2

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->WINDOW_ACKNOWLEDGEMENT_SIZE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    invoke-direct {v0, v1, v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;ILcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;)V

    invoke-direct {p0, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 69
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth;->acknowledgementWindowSize:I

    .line 70
    iput-object p2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth;->limitType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getAcknowledgementWindowSize()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth;->acknowledgementWindowSize:I

    return v0
.end method

.method public getLimitType()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth;->limitType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    return-object v0
.end method

.method public readBody(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth;->acknowledgementWindowSize:I

    .line 92
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->valueOf(I)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth;->limitType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    .line 93
    return-void
.end method

.method public setAcknowledgementWindowSize(I)V
    .locals 0
    .param p1, "acknowledgementWindowSize"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth;->acknowledgementWindowSize:I

    .line 79
    return-void
.end method

.method public setLimitType(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;)V
    .locals 0
    .param p1, "limitType"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth;->limitType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "RTMP Set Peer Bandwidth"

    return-object v0
.end method

.method protected writeBody(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth;->acknowledgementWindowSize:I

    invoke-static {p1, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    .line 98
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth;->limitType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth$LimitType;->getIntValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 99
    return-void
.end method
