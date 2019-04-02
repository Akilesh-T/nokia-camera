.class public Lcom/github/faucamp/simplertmp/io/RtmpDecoder;
.super Ljava/lang/Object;
.source "RtmpDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RtmpDecoder"


# instance fields
.field private rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;


# direct methods
.method public constructor <init>(Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;)V
    .locals 0
    .param p1, "rtmpSessionInfo"    # Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/io/RtmpDecoder;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    .line 32
    return-void
.end method


# virtual methods
.method public readPacket(Ljava/io/InputStream;)Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpDecoder;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-static {p1, v4}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->readHeader(Ljava/io/InputStream;Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;)Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    .line 39
    .local v1, "header":Lcom/github/faucamp/simplertmp/packets/RtmpHeader;
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpDecoder;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getChunkStreamId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v0

    .line 40
    .local v0, "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    invoke-virtual {v0, v1}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->setPrevHeaderRx(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 42
    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getPacketLength()I

    move-result v4

    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpDecoder;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-virtual {v5}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getRxChunkSize()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 45
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpDecoder;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-virtual {v4}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getRxChunkSize()I

    move-result v4

    invoke-virtual {v0, p1, v4}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->storePacketChunk(Ljava/io/InputStream;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    :goto_0
    return-object v2

    .line 50
    :cond_0
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->getStoredPacketInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object p1

    .line 55
    :cond_1
    sget-object v4, Lcom/github/faucamp/simplertmp/io/RtmpDecoder$1;->$SwitchMap$com$github$faucamp$simplertmp$packets$RtmpHeader$MessageType:[I

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getMessageType()Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 90
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No packet body implementation for message type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getMessageType()Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    :pswitch_0
    new-instance v3, Lcom/github/faucamp/simplertmp/packets/SetChunkSize;

    invoke-direct {v3, v1}, Lcom/github/faucamp/simplertmp/packets/SetChunkSize;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 58
    .local v3, "setChunkSize":Lcom/github/faucamp/simplertmp/packets/SetChunkSize;
    invoke-virtual {v3, p1}, Lcom/github/faucamp/simplertmp/packets/SetChunkSize;->readBody(Ljava/io/InputStream;)V

    .line 59
    const-string v4, "RtmpDecoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readPacket(): Setting chunk size to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/github/faucamp/simplertmp/packets/SetChunkSize;->getChunkSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpDecoder;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-virtual {v3}, Lcom/github/faucamp/simplertmp/packets/SetChunkSize;->getChunkSize()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->setRxChunkSize(I)V

    goto :goto_0

    .line 63
    .end local v3    # "setChunkSize":Lcom/github/faucamp/simplertmp/packets/SetChunkSize;
    :pswitch_1
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/Abort;

    invoke-direct {v2, v1}, Lcom/github/faucamp/simplertmp/packets/Abort;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 92
    .local v2, "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    :goto_1
    invoke-virtual {v2, p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->readBody(Ljava/io/InputStream;)V

    goto :goto_0

    .line 66
    .end local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    :pswitch_2
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/UserControl;

    invoke-direct {v2, v1}, Lcom/github/faucamp/simplertmp/packets/UserControl;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 67
    .restart local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    goto :goto_1

    .line 69
    .end local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    :pswitch_3
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/WindowAckSize;

    invoke-direct {v2, v1}, Lcom/github/faucamp/simplertmp/packets/WindowAckSize;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 70
    .restart local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    goto :goto_1

    .line 72
    .end local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    :pswitch_4
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;

    invoke-direct {v2, v1}, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 73
    .restart local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    goto :goto_1

    .line 75
    .end local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    :pswitch_5
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/Audio;

    invoke-direct {v2, v1}, Lcom/github/faucamp/simplertmp/packets/Audio;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 76
    .restart local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    goto :goto_1

    .line 78
    .end local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    :pswitch_6
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/Video;

    invoke-direct {v2, v1}, Lcom/github/faucamp/simplertmp/packets/Video;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 79
    .restart local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    goto :goto_1

    .line 81
    .end local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    :pswitch_7
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/Command;

    invoke-direct {v2, v1}, Lcom/github/faucamp/simplertmp/packets/Command;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 82
    .restart local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    goto :goto_1

    .line 84
    .end local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    :pswitch_8
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/Data;

    invoke-direct {v2, v1}, Lcom/github/faucamp/simplertmp/packets/Data;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 85
    .restart local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    goto :goto_1

    .line 87
    .end local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    :pswitch_9
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/Acknowledgement;

    invoke-direct {v2, v1}, Lcom/github/faucamp/simplertmp/packets/Acknowledgement;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 88
    .restart local v2    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    goto :goto_1

    .line 55
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
