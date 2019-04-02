.class public Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;
.super Ljava/lang/Object;
.source "RtmpDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RtmpDecoder"


# instance fields
.field private sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

.field private storeChunkHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)V
    .locals 1
    .param p1, "sessionInfo"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;->storeChunkHashMap:Ljava/util/HashMap;

    .line 35
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;->sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    .line 36
    return-void
.end method


# virtual methods
.method public clearStoredChunks(I)V
    .locals 3
    .param p1, "chunkStreamId"    # I

    .prologue
    .line 107
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;->storeChunkHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;

    .line 108
    .local v0, "storeChunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;->clearStoredChunks()V

    .line 111
    :cond_0
    return-void
.end method

.method public readPacket(Ljava/io/InputStream;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;->sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    invoke-static {p1, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->readHeader(Ljava/io/InputStream;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v0

    .line 42
    .local v0, "header":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    const-string v5, "RtmpDecoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readPacket(): header.messageType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->getMessageType()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->getPacketLength()I

    move-result v1

    .line 45
    .local v1, "messageLength":I
    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->getPacketLength()I

    move-result v5

    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;->sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    invoke-virtual {v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->getRxChunkSize()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 48
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;->storeChunkHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->getChunkStreamId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;

    .line 49
    .local v4, "storeChunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;
    if-nez v4, :cond_0

    .line 50
    new-instance v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;

    .end local v4    # "storeChunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;
    invoke-direct {v4}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;-><init>()V

    .line 51
    .restart local v4    # "storeChunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;->storeChunkHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->getChunkStreamId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;->sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    invoke-virtual {v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->getRxChunkSize()I

    move-result v5

    invoke-virtual {v4, p1, v1, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;->storeChunk(Ljava/io/InputStream;II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 54
    const-string v5, "RtmpDecoder"

    const-string v6, " readPacket(): returning null because of incomplete packet"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v4    # "storeChunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;
    :goto_0
    return-object v2

    .line 57
    .restart local v4    # "storeChunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;
    :cond_1
    const-string v5, "RtmpDecoder"

    const-string v6, " readPacket(): stored chunks complete packet; reading packet"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v4}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;->getStoredInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object p1

    .line 64
    .end local v4    # "storeChunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/StoreChunk;
    :cond_2
    sget-object v5, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder$1;->$SwitchMap$com$laifeng$sopcastsdk$stream$sender$rtmp$packets$MessageType:[I

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->getMessageType()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 100
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No packet body implementation for message type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->getMessageType()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 67
    :pswitch_0
    new-instance v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetChunkSize;

    invoke-direct {v3, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetChunkSize;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 68
    .local v3, "setChunkSize":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetChunkSize;
    invoke-virtual {v3, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetChunkSize;->readBody(Ljava/io/InputStream;)V

    .line 69
    const-string v5, "RtmpDecoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readPacket(): Setting chunk size to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetChunkSize;->getChunkSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;->sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    invoke-virtual {v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetChunkSize;->getChunkSize()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->setRxChunkSize(I)V

    goto :goto_0

    .line 73
    .end local v3    # "setChunkSize":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetChunkSize;
    :pswitch_1
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Abort;

    invoke-direct {v2, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Abort;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 102
    .local v2, "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    :goto_1
    invoke-virtual {v2, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;->readBody(Ljava/io/InputStream;)V

    goto :goto_0

    .line 76
    .end local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    :pswitch_2
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;

    invoke-direct {v2, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 77
    .restart local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    goto :goto_1

    .line 79
    .end local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    :pswitch_3
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/WindowAckSize;

    invoke-direct {v2, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/WindowAckSize;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 80
    .restart local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    goto :goto_1

    .line 82
    .end local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    :pswitch_4
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth;

    invoke-direct {v2, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/SetPeerBandwidth;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 83
    .restart local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    goto :goto_1

    .line 85
    .end local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    :pswitch_5
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Audio;

    invoke-direct {v2, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Audio;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 86
    .restart local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    goto :goto_1

    .line 88
    .end local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    :pswitch_6
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Video;

    invoke-direct {v2, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Video;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 89
    .restart local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    goto :goto_1

    .line 91
    .end local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    :pswitch_7
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;

    invoke-direct {v2, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 92
    .restart local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    goto :goto_1

    .line 94
    .end local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    :pswitch_8
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;

    invoke-direct {v2, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 95
    .restart local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    goto :goto_1

    .line 97
    .end local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    :pswitch_9
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Acknowledgement;

    invoke-direct {v2, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Acknowledgement;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 98
    .restart local v2    # "rtmpPacket":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    goto :goto_1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
