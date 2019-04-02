.class public Lcom/drew/lang/SequentialByteArrayReader;
.super Lcom/drew/lang/SequentialReader;
.source "SequentialByteArrayReader.java"


# instance fields
.field private final _bytes:[B
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private _index:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([BI)V

    .line 48
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "bytes"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "baseIndex"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/drew/lang/SequentialReader;-><init>()V

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    .line 57
    iput p2, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    .line 58
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    iget-object v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 64
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of data reached."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    iget v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getBytes([BII)V
    .locals 2
    .param p1, "buffer"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 88
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of data reached."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    iget v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    .line 93
    return-void
.end method

.method public getBytes(I)[B
    .locals 4
    .param p1, "count"    # I
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 74
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "End of data reached."

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_0
    new-array v0, p1, [B

    .line 78
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    iget v2, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    .line 81
    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public skip(J)V
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be zero or greater."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iget v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget-object v2, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 103
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of data reached."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    iget v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    .line 107
    return-void
.end method

.method public trySkip(J)Z
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be zero or greater."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    .line 118
    iget v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    iget-object v1, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_bytes:[B

    array-length v0, v0

    iput v0, p0, Lcom/drew/lang/SequentialByteArrayReader;->_index:I

    .line 120
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
