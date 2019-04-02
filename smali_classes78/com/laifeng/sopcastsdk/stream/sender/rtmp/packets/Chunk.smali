.class public abstract Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field protected header:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;->header:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    .line 20
    return-void
.end method


# virtual methods
.method public getChunkHeader()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;->header:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    return-object v0
.end method

.method public abstract readBody(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract writeBody(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeTo(Ljava/io/OutputStream;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sessionInfo"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->getTxChunkSize()I

    move-result v2

    .line 32
    .local v2, "chunkSize":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;->writeBody(Ljava/io/OutputStream;)V

    .line 34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 35
    .local v1, "body":[B
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;->header:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    array-length v6, v1

    invoke-virtual {v5, v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->setPacketLength(I)V

    .line 37
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;->header:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    sget-object v6, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_0_FULL:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    invoke-virtual {v5, p1, v6, p2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->writeTo(Ljava/io/OutputStream;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)V

    .line 38
    array-length v4, v1

    .line 39
    .local v4, "remainingBytes":I
    const/4 v3, 0x0

    .line 40
    .local v3, "pos":I
    :goto_0
    if-le v4, v2, :cond_0

    .line 42
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 43
    sub-int/2addr v4, v2

    .line 44
    add-int/2addr v3, v2

    .line 46
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;->header:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    sget-object v6, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_3_NO_BYTE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    invoke-virtual {v5, p1, v6, p2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->writeTo(Ljava/io/OutputStream;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 49
    return-void
.end method
