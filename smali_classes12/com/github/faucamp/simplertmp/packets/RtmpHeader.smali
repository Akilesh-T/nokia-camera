.class public Lcom/github/faucamp/simplertmp/packets/RtmpHeader;
.super Ljava/lang/Object;
.source "RtmpHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;,
        Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RtmpHeader"


# instance fields
.field private absoluteTimestamp:I

.field private chunkStreamId:I

.field private chunkType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

.field private extendedTimestamp:I

.field private messageStreamId:I

.field private messageType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

.field private packetLength:I

.field private timestampDelta:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    .line 215
    return-void
.end method

.method public constructor <init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;ILcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;)V
    .locals 1
    .param p1, "chunkType"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;
    .param p2, "chunkStreamId"    # I
    .param p3, "messageType"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    .line 218
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->chunkType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    .line 219
    iput p2, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->chunkStreamId:I

    .line 220
    iput-object p3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    .line 221
    return-void
.end method

.method private parseBasicHeader(B)V
    .locals 1
    .param p1, "basicHeaderByte"    # B

    .prologue
    .line 355
    and-int/lit16 v0, p1, 0xff

    ushr-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->valueOf(B)Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    move-result-object v0

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->chunkType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    .line 356
    and-int/lit8 v0, p1, 0x3f

    iput v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->chunkStreamId:I

    .line 357
    return-void
.end method

.method public static readHeader(Ljava/io/InputStream;Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;)Lcom/github/faucamp/simplertmp/packets/RtmpHeader;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "rtmpSessionInfo"    # Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;-><init>()V

    .line 225
    .local v0, "rtmpHeader":Lcom/github/faucamp/simplertmp/packets/RtmpHeader;
    invoke-direct {v0, p0, p1}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->readHeaderImpl(Ljava/io/InputStream;Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;)V

    .line 226
    return-object v0
.end method

