.class public final Lcom/github/faucamp/simplertmp/packets/Handshake;
.super Ljava/lang/Object;
.source "Handshake.java"


# static fields
.field private static final DIGEST_OFFSET_INDICATOR_POS:I = 0x304

.field private static final GENUINE_FP_KEY:[B

.field private static final HANDSHAKE_SIZE:I = 0x600

.field private static final PROTOCOL_VERSION:I = 0x3

.field private static final SHA256_DIGEST_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "Handshake"


# instance fields
.field private s1:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x3e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/faucamp/simplertmp/packets/Handshake;->GENUINE_FP_KEY:[B

    return-void

    :array_0
    .array-data 1
        0x47t
        0x65t
        0x6et
        0x75t
        0x69t
        0x6et
        0x65t
        0x20t
        0x41t
        0x64t
        0x6ft
        0x62t
        0x65t
        0x20t
        0x46t
        0x6ct
        0x61t
        0x73t
        0x68t
        0x20t
        0x50t
        0x6ct
        0x61t
        0x79t
        0x65t
        0x72t
        0x20t
        0x30t
        0x30t
        0x31t
        -0x10t
        -0x12t
        -0x3et
        0x4at
        -0x80t
        0x68t
        -0x42t
        -0x18t
        0x2et
        0x0t
        -0x30t
        -0x2ft
        0x2t
        -0x62t
        0x7et
        0x57t
        0x6et
        -0x14t
        0x5dt
        0x2dt
        0x29t
        -0x80t
        0x6ft
        -0x55t
        -0x6dt
        -0x48t
        -0x1at
        0x36t
        -0x31t
        -0x15t
        0x31t
        -0x52t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final readS0(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const-string v1, "Handshake"

    const-string v2, "readS0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v0, v1

    .line 50
    .local v0, "s0":B
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 51
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 52
    new-instance v1, Ljava/io/IOException;

    const-string v2, "InputStream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid RTMP protocol version; expected 3, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_1
    return-void
.end method

.method public final readS1(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x600

    .line 143
    const-string v2, "Handshake"

    const-string v3, "readS1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-array v2, v4, [B

    iput-object v2, p0, Lcom/github/faucamp/simplertmp/packets/Handshake;->s1:[B

    .line 147
    const/4 v1, 0x0

    .line 150
    .local v1, "totalBytesRead":I
    :cond_0
    iget-object v2, p0, Lcom/github/faucamp/simplertmp/packets/Handshake;->s1:[B

    rsub-int v3, v1, 0x600

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 151
    .local v0, "read":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 152
    add-int/2addr v1, v0

    .line 154
    :cond_1
    if-lt v1, v4, :cond_0

    .line 156
    if-eq v1, v4, :cond_2

    .line 157
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected EOF while reading S1, expected 1536 bytes, but only read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_2
    const-string v2, "Handshake"

    const-string v3, "readS1(): S1 total bytes read OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public final readS2(Ljava/io/InputStream;)V
    .locals 11
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x5f8

    const/4 v9, 0x4

    const/4 v8, -0x1

    .line 175
    const-string v6, "Handshake"

    const-string v7, "readS2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-array v4, v9, [B

    .line 177
    .local v4, "sr_serverTime":[B
    new-array v3, v9, [B

    .line 178
    .local v3, "s2_serverVersion":[B
    new-array v2, v10, [B

    .line 181
    .local v2, "s2_rest":[B
    const/4 v5, 0x0

    .line 184
    .local v5, "totalBytesRead":I
    :cond_0
    rsub-int/lit8 v6, v5, 0x4

    invoke-virtual {p1, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 185
    .local v0, "read":I
    if-ne v0, v8, :cond_1

    .line 187
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Unexpected EOF while reading S2 bytes 0-3"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 189
    :cond_1
    add-int/2addr v5, v0

    .line 191
    if-lt v5, v9, :cond_0

    .line 194
    const/4 v5, 0x0

    .line 196
    :cond_2
    rsub-int/lit8 v6, v5, 0x4

    invoke-virtual {p1, v3, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 197
    if-ne v0, v8, :cond_3

    .line 199
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Unexpected EOF while reading S2 bytes 4-7"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 201
    :cond_3
    add-int/2addr v5, v0

    .line 203
    if-lt v5, v9, :cond_2

    .line 206
    const/16 v1, 0x5f8

    .line 207
    .local v1, "remainingBytes":I
    const/4 v5, 0x0

    .line 209
    :cond_4
    rsub-int v6, v5, 0x5f8

    invoke-virtual {p1, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 210
    if-eq v0, v8, :cond_5

    .line 211
    add-int/2addr v5, v0

    .line 213
    :cond_5
    if-ge v5, v10, :cond_6

    if-ne v0, v8, :cond_4

    .line 215
    :cond_6
    if-eq v5, v10, :cond_7

    .line 216
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected EOF while reading remainder of S2, expected 1528 bytes, but only read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 218
    :cond_7
    const-string v6, "Handshake"

    const-string v7, "readS2(): S2 total bytes read OK"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public final writeC0(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "Handshake"

    const-string v1, "writeC0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 45
    return-void
.end method

.method public final writeC1(Ljava/io/OutputStream;)V
    .locals 18
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const-string v14, "Handshake"

    const-string v15, "writeC1"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v14, "Handshake"

    const-string v15, "writeC1(): Calculating digest offset"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    .line 72
    .local v10, "random":Ljava/util/Random;
    const/16 v14, 0x2d0

    invoke-virtual {v10, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 74
    .local v5, "digestOffset":I
    rem-int/lit16 v14, v5, 0x2d8

    add-int/lit16 v14, v14, 0x304

    add-int/lit8 v2, v14, 0x4

    .line 75
    .local v2, "absoluteDigestOffset":I
    const-string v14, "Handshake"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "writeC1(): (real value of) digestOffset: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v14, "Handshake"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "writeC1(): recalculated digestOffset: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    move v11, v5

    .line 81
    .local v11, "remaining":I
    const/4 v14, 0x4

    new-array v6, v14, [B

    .line 82
    .local v6, "digestOffsetBytes":[B
    const/4 v7, 0x3

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_1

    .line 83
    const/16 v14, 0xff

    if-le v11, v14, :cond_0

    .line 84
    const/4 v14, -0x1

    aput-byte v14, v6, v7

    .line 85
    add-int/lit16 v11, v11, -0xff

    .line 82
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 87
    :cond_0
    int-to-byte v14, v11

    aput-byte v14, v6, v7

    .line 88
    sub-int/2addr v11, v11

    goto :goto_1

    .line 97
    :cond_1
    const-string v14, "Handshake"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "writeC1(): digestOffsetBytes: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v6}, Lcom/github/faucamp/simplertmp/Util;->toHexString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-array v9, v2, [B

    .line 101
    .local v9, "partBeforeDigest":[B
    const-string v14, "Handshake"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "partBeforeDigest(): size: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v9

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v10, v9}, Ljava/util/Random;->nextBytes([B)V

    .line 104
    const-string v14, "Handshake"

    const-string v15, "writeC1(): Writing timestamp and Flash Player version"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v14, v14

    invoke-static {v14}, Lcom/github/faucamp/simplertmp/Util;->unsignedInt32ToByteArray(I)[B

    move-result-object v13

    .line 106
    .local v13, "timeStamp":[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v13, v14, v9, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    const/4 v14, 0x4

    new-array v14, v14, [B

    fill-array-data v14, :array_0

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    rsub-int v14, v2, 0x600

    add-int/lit8 v14, v14, -0x20

    new-array v8, v14, [B

    .line 111
    .local v8, "partAfterDigest":[B
    const-string v14, "Handshake"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "partAfterDigest(): size: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v8

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v10, v8}, Ljava/util/Random;->nextBytes([B)V

    .line 117
    const-string v14, "Handshake"

    const-string v15, "copying digest offset bytes in partBeforeDigest"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v14, 0x0

    const/16 v15, 0x304

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v6, v14, v9, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    const-string v14, "Handshake"

    const-string v15, "writeC1(): Calculating digest"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/16 v14, 0x5e0

    new-array v12, v14, [B

    .line 128
    .local v12, "tempBuffer":[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v14, v12, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    const/4 v14, 0x0

    array-length v15, v9

    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v8, v14, v12, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    new-instance v3, Lcom/github/faucamp/simplertmp/Crypto;

    invoke-direct {v3}, Lcom/github/faucamp/simplertmp/Crypto;-><init>()V

    .line 132
    .local v3, "crypto":Lcom/github/faucamp/simplertmp/Crypto;
    sget-object v14, Lcom/github/faucamp/simplertmp/packets/Handshake;->GENUINE_FP_KEY:[B

    const/16 v15, 0x1e

    invoke-virtual {v3, v12, v14, v15}, Lcom/github/faucamp/simplertmp/Crypto;->calculateHmacSHA256([B[BI)[B

    move-result-object v4

    .line 135
    .local v4, "digest":[B
    const-string v14, "Handshake"

    const-string v15, "writeC1(): writing C1 packet"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write([B)V

    .line 137
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 138
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 139
    return-void

    .line 107
    :array_0
    .array-data 1
        -0x80t
        0x0t
        0x7t
        0x2t
    .end array-data
.end method

.method public final writeC2(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const-string v0, "Handshake"

    const-string v1, "readC2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/Handshake;->s1:[B

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "C2 cannot be written without S1 being read first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/Handshake;->s1:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 171
    return-void
.end method
