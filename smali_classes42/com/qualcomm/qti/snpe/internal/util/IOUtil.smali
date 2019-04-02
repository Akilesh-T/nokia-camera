.class public final Lcom/qualcomm/qti/snpe/internal/util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field private static final CHUNK_SIZE:I = 0x100000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bufferFromStream(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;
    .locals 11
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v8, 0x100000

    const/4 v10, 0x0

    .line 20
    if-nez p0, :cond_0

    .line 21
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Stream can not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 24
    :cond_0
    if-gtz p1, :cond_1

    .line 25
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Model size can not be <= 0."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 28
    :cond_1
    int-to-long v6, p1

    invoke-static {v6, v7}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->allocate(J)Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    move-result-object v2

    .line 29
    .local v2, "outputStream":Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 30
    .local v1, "directBuffer":Ljava/nio/ByteBuffer;
    new-array v0, v8, [B

    .line 31
    .local v0, "chunk":[B
    const-wide/16 v4, 0x0

    .line 33
    .local v4, "written":J
    :goto_0
    int-to-long v6, p1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "read":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    .line 34
    int-to-long v6, v3

    int-to-long v8, p1

    sub-long/2addr v8, v4

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 36
    long-to-int v6, v4

    sub-int v6, p1, v6

    invoke-virtual {v1, v0, v10, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 40
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 41
    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->write(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v1, v0, v10, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 44
    .end local v3    # "read":I
    :cond_3
    int-to-long v6, p1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_4

    .line 45
    new-instance v6, Ljava/io/IOException;

    const-string v7, "The expected model stream size and actual mismatch."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 47
    :cond_4
    return-object v2
.end method
