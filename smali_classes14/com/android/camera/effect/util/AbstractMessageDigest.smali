.class public abstract Lcom/android/camera/effect/util/AbstractMessageDigest;
.super Ljava/lang/Object;
.source "AbstractMessageDigest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    .line 76
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v1, "result":Ljava/lang/StringBuffer;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p1, v2

    .line 78
    .local v0, "b":B
    and-int/lit16 v4, v0, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public digestHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 67
    .local v0, "digest":Ljava/security/MessageDigest;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 68
    .local v2, "hash":[B
    invoke-direct {p0, v2}, Lcom/android/camera/effect/util/AbstractMessageDigest;->bytesToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 71
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hash":[B
    :goto_0
    return-object v3

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    const-string v3, ""

    goto :goto_0
.end method

.method protected abstract getMessageDigest()Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method public hash(Ljava/io/File;)Ljava/lang/String;
    .locals 18
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    const/4 v13, 0x0

    .line 18
    .local v13, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/effect/util/AbstractMessageDigest;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v11

    .line 19
    .local v11, "digest":Ljava/security/MessageDigest;
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .local v14, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v14}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 21
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 22
    .local v6, "length":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v6, v4

    if-lez v3, :cond_1

    .line 25
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is too large."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    .end local v6    # "length":J
    :catch_0
    move-exception v12

    move-object v13, v14

    .line 43
    .end local v11    # "digest":Ljava/security/MessageDigest;
    .end local v14    # "inputStream":Ljava/io/FileInputStream;
    .local v12, "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Hash Algorithm."

    invoke-direct {v3, v4, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v13, :cond_0

    .line 48
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    :cond_0
    throw v3

    .line 28
    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "length":J
    .restart local v11    # "digest":Ljava/security/MessageDigest;
    .restart local v14    # "inputStream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_3
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    .line 29
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    const/16 v9, 0x2000

    .line 30
    .local v9, "bufsize":I
    new-array v0, v9, [B

    move-object/from16 v17, v0

    .line 31
    .local v17, "temp":[B
    const/4 v10, 0x0

    .line 33
    .local v10, "bytesRead":I
    :goto_2
    int-to-long v4, v10

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    .line 34
    long-to-int v3, v6

    sub-int/2addr v3, v10

    if-lt v3, v9, :cond_2

    move/from16 v16, v9

    .line 35
    .local v16, "numBytes":I
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v8, v0, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 36
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v11, v0, v3, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 37
    add-int v10, v10, v16

    .line 38
    goto :goto_2

    .line 34
    .end local v16    # "numBytes":I
    :cond_2
    long-to-int v3, v6

    sub-int v16, v3, v10

    goto :goto_3

    .line 40
    :cond_3
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v15

    .line 41
    .local v15, "mdbytes":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/camera/effect/util/AbstractMessageDigest;->bytesToHex([B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 47
    if-eqz v14, :cond_4

    .line 48
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 41
    :cond_4
    return-object v3

    .line 44
    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    .end local v6    # "length":J
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "bufsize":I
    .end local v10    # "bytesRead":I
    .end local v11    # "digest":Ljava/security/MessageDigest;
    .end local v14    # "inputStream":Ljava/io/FileInputStream;
    .end local v15    # "mdbytes":[B
    .end local v17    # "temp":[B
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v12

    .line 45
    .local v12, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_4
    :try_start_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Hash Algorithm."

    invoke-direct {v3, v4, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 47
    .end local v12    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v11    # "digest":Ljava/security/MessageDigest;
    .restart local v14    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v13, v14

    .end local v14    # "inputStream":Ljava/io/FileInputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 44
    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v14    # "inputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v12

    move-object v13, v14

    .end local v14    # "inputStream":Ljava/io/FileInputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 42
    .end local v11    # "digest":Ljava/security/MessageDigest;
    :catch_3
    move-exception v12

    goto :goto_0
.end method

.method public hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/effect/util/AbstractMessageDigest;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 56
    .local v0, "digest":Ljava/security/MessageDigest;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 57
    .local v2, "hash":[B
    invoke-direct {p0, v2}, Lcom/android/camera/effect/util/AbstractMessageDigest;->bytesToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 60
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hash":[B
    :goto_0
    return-object v3

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    const-string v3, ""

    goto :goto_0
.end method
