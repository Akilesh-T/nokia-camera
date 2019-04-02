.class public abstract Lcom/drew/lang/RandomAccessReader;
.super Ljava/lang/Object;
.source "RandomAccessReader.java"


# instance fields
.field private _isMotorolaByteOrder:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    return-void
.end method


# virtual methods
.method public getBit(I)Z
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 142
    div-int/lit8 v2, p1, 0x8

    .line 143
    .local v2, "byteIndex":I
    rem-int/lit8 v1, p1, 0x8

    .line 145
    .local v1, "bitIndex":I
    invoke-virtual {p0, v2, v3}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 147
    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    .line 148
    .local v0, "b":B
    shr-int v4, v0, v1

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public abstract getByte(I)B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBytes(II)[B
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDouble64(I)D
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getInt64(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat32(I)F
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt16(I)S
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 212
    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    int-to-short v0, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, -0x100

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    int-to-short v1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 218
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    int-to-short v0, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, -0x100

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    int-to-short v1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0
.end method

.method public getInt24(I)I
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v1, 0xff0000

    const v2, 0xff00

    .line 232
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 234
    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 241
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public getInt32(I)I
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0xff0000

    const v2, 0xff00

    const/high16 v1, -0x1000000

    .line 282
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 284
    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 292
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public getInt64(I)J
    .locals 11
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x28

    const/16 v9, 0x20

    const/16 v8, 0x18

    const/16 v7, 0x10

    const/16 v6, 0x8

    .line 308
    invoke-virtual {p0, p1, v6}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 310
    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v10

    const-wide v4, 0xff0000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v9

    const-wide v4, 0xff00000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v8

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v7

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v6

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x7

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 322
    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, 0x7

    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v10

    const-wide v4, 0xff0000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v9

    const-wide v4, 0xff00000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v8

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v7

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v6

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_0
.end method

.method public getInt8(I)B
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    return v0
.end method

.method public abstract getLength()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getNullTerminatedBytes(II)[B
    .locals 5
    .param p1, "index"    # I
    .param p2, "maxLengthBytes"    # I
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 430
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v0

    .line 433
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 434
    .local v2, "length":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-byte v3, v0, v2

    if-eqz v3, :cond_0

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :cond_0
    if-ne v2, p2, :cond_1

    .line 443
    .end local v0    # "buffer":[B
    :goto_1
    return-object v0

    .line 440
    .restart local v0    # "buffer":[B
    :cond_1
    new-array v1, v2, [B

    .line 441
    .local v1, "bytes":[B
    if-lez v2, :cond_2

    .line 442
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v0, v1

    .line 443
    goto :goto_1
.end method

.method public getNullTerminatedString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I
    .param p2, "maxLengthBytes"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessReader;->getNullTerminatedBytes(II)[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getNullTerminatedStringValue(IILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;
    .locals 2
    .param p1, "index"    # I
    .param p2, "maxLengthBytes"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessReader;->getNullTerminatedBytes(II)[B

    move-result-object v0

    .line 415
    .local v0, "bytes":[B
    new-instance v1, Lcom/drew/metadata/StringValue;

    invoke-direct {v1, v0, p3}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public getS15Fixed16(I)F
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/high16 v6, 0x40f0000000000000L    # 65536.0

    .line 343
    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 345
    iget-boolean v2, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    if-eqz v2, :cond_0

    .line 346
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-float v1, v2

    .line 348
    .local v1, "res":F
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p1, 0x3

    invoke-virtual {p0, v3}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 350
    .local v0, "d":I
    float-to-double v2, v1

    int-to-double v4, v0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 357
    :goto_0
    return v2

    .line 353
    .end local v0    # "d":I
    .end local v1    # "res":F
    :cond_0
    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v3}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-float v1, v2

    .line 355
    .restart local v1    # "res":F
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 357
    .restart local v0    # "d":I
    float-to-double v2, v1

    int-to-double v4, v0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    goto :goto_0
.end method

.method public getString(IILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I
    .param p2, "bytesRequested"    # I
    .param p3, "charset"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v0

    .line 388
    .local v0, "bytes":[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-object v2

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public getString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I
    .param p2, "bytesRequested"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getStringValue(IILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;
    .locals 2
    .param p1, "index"    # I
    .param p2, "bytesRequested"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Lcom/drew/metadata/StringValue;

    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getUInt16(I)I
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0xff00

    .line 188
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 190
    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 196
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public getUInt32(I)J
    .locals 12
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0xff00

    const-wide/16 v8, 0xff

    const/16 v2, 0x18

    const/16 v4, 0x10

    const/16 v6, 0x8

    .line 256
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 258
    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    const-wide v2, 0xff000000L

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v6

    and-long/2addr v2, v10

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    or-long/2addr v0, v2

    .line 266
    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    const-wide v2, 0xff000000L

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v6

    and-long/2addr v2, v10

    or-long/2addr v0, v2

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    or-long/2addr v0, v2

    goto :goto_0
.end method

.method public getUInt8(I)S
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public isMotorolaByteOrder()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    return v0
.end method

.method protected abstract isValidIndex(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setMotorolaByteOrder(Z)V
    .locals 0
    .param p1, "motorolaByteOrder"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    .line 119
    return-void
.end method

.method public abstract toUnshiftedOffset(I)I
.end method

.method protected abstract validateIndex(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
