.class public Lcom/drew/lang/RandomAccessStreamReader;
.super Lcom/drew/lang/RandomAccessReader;
.source "RandomAccessStreamReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT_CHUNK_LENGTH:I = 0x800


# instance fields
.field private final _chunkLength:I

.field private final _chunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private _isStreamFinished:Z

.field private final _stream:Ljava/io/InputStream;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private _streamLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/drew/lang/RandomAccessStreamReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/drew/lang/RandomAccessStreamReader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 48
    const/16 v0, 0x800

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/drew/lang/RandomAccessStreamReader;-><init>(Ljava/io/InputStream;IJ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "chunkLength"    # I

    .prologue
    .line 53
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/drew/lang/RandomAccessStreamReader;-><init>(Ljava/io/InputStream;IJ)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IJ)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "chunkLength"    # I
    .param p3, "streamLength"    # J

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/drew/lang/RandomAccessReader;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunks:Ljava/util/ArrayList;

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 60
    :cond_0
    if-gtz p2, :cond_1

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chunkLength must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    iput p2, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunkLength:I

    .line 64
    iput-object p1, p0, Lcom/drew/lang/RandomAccessStreamReader;->_stream:Ljava/io/InputStream;

    .line 65
    iput-wide p3, p0, Lcom/drew/lang/RandomAccessStreamReader;->_streamLength:J

    .line 66
    return-void
.end method


