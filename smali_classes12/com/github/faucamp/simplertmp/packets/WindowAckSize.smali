.class public Lcom/github/faucamp/simplertmp/packets/WindowAckSize;
.super Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
.source "WindowAckSize.java"


# instance fields
.field private acknowledgementWindowSize:I


# direct methods
.method public constructor <init>(ILcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V
    .locals 4
    .param p1, "acknowledgementWindowSize"    # I
    .param p2, "channelInfo"    # Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    .prologue
    .line 26
    new-instance v1, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    sget-object v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->WINDOW_ACKNOWLEDGEMENT_SIZE:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-virtual {p2, v0}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->canReusePrevHeaderTx(Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_2_RELATIVE_TIMESTAMP_ONLY:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    :goto_0
    const/4 v2, 0x2

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->WINDOW_ACKNOWLEDGEMENT_SIZE:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-direct {v1, v0, v2, v3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;ILcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;)V

    invoke-direct {p0, v1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 27
    iput p1, p0, Lcom/github/faucamp/simplertmp/packets/WindowAckSize;->acknowledgementWindowSize:I

    .line 28
    return-void

    .line 26
    :cond_0
    sget-object v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_0_FULL:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected array()[B
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAcknowledgementWindowSize()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/WindowAckSize;->acknowledgementWindowSize:I

    return v0
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
    .line 41
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/github/faucamp/simplertmp/packets/WindowAckSize;->acknowledgementWindowSize:I

    .line 42
    return-void
.end method

.method public setAcknowledgementWindowSize(I)V
    .locals 0
    .param p1, "acknowledgementWindowSize"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/github/faucamp/simplertmp/packets/WindowAckSize;->acknowledgementWindowSize:I

    .line 37
    return-void
.end method

.method protected size()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "RTMP Window Acknowledgment Size"

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
    .line 46
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/WindowAckSize;->acknowledgementWindowSize:I

    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    .line 47
    return-void
.end method
