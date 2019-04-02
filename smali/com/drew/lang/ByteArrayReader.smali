.class public Lcom/drew/lang/ByteArrayReader;
.super Lcom/drew/lang/RandomAccessReader;
.source "ByteArrayReader.java"


# instance fields
.field private final _baseOffset:I

.field private final _buffer:[B
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "buffer"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/SuppressWarnings;
        justification = "Design intent"
        value = "EI_EXPOSE_REP2"
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/drew/lang/ByteArrayReader;-><init>([BI)V

    .line 48
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "buffer"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "baseOffset"    # I
    .annotation build Lcom/drew/lang/annotations/SuppressWarnings;
        justification = "Design intent"
        value = "EI_EXPOSE_REP2"
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/drew/lang/RandomAccessReader;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56
    :cond_0
    if-gez p2, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iput-object p1, p0, Lcom/drew/lang/ByteArrayReader;->_buffer:[B

    .line 60
    iput p2, p0, Lcom/drew/lang/ByteArrayReader;->_baseOffset:I

    .line 61
    return-void
.end method


# virtual methods
.method public getByte(I)B
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/ByteArrayReader;->validateIndex(II)V

    .line 79
    iget-object v0, p0, Lcom/drew/lang/ByteArrayReader;->_buffer:[B

    iget v1, p0, Lcom/drew/lang/ByteArrayReader;->_baseOffset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public getBytes(II)[B
    .locals 4
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
    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/ByteArrayReader;->validateIndex(II)V

    .line 103
    new-array v0, p2, [B

    .line 104
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/drew/lang/ByteArrayReader;->_buffer:[B

    iget v2, p0, Lcom/drew/lang/ByteArrayReader;->_baseOffset:I

    add-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/drew/lang/ByteArrayReader;->_buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/drew/lang/ByteArrayReader;->_baseOffset:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method protected isValidIndex(II)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "bytesRequested"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    if-ltz p2, :cond_0

    if-ltz p1, :cond_0

    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/ByteArrayReader;->getLength()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toUnshiftedOffset(I)I
    .locals 1
    .param p1, "localOffset"    # I

    .prologue
    .line 66
    iget v0, p0, Lcom/drew/lang/ByteArrayReader;->_baseOffset:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected validateIndex(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bytesRequested"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/ByteArrayReader;->isValidIndex(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/drew/lang/BufferBoundsException;

    invoke-virtual {p0, p1}, Lcom/drew/lang/ByteArrayReader;->toUnshiftedOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/drew/lang/ByteArrayReader;->_buffer:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/drew/lang/BufferBoundsException;-><init>(IIJ)V

    throw v0

    .line 87
    :cond_0
    return-void
.end method