# virtual methods
.method public getByte(I)B
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    sget-boolean v3, Lcom/drew/lang/RandomAccessStreamReader;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-gez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 180
    :cond_0
    iget v3, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunkLength:I

    div-int v1, p1, v3

    .line 181
    .local v1, "chunkIndex":I
    iget v3, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunkLength:I

    rem-int v2, p1, v3

    .line 182
    .local v2, "innerIndex":I
    iget-object v3, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 184
    .local v0, "chunk":[B
    aget-byte v3, v0, v2

    return v3
.end method

.method public getBytes(II)[B
    .locals 9
    .param p1, "index"    # I
    .param p2, "count"    # I
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessStreamReader;->validateIndex(II)V

    .line 193
    new-array v0, p2, [B

    .line 195
    .local v0, "bytes":[B
    move v6, p2

    .line 196
    .local v6, "remaining":I
    move v3, p1

    .line 197
    .local v3, "fromIndex":I
    const/4 v7, 0x0

    .line 199
    .local v7, "toIndex":I
    :goto_0
    if-eqz v6, :cond_0

    .line 200
    iget v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunkLength:I

    div-int v2, v3, v8

    .line 201
    .local v2, "fromChunkIndex":I
    iget v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunkLength:I

    rem-int v4, v3, v8

    .line 202
    .local v4, "fromInnerIndex":I
    iget v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunkLength:I

    sub-int/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 204
    .local v5, "length":I
    iget-object v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunks:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 206
    .local v1, "chunk":[B
    invoke-static {v1, v4, v0, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    sub-int/2addr v6, v5

    .line 209
    add-int/2addr v3, v5

    .line 210
    add-int/2addr v7, v5

    .line 211
    goto :goto_0

    .line 213
    .end local v1    # "chunk":[B
    .end local v2    # "fromChunkIndex":I
    .end local v4    # "fromInnerIndex":I
    .end local v5    # "length":I
    :cond_0
    return-object v0
.end method

.method public getLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/drew/lang/RandomAccessStreamReader;->_streamLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 78
    iget-wide v0, p0, Lcom/drew/lang/RandomAccessStreamReader;->_streamLength:J

    .line 83
    :goto_0
    return-wide v0

    .line 81
    :cond_0
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/drew/lang/RandomAccessStreamReader;->isValidIndex(II)Z

    .line 82
    sget-boolean v0, Lcom/drew/lang/RandomAccessStreamReader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessStreamReader;->_isStreamFinished:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_1
    iget-wide v0, p0, Lcom/drew/lang/RandomAccessStreamReader;->_streamLength:J

    goto :goto_0
.end method

.method protected isValidIndex(II)Z
    .locals 12
    .param p1, "index"    # I
    .param p2, "bytesRequested"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 118
    :cond_0
    const/4 v8, 0x0

    .line 166
    :goto_0
    return v8

    .line 121
    :cond_1
    int-to-long v8, p1

    int-to-long v10, p2

    add-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long v4, v8, v10

    .line 123
    .local v4, "endIndexLong":J
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v4, v8

    if-lez v8, :cond_2

    .line 124
    const/4 v8, 0x0

    goto :goto_0

    .line 127
    :cond_2
    long-to-int v3, v4

    .line 129
    .local v3, "endIndex":I
    iget-boolean v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_isStreamFinished:Z

    if-eqz v8, :cond_4

    .line 130
    int-to-long v8, v3

    iget-wide v10, p0, Lcom/drew/lang/RandomAccessStreamReader;->_streamLength:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 133
    :cond_4
    iget v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunkLength:I

    div-int v2, v3, v8

    .line 136
    .local v2, "chunkIndex":I
    :goto_1
    iget-object v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v2, v8, :cond_b

    .line 137
    sget-boolean v8, Lcom/drew/lang/RandomAccessStreamReader;->$assertionsDisabled:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_isStreamFinished:Z

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 139
    :cond_5
    iget v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunkLength:I

    new-array v1, v8, [B

    .line 140
    .local v1, "chunk":[B
    const/4 v7, 0x0

    .line 141
    .local v7, "totalBytesRead":I
    :cond_6
    :goto_2
    iget-boolean v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_isStreamFinished:Z

    if-nez v8, :cond_a

    iget v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunkLength:I

    if-eq v7, v8, :cond_a

    .line 142
    iget-object v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_stream:Ljava/io/InputStream;

    iget v9, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunkLength:I

    sub-int/2addr v9, v7

    invoke-virtual {v8, v1, v7, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 143
    .local v0, "bytesRead":I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_9

    .line 145
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_isStreamFinished:Z

    .line 146
    iget-object v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunkLength:I

    mul-int/2addr v8, v9

    add-int v6, v8, v7

    .line 147
    .local v6, "observedStreamLength":I
    iget-wide v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_streamLength:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 148
    int-to-long v8, v6

    iput-wide v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_streamLength:J

    .line 154
    :cond_7
    int-to-long v8, v3

    iget-wide v10, p0, Lcom/drew/lang/RandomAccessStreamReader;->_streamLength:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_6

    .line 155
    iget-object v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunks:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const/4 v8, 0x0

    goto :goto_0

    .line 149
    :cond_8
    iget-wide v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_streamLength:J

    int-to-long v10, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    .line 150
    sget-boolean v8, Lcom/drew/lang/RandomAccessStreamReader;->$assertionsDisabled:Z

    if-nez v8, :cond_7

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 159
    .end local v6    # "observedStreamLength":I
    :cond_9
    add-int/2addr v7, v0

    goto :goto_2

    .line 163
    .end local v0    # "bytesRead":I
    :cond_a
    iget-object v8, p0, Lcom/drew/lang/RandomAccessStreamReader;->_chunks:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    .end local v1    # "chunk":[B
    .end local v7    # "totalBytesRead":I
    :cond_b
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method public toUnshiftedOffset(I)I
    .locals 0
    .param p1, "localOffset"    # I

    .prologue
    .line 172
    return p1
.end method

.method protected validateIndex(II)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "bytesRequested"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    if-gez p1, :cond_0

    .line 100
    new-instance v0, Lcom/drew/lang/BufferBoundsException;

    const-string v1, "Attempt to read from buffer using a negative index (%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/drew/lang/BufferBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    if-gez p2, :cond_1

    .line 102
    new-instance v0, Lcom/drew/lang/BufferBoundsException;

    const-string v1, "Number of requested bytes must be zero or greater"

    invoke-direct {v0, v1}, Lcom/drew/lang/BufferBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 104
    new-instance v0, Lcom/drew/lang/BufferBoundsException;

    const-string v1, "Number of requested bytes summed with starting index exceed maximum range of signed 32 bit integers (requested index: %d, requested count: %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/drew/lang/BufferBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessStreamReader;->isValidIndex(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 108
    sget-boolean v0, Lcom/drew/lang/RandomAccessStreamReader;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessStreamReader;->_isStreamFinished:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 110
    :cond_3
    new-instance v0, Lcom/drew/lang/BufferBoundsException;

    iget-wide v2, p0, Lcom/drew/lang/RandomAccessStreamReader;->_streamLength:J

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/drew/lang/BufferBoundsException;-><init>(IIJ)V

    throw v0

    .line 112
    :cond_4
    return-void
.end method
