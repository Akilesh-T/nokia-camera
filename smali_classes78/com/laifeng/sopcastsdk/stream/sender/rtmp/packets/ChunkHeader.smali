.class public Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
.super Ljava/lang/Object;
.source "ChunkHeader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChunkHeader"


# instance fields
.field private absoluteTimestamp:I

.field private chunkStreamId:I

.field private chunkType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

.field private extendedTimestamp:I

.field private messageStreamId:I

.field private messageType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

.field private packetLength:I

.field private timestampDelta:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;ILcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;)V
    .locals 1
    .param p1, "chunkType"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;
    .param p2, "chunkStreamId"    # I
    .param p3, "messageType"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    .line 37
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    .line 38
    iput p2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkStreamId:I

    .line 39
    iput-object p3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 40
    return-void
.end method

.method private parseBasicHeader(B)V
    .locals 1
    .param p1, "basicHeaderByte"    # B

    .prologue
    .line 183
    and-int/lit16 v0, p1, 0xff

    ushr-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->valueOf(B)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    .line 184
    and-int/lit8 v0, p1, 0x3f

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkStreamId:I

    .line 185
    return-void
.end method

.method public static readHeader(Ljava/io/InputStream;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "sessionInfo"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;-><init>()V

    .line 44
    .local v0, "rtmpHeader":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    invoke-direct {v0, p0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->readHeaderImpl(Ljava/io/InputStream;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)V

    .line 45
    return-object v0
.end method

.method private readHeaderImpl(Ljava/io/InputStream;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sessionInfo"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v4, 0xffffff

    const/4 v3, 0x0

    .line 50
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 51
    .local v0, "basicHeaderByte":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 52
    new-instance v3, Ljava/io/EOFException;

    const-string v4, "Unexpected EOF while reading RTMP packet basic header"

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_0
    int-to-byte v5, v0

    invoke-direct {p0, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->parseBasicHeader(B)V

    .line 57
    sget-object v5, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader$1;->$SwitchMap$com$laifeng$sopcastsdk$stream$sender$rtmp$packets$ChunkType:[I

    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    invoke-virtual {v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 124
    const-string v3, "ChunkHeader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readHeaderImpl(): Invalid chunk type; basic header byte was: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-byte v5, v0

    invoke-static {v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->toHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid chunk type; basic header byte was: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-byte v5, v0

    invoke-static {v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->toHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :pswitch_0
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt24(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    .line 61
    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    .line 63
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt24(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->packetLength:I

    .line 65
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->valueOf(B)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    move-result-object v5

    iput-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 67
    const/4 v5, 0x4

    new-array v1, v5, [B

    .line 68
    .local v1, "messageStreamIdBytes":[B
    invoke-static {p1, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readBytesUntilFull(Ljava/io/InputStream;[B)V

    .line 69
    invoke-static {v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->toUnsignedInt32LittleEndian([B)I

    move-result v5

    iput v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageStreamId:I

    .line 71
    iget v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    if-lt v5, v4, :cond_1

    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v3

    :cond_1
    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    .line 72
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    if-eqz v3, :cond_2

    .line 73
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    .line 75
    :cond_2
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkStreamId:I

    invoke-virtual {p2, v3, p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->putPreReceiveChunkHeader(ILcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 127
    .end local v1    # "messageStreamIdBytes":[B
    :goto_0
    return-void

    .line 80
    :pswitch_1
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt24(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    .line 82
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt24(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->packetLength:I

    .line 84
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->valueOf(B)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    move-result-object v5

    iput-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 86
    iget v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    if-lt v5, v4, :cond_3

    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v4

    :goto_1
    iput v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    .line 87
    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkStreamId:I

    invoke-virtual {p2, v4}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->getPreReceiveChunkHeader(I)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v2

    .line 88
    .local v2, "prevHeader":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    if-eqz v2, :cond_5

    .line 89
    iget v3, v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageStreamId:I

    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageStreamId:I

    .line 90
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    :goto_2
    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    .line 95
    :goto_3
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkStreamId:I

    invoke-virtual {p2, v3, p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->putPreReceiveChunkHeader(ILcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    goto :goto_0

    .end local v2    # "prevHeader":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    :cond_3
    move v4, v3

    .line 86
    goto :goto_1

    .line 90
    .restart local v2    # "prevHeader":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    :cond_4
    iget v3, v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    add-int/2addr v3, v4

    goto :goto_2

    .line 92
    :cond_5
    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageStreamId:I

    .line 93
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    :goto_4
    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    goto :goto_4

    .line 100
    .end local v2    # "prevHeader":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    :pswitch_2
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt24(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    .line 102
    iget v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    if-lt v5, v4, :cond_7

    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v3

    :cond_7
    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    .line 103
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkStreamId:I

    invoke-virtual {p2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->getPreReceiveChunkHeader(I)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v2

    .line 104
    .restart local v2    # "prevHeader":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    iget v3, v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->packetLength:I

    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->packetLength:I

    .line 105
    iget-object v3, v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    iput-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 106
    iget v3, v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageStreamId:I

    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageStreamId:I

    .line 107
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    :goto_5
    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    .line 108
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkStreamId:I

    invoke-virtual {p2, v3, p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->putPreReceiveChunkHeader(ILcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    goto/16 :goto_0

    .line 107
    :cond_8
    iget v3, v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    add-int/2addr v3, v4

    goto :goto_5

    .line 112
    .end local v2    # "prevHeader":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    :pswitch_3
    iget v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkStreamId:I

    invoke-virtual {p2, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->getPreReceiveChunkHeader(I)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v2

    .line 114
    .restart local v2    # "prevHeader":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    iget v5, v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    if-lt v5, v4, :cond_9

    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v3

    :cond_9
    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    .line 115
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    if-eqz v3, :cond_a

    move v3, v4

    :goto_6
    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    .line 116
    iget v3, v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->packetLength:I

    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->packetLength:I

    .line 117
    iget-object v3, v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    iput-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    .line 118
    iget v3, v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageStreamId:I

    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageStreamId:I

    .line 119
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    :goto_7
    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    .line 120
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkStreamId:I

    invoke-virtual {p2, v3, p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->putPreReceiveChunkHeader(ILcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    goto/16 :goto_0

    .line 115
    :cond_a
    iget v3, v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    goto :goto_6

    .line 119
    :cond_b
    iget v3, v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    add-int/2addr v3, v4

    goto :goto_7

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getChunkStreamId()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkStreamId:I

    return v0
.end method

.method public getMessageType()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    return-object v0
.end method

.method public getPacketLength()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->packetLength:I

    return v0
.end method

.method public setChunkStreamId(I)V
    .locals 0
    .param p1, "channelId"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkStreamId:I

    .line 203
    return-void
.end method

.method public setMessageStreamId(I)V
    .locals 0
    .param p1, "messageStreamId"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageStreamId:I

    .line 207
    return-void
.end method

.method public setPacketLength(I)V
    .locals 0
    .param p1, "packetLength"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->packetLength:I

    .line 211
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChunkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ChunkStreamId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " absoluteTimestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestampDelta:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " messageLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->packetLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " messageType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " messageStreamId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extendedTimestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "chunkType"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;
    .param p3, "sessionInfo"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v2, 0xffffff

    .line 131
    invoke-virtual {p2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->getValue()B

    move-result v1

    shl-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkStreamId:I

    or-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 132
    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader$1;->$SwitchMap$com$laifeng$sopcastsdk$stream$sender$rtmp$packets$ChunkType:[I

    invoke-virtual {p2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 178
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid chunk type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :pswitch_0
    invoke-virtual {p3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->markAbsoluteTimestampTx()J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    .line 135
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    if-lt v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-static {p1, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt24(Ljava/io/OutputStream;I)V

    .line 136
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->packetLength:I

    invoke-static {p1, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt24(Ljava/io/OutputStream;I)V

    .line 137
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->getValue()B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 138
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageStreamId:I

    invoke-static {p1, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt32LittleEndian(Ljava/io/OutputStream;I)V

    .line 139
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    if-lt v1, v2, :cond_0

    .line 140
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    .line 141
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    invoke-static {p1, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    .line 180
    :cond_0
    :goto_1
    return-void

    .line 135
    :cond_1
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-virtual {p3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->markAbsoluteTimestampTx()J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    .line 147
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkStreamId:I

    invoke-virtual {p3, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->getPreSendChunkHeader(I)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v0

    .line 148
    .local v0, "preChunkHeader":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    iget v3, v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    .line 149
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    if-lt v1, v2, :cond_2

    move v1, v2

    :goto_2
    invoke-static {p1, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt24(Ljava/io/OutputStream;I)V

    .line 150
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->packetLength:I

    invoke-static {p1, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt24(Ljava/io/OutputStream;I)V

    .line 151
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->messageType:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->getValue()B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 152
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    if-lt v1, v2, :cond_0

    .line 153
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    .line 154
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    invoke-static {p1, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    goto :goto_1

    .line 149
    :cond_2
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    goto :goto_2

    .line 159
    .end local v0    # "preChunkHeader":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    :pswitch_2
    invoke-virtual {p3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->markAbsoluteTimestampTx()J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    .line 160
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->chunkStreamId:I

    invoke-virtual {p3, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->getPreSendChunkHeader(I)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v0

    .line 161
    .restart local v0    # "preChunkHeader":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    iget v3, v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    .line 162
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    if-lt v1, v2, :cond_3

    move v1, v2

    :goto_3
    invoke-static {p1, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt24(Ljava/io/OutputStream;I)V

    .line 163
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    if-lt v1, v2, :cond_0

    .line 164
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    .line 165
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    invoke-static {p1, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    goto :goto_1

    .line 162
    :cond_3
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->timestampDelta:I

    goto :goto_3

    .line 170
    .end local v0    # "preChunkHeader":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    :pswitch_3
    invoke-virtual {p3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->markAbsoluteTimestampTx()J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    .line 171
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    if-lt v1, v2, :cond_0

    .line 172
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->absoluteTimestamp:I

    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    .line 173
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->extendedTimestamp:I

    invoke-static {p1, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    goto :goto_1

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