.method private readHeaderImpl(Ljava/io/InputStream;Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "rtmpSessionInfo"    # Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v4, 0xffffff

    const/4 v3, 0x0

    .line 231
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 232
    .local v0, "basicHeaderByte":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 233
    new-instance v3, Ljava/io/EOFException;

    const-string v4, "Unexpected EOF while reading RTMP packet basic header"

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    :cond_0
    int-to-byte v5, v0

    invoke-direct {p0, v5}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->parseBasicHeader(B)V

    .line 238
    sget-object v5, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$1;->$SwitchMap$com$github$faucamp$simplertmp$packets$RtmpHeader$ChunkType:[I

    iget-object v6, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->chunkType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    invoke-virtual {v6}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 301
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid chunk type; basic header byte was: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-byte v5, v0

    invoke-static {v5}, Lcom/github/faucamp/simplertmp/Util;->toHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :pswitch_0
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readUnsignedInt24(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    .line 242
    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    .line 244
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readUnsignedInt24(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->packetLength:I

    .line 246
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v5}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->valueOf(B)Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    move-result-object v5

    iput-object v5, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    .line 248
    const/4 v5, 0x4

    new-array v1, v5, [B

    .line 249
    .local v1, "messageStreamIdBytes":[B
    invoke-static {p1, v1}, Lcom/github/faucamp/simplertmp/Util;->readBytesUntilFull(Ljava/io/InputStream;[B)V

    .line 250
    invoke-static {v1}, Lcom/github/faucamp/simplertmp/Util;->toUnsignedInt32LittleEndian([B)I

    move-result v5

    iput v5, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageStreamId:I

    .line 252
    iget v5, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    if-lt v5, v4, :cond_1

    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v3

    :cond_1
    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    .line 253
    iget v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    if-eqz v3, :cond_2

    .line 254
    iget v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    .line 303
    .end local v1    # "messageStreamIdBytes":[B
    :cond_2
    :goto_0
    return-void

    .line 260
    :pswitch_1
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readUnsignedInt24(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    .line 262
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readUnsignedInt24(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->packetLength:I

    .line 264
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v5}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->valueOf(B)Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    move-result-object v5

    iput-object v5, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    .line 266
    iget v5, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    if-lt v5, v4, :cond_3

    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v4

    :goto_1
    iput v4, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    .line 267
    iget v4, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->chunkStreamId:I

    invoke-virtual {p2, v4}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->prevHeaderRx()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v2

    .line 268
    .local v2, "prevHeader":Lcom/github/faucamp/simplertmp/packets/RtmpHeader;
    if-eqz v2, :cond_5

    .line 269
    iget v3, v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageStreamId:I

    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageStreamId:I

    .line 270
    iget v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    :goto_2
    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    goto :goto_0

    .end local v2    # "prevHeader":Lcom/github/faucamp/simplertmp/packets/RtmpHeader;
    :cond_3
    move v4, v3

    .line 266
    goto :goto_1

    .line 270
    .restart local v2    # "prevHeader":Lcom/github/faucamp/simplertmp/packets/RtmpHeader;
    :cond_4
    iget v3, v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    iget v4, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    add-int/2addr v3, v4

    goto :goto_2

    .line 272
    :cond_5
    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageStreamId:I

    .line 273
    iget v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    :goto_3
    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    goto :goto_3

    .line 279
    .end local v2    # "prevHeader":Lcom/github/faucamp/simplertmp/packets/RtmpHeader;
    :pswitch_2
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readUnsignedInt24(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    .line 281
    iget v5, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    if-lt v5, v4, :cond_7

    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v3

    :cond_7
    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    .line 282
    iget v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->chunkStreamId:I

    invoke-virtual {p2, v3}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->prevHeaderRx()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v2

    .line 283
    .restart local v2    # "prevHeader":Lcom/github/faucamp/simplertmp/packets/RtmpHeader;
    iget v3, v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->packetLength:I

    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->packetLength:I

    .line 284
    iget-object v3, v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    iput-object v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    .line 285
    iget v3, v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageStreamId:I

    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageStreamId:I

    .line 286
    iget v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    :goto_4
    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    goto :goto_0

    :cond_8
    iget v3, v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    iget v4, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    add-int/2addr v3, v4

    goto :goto_4

    .line 290
    .end local v2    # "prevHeader":Lcom/github/faucamp/simplertmp/packets/RtmpHeader;
    :pswitch_3
    iget v5, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->chunkStreamId:I

    invoke-virtual {p2, v5}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->prevHeaderRx()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v2

    .line 292
    .restart local v2    # "prevHeader":Lcom/github/faucamp/simplertmp/packets/RtmpHeader;
    iget v5, v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    if-lt v5, v4, :cond_9

    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v3

    :cond_9
    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    .line 293
    iget v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    if-eqz v3, :cond_a

    move v3, v4

    :goto_5
    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    .line 294
    iget v3, v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->packetLength:I

    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->packetLength:I

    .line 295
    iget-object v3, v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    iput-object v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    .line 296
    iget v3, v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageStreamId:I

    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageStreamId:I

    .line 297
    iget v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    :goto_6
    iput v3, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    goto/16 :goto_0

    .line 293
    :cond_a
    iget v3, v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    goto :goto_5

    .line 297
    :cond_b
    iget v3, v2, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    iget v4, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    add-int/2addr v3, v4

    goto :goto_6

    .line 238
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
.method public getAbsoluteTimestamp()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    return v0
.end method

.method public getChunkStreamId()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->chunkStreamId:I

    return v0
.end method

.method public getChunkType()Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->chunkType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    return-object v0
.end method

.method public getMessageStreamId()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageStreamId:I

    return v0
.end method

.method public getMessageType()Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    return-object v0
.end method

.method public getPacketLength()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->packetLength:I

    return v0
.end method

.method public getTimestampDelta()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    return v0
.end method

.method public setAbsoluteTimestamp(I)V
    .locals 0
    .param p1, "absoluteTimestamp"    # I

    .prologue
    .line 385
    iput p1, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    .line 386
    return-void
.end method

.method public setChunkStreamId(I)V
    .locals 0
    .param p1, "channelId"    # I

    .prologue
    .line 398
    iput p1, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->chunkStreamId:I

    .line 399
    return-void
.end method

.method public setChunkType(Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;)V
    .locals 0
    .param p1, "chunkType"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->chunkType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    .line 403
    return-void
.end method

.method public setMessageStreamId(I)V
    .locals 0
    .param p1, "messageStreamId"    # I

    .prologue
    .line 406
    iput p1, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageStreamId:I

    .line 407
    return-void
.end method

.method public setMessageType(Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;)V
    .locals 0
    .param p1, "messageType"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    .line 411
    return-void
.end method

.method public setPacketLength(I)V
    .locals 0
    .param p1, "packetLength"    # I

    .prologue
    .line 414
    iput p1, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->packetLength:I

    .line 415
    return-void
.end method

.method public setTimestampDelta(I)V
    .locals 0
    .param p1, "timestampDelta"    # I

    .prologue
    .line 393
    iput p1, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    .line 394
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "chunkType"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;
    .param p3, "chunkStreamInfo"    # Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0xffffff

    .line 307
    invoke-virtual {p2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->getValue()B

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    iget v2, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->chunkStreamId:I

    or-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 308
    sget-object v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$1;->$SwitchMap$com$github$faucamp$simplertmp$packets$RtmpHeader$ChunkType:[I

    invoke-virtual {p2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 350
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid chunk type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :pswitch_0
    invoke-virtual {p3}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->markDeltaTimestampTx()J

    .line 311
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    if-lt v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->writeUnsignedInt24(Ljava/io/OutputStream;I)V

    .line 312
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->packetLength:I

    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->writeUnsignedInt24(Ljava/io/OutputStream;I)V

    .line 313
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->getValue()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 314
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageStreamId:I

    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->writeUnsignedInt32LittleEndian(Ljava/io/OutputStream;I)V

    .line 315
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    if-lt v0, v1, :cond_0

    .line 316
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    iput v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    .line 317
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    .line 352
    :cond_0
    :goto_1
    return-void

    .line 311
    :cond_1
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    goto :goto_0

    .line 322
    :pswitch_1
    invoke-virtual {p3}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->markDeltaTimestampTx()J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    .line 323
    invoke-virtual {p3}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->getPrevHeaderTx()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getAbsoluteTimestamp()I

    move-result v0

    iget v2, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    .line 324
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    if-lt v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->writeUnsignedInt24(Ljava/io/OutputStream;I)V

    .line 325
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->packetLength:I

    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->writeUnsignedInt24(Ljava/io/OutputStream;I)V

    .line 326
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->messageType:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->getValue()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 327
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    if-lt v0, v1, :cond_0

    .line 328
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    iput v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    .line 329
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    goto :goto_1

    .line 324
    :cond_2
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    goto :goto_2

    .line 334
    :pswitch_2
    invoke-virtual {p3}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->markDeltaTimestampTx()J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    .line 335
    invoke-virtual {p3}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->getPrevHeaderTx()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getAbsoluteTimestamp()I

    move-result v0

    iget v2, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    .line 336
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    if-lt v0, v1, :cond_3

    move v0, v1

    :goto_3
    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->writeUnsignedInt24(Ljava/io/OutputStream;I)V

    .line 337
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    if-lt v0, v1, :cond_0

    .line 338
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->absoluteTimestamp:I

    iput v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    .line 339
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    goto :goto_1

    .line 336
    :cond_3
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->timestampDelta:I

    goto :goto_3

    .line 344
    :pswitch_3
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    if-lez v0, :cond_0

    .line 345
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->extendedTimestamp:I

    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    goto :goto_1

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
