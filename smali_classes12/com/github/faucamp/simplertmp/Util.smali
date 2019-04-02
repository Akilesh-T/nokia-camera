.class public Lcom/github/faucamp/simplertmp/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final HEXES:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChallenge(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "challenge":Ljava/lang/String;
    const-string v3, "&"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "data":[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 157
    .local v2, "s":Ljava/lang/String;
    const-string v5, "challenge="

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 156
    .restart local v2    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getOpaque(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v1, ""

    .line 167
    .local v1, "opaque":Ljava/lang/String;
    const-string v3, "&"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "data":[Ljava/lang/String;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 169
    .local v2, "s":Ljava/lang/String;
    const-string v5, "opaque="

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 170
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 168
    .restart local v2    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getSalt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, "salt":Ljava/lang/String;
    const-string v3, "&"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "data":[Ljava/lang/String;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 145
    .local v1, "s":Ljava/lang/String;
    const-string v5, "salt="

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 150
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 144
    .restart local v1    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
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
    .line 89
    const/4 v2, 0x0

    .line 91
    .local v2, "totalBytesRead":I
    array-length v1, p1

    .line 93
    .local v1, "targetBytes":I
    :cond_0
    sub-int v3, v1, v2

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 94
    .local v0, "read":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 95
    add-int/2addr v2, v0

    .line 99
    if-lt v2, v1, :cond_0

    .line 100
    return-void

    .line 97
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
    .line 124
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

    .line 125
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
    .line 33
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
    .line 29
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
    .line 25
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

.method public static stringToMD5BASE64(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 179
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 180
    .local v1, "md":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 181
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 182
    .local v2, "md5hash":[B
    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 184
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "md5hash":[B
    :goto_0
    return-object v3

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static toByteArray(D)[B
    .locals 10
    .param p0, "d"    # D

    .prologue
    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 103
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 104
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
    .line 82
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
    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v2, 0x0

    .line 78
    :goto_0
    return-object v2

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .local v1, "hex":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-byte v0, p0, v2

    .line 76
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

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
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
    .line 67
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
    .line 63
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
    .line 48
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
    .line 52
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
    .line 116
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

    .line 129
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 130
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

    .line 139
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
    .line 43
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 44
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 45
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
    .line 37
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 38
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 39
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 40
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
    .line 18
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 19
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 20
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 21
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 22
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
    .line 56
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 57
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 58
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 59
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 60
    return-void
.end method
