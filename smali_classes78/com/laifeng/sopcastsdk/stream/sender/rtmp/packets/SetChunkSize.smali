.class public Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetChunkSize;
.super Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
.source "SetChunkSize.java"


# instance fields
.field private chunkSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "chunkSize"    # I

    .prologue
    .line 24
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_1_LARGE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    const/4 v2, 0x2

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->SET_CHUNK_SIZE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    invoke-direct {v0, v1, v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;ILcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;)V

    invoke-direct {p0, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 25
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetChunkSize;->chunkSize:I

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getChunkSize()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetChunkSize;->chunkSize:I

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
    .line 39
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetChunkSize;->chunkSize:I

    .line 40
    return-void
.end method

.method public setChunkSize(I)V
    .locals 0
    .param p1, "chunkSize"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetChunkSize;->chunkSize:I

    .line 34
    return-void
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
    .line 44
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetChunkSize;->chunkSize:I

    invoke-static {p1, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    .line 45
    return-void
.end method
