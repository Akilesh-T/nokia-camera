.class public Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;
.super Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
.source "SetPeerBandwidth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth$LimitType;
    }
.end annotation


# instance fields
.field private acknowledgementWindowSize:I

.field private limitType:Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth$LimitType;


# direct methods
.method public constructor <init>(ILcom/github/faucamp/simplertmp/packets/SetPeerBandwidth$LimitType;Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V
    .locals 4
    .param p1, "acknowledgementWindowSize"    # I
    .param p2, "limitType"    # Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth$LimitType;
    .param p3, "channelInfo"    # Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    .prologue
    .line 68
    new-instance v1, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    sget-object v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->SET_PEER_BANDWIDTH:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-virtual {p3, v0}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->canReusePrevHeaderTx(Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_2_RELATIVE_TIMESTAMP_ONLY:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    :goto_0
    const/4 v2, 0x2

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->WINDOW_ACKNOWLEDGEMENT_SIZE:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-direct {v1, v0, v2, v3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;ILcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;)V

    invoke-direct {p0, v1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 69
    iput p1, p0, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;->acknowledgementWindowSize:I

    .line 70
    iput-object p2, p0, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;->limitType:Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth$LimitType;

    .line 71
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_0_FULL:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected array()[B
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAcknowledgementWindowSize()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;->acknowledgementWindowSize:I

    return v0
.end method

.method public getLimitType()Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth$LimitType;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;->limitType:Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth$LimitType;

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
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;->acknowledgementWindowSize:I

    .line 92
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth$LimitType;->valueOf(I)Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth$LimitType;

    move-result-object v0

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;->limitType:Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth$LimitType;

    .line 93
    return-void
.end method

.method public setAcknowledgementWindowSize(I)V
    .locals 0
    .param p1, "acknowledgementWindowSize"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;->acknowledgementWindowSize:I

    .line 79
    return-void
.end method

.method public setLimitType(Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth$LimitType;)V
    .locals 0
    .param p1, "limitType"    # Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth$LimitType;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;->limitType:Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth$LimitType;

    .line 87
    return-void
.end method

.method protected size()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
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
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;->acknowledgementWindowSize:I

    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    .line 98
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;->limitType:Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth$LimitType;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth$LimitType;->getIntValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 99
    return-void
.end method
