.class public Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/WindowAckSize;
.super Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
.source "WindowAckSize.java"


# instance fields
.field private acknowledgementWindowSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "acknowledgementWindowSize"    # I

    .prologue
    .line 26
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_0_FULL:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    const/4 v2, 0x2

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->WINDOW_ACKNOWLEDGEMENT_SIZE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    invoke-direct {v0, v1, v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;ILcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;)V

    invoke-direct {p0, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 27
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/WindowAckSize;->acknowledgementWindowSize:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getAcknowledgementWindowSize()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/WindowAckSize;->acknowledgementWindowSize:I

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
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/WindowAckSize;->acknowledgementWindowSize:I

    .line 42
    return-void
.end method

.method public setAcknowledgementWindowSize(I)V
    .locals 0
    .param p1, "acknowledgementWindowSize"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/WindowAckSize;->acknowledgementWindowSize:I

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
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
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/WindowAckSize;->acknowledgementWindowSize:I

    invoke-static {p1, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    .line 47
    return-void
.end method
