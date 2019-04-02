.class public Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;
.super Ljava/lang/Object;
.source "StoreChunk.java"


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x20000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;->baos:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public clearStoredChunks()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 41
    return-void
.end method

.method public getStoredInputStream()Ljava/io/ByteArrayInputStream;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 34
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 35
    return-object v0
.end method

.method public storeChunk(Ljava/io/InputStream;II)Z
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "messageLength"    # I
    .param p3, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    sub-int v1, p2, v2

    .line 26
    .local v1, "remainingBytes":I
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v0, v2, [B

    .line 27
    .local v0, "chunk":[B
    invoke-static {p1, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readBytesUntilFull(Ljava/io/InputStream;[B)V

    .line 28
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 29
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
