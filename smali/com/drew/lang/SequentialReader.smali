.class public abstract Lcom/drew/lang/SequentialReader;
.super Ljava/lang/Object;
.source "SequentialReader.java"


# instance fields
.field private _isMotorolaByteOrder:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    return-void
.end method


# virtual methods
.method public abstract available()I
.end method

.method public abstract getByte()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBytes([BII)V
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBytes(I)[B
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDouble64()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat32()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt16()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-short v0, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, -0x100

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    int-to-short v1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 183
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-short v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    int-to-short v1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0
.end method

.method public getInt32()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v4, 0xff0000

    const v3, 0xff00

    const/high16 v2, -0x1000000

    .line 219
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 227
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public getInt64()J
    .locals 11
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

    .line 242
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v10

    const-wide v4, 0xff0000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v9

    const-wide v4, 0xff00000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v8

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v7

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v6

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 254
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v6

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v7

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v8

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v9

    const-wide v4, 0xff00000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v10

    const-wide v4, 0xff0000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    const-wide/high16 v4, -0x100000000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_0
.end method

.method public getInt8()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    return v0
.end method

.method public getNullTerminatedBytes(I)[B
    .locals 5
    .param p1, "maxLengthBytes"    # I
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 374
    new-array v0, p1, [B

    .line 377
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 378
    .local v2, "length":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    aput-byte v3, v0, v2

    if-eqz v3, :cond_0

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_0
    if-ne v2, p1, :cond_1

    .line 387
    .end local v0    # "buffer":[B
    :goto_1
    return-object v0

    .line 384
    .restart local v0    # "buffer":[B
    :cond_1
    new-array v1, v2, [B

    .line 385
    .local v1, "bytes":[B
    if-lez v2, :cond_2

    .line 386
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v0, v1

    .line 387
    goto :goto_1
.end method

.method public getNullTerminatedString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "maxLengthBytes"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/SequentialReader;->getNullTerminatedStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/drew/metadata/StringValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNullTerminatedStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;
    .locals 2
    .param p1, "maxLengthBytes"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Lcom/drew/lang/SequentialReader;->getNullTerminatedBytes(I)[B

    move-result-object v0

    .line 360
    .local v0, "bytes":[B
    new-instance v1, Lcom/drew/metadata/StringValue;

    invoke-direct {v1, v0, p2}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public abstract getPosition()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getS15Fixed16()F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/high16 v6, 0x40f0000000000000L    # 65536.0

    .line 275
    iget-boolean v2, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    if-eqz v2, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-float v1, v2

    .line 278
    .local v1, "res":F
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 280
    .local v0, "d":I
    float-to-double v2, v1

    int-to-double v4, v0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 287
    :goto_0
    return v2

    .line 283
    .end local v0    # "d":I
    .end local v1    # "res":F
    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int v0, v2, v3

    .line 285
    .restart local v0    # "d":I
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    int-to-float v1, v2

    .line 287
    .restart local v1    # "res":F
    float-to-double v2, v1

    int-to-double v4, v0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "bytesRequested"    # I
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "bytesRequested"    # I
    .param p2, "charset"    # Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v0

    .line 312
    .local v0, "bytes":[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-object v2

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public getString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "bytesRequested"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
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
    .line 321
    invoke-virtual {p0, p1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v0

    .line 322
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public getStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;
    .locals 2
    .param p1, "bytesRequested"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
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
    .line 328
    new-instance v0, Lcom/drew/metadata/StringValue;

    invoke-virtual {p0, p1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getUInt16()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v2, 0xff00

    .line 158
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 164
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public getUInt32()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0xff00

    const-wide/16 v8, 0xff

    const/16 v7, 0x18

    const/16 v4, 0x10

    const/16 v6, 0x8

    .line 196
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v7

    const-wide v2, 0xff000000L

    and-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v6

    and-long/2addr v2, v10

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    or-long/2addr v0, v2

    .line 204
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v8

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v6

    and-long/2addr v2, v10

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v7

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_0
.end method

.method public getUInt8()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public isMotorolaByteOrder()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    return v0
.end method

.method public setMotorolaByteOrder(Z)V
    .locals 0
    .param p1, "motorolaByteOrder"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    .line 117
    return-void
.end method

.method public abstract skip(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract trySkip(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
