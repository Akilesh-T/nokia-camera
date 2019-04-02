.class public Lcom/laifeng/sopcastsdk/stream/amf/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final HEXES:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBytesUntilFull(Ljava/io/InputStream;[B)V
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "targetBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 94
    .local v2, "totalBytesRead":I
    array-length v1, p1

    .line 96
    .local v1, "targetBytes":I
    :cond_0
    sub-int v3, v1, v2

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 97
    .local v0, "read":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 98
    add-int/2addr v2, v0

    .line 102
    if-lt v2, v1, :cond_0

    .line 103
    return-void

    .line 100
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected EOF reached before read buffer was filled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static readDouble(Ljava/io/InputStream;)D
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    int-to-long v4, v4

    or-long/2addr v2, v4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    or-long/2addr v2, v4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    or-long/2addr v2, v4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long v0, v2, v4

    .line 128
    .local v0, "bits":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public static readUnsignedInt16(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readUnsignedInt24(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readUnsignedInt32(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static toByteArray(D)[B
    .locals 10
    .param p0, "d"    # D

    .prologue
    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 106
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 107
    .local v0, "l":J
    new-array v2, v8, [B

    const/4 v3, 0x0

    const/16 v4, 0x38

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x30

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x28

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x20

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x18

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x10

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    shr-long v4, v0, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    and-long v4, v0, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    return-object v2
.end method

.method public static toHexString(B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0123456789ABCDEF"

    and-int/lit16 v2, p0, 0xf0

    shr-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p0, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "raw"    # [B

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v2, 0x0

    .line 81
    :goto_0
    return-object v2

    .line 77
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 78
    .local v1, "hex":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-byte v0, p0, v2

    .line 79
    .local v0, "b":B
    const-string v4, "0123456789ABCDEF"

    and-int/lit16 v5, v0, 0xf0

    shr-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0123456789ABCDEF"

    and-int/lit8 v6, v0, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    .end local v0    # "b":B
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toUnsignedInt16([B)I
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 70
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static toUnsignedInt24([B)I
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 66
    const/4 v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static toUnsignedInt32([B)I
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 51
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static toUnsignedInt32LittleEndian([B)I
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 55
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static unsignedInt32ToByteArray(I)[B
    .locals 3
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static writeDouble(Ljava/io/OutputStream;D)V
    .locals 9
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 132
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 133
    .local v0, "l":J
    new-array v2, v8, [B

    const/4 v3, 0x0

    const/16 v4, 0x38

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x30

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x28

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x20

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x18

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x10

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    shr-long v4, v0, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    and-long v4, v0, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 142
    return-void
.end method

.method public static writeUnsignedInt16(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 47
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 48
    return-void
.end method

.method public static writeUnsignedInt24(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 41
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 42
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 43
    return-void
.end method

.method public static writeUnsignedInt32(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 22
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 23
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 24
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 25
    return-void
.end method

.method public static writeUnsignedInt32LittleEndian(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 60
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 61
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 62
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 63
    return-void
.end method
