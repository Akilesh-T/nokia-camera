.class public abstract Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;
.super Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
.source "VariableBodyRtmpPacket.java"


# instance fields
.field protected data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laifeng/sopcastsdk/stream/amf/AmfData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 32
    return-void
.end method


# virtual methods
.method public addData(D)V
    .locals 1
    .param p1, "number"    # D

    .prologue
    .line 43
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;

    invoke-direct {v0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;-><init>(D)V

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;->addData(Lcom/laifeng/sopcastsdk/stream/amf/AmfData;)V

    .line 44
    return-void
.end method

.method public addData(Lcom/laifeng/sopcastsdk/stream/amf/AmfData;)V
    .locals 1
    .param p1, "dataItem"    # Lcom/laifeng/sopcastsdk/stream/amf/AmfData;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;->data:Ljava/util/List;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;->data:Ljava/util/List;

    .line 54
    :cond_0
    if-nez p1, :cond_1

    .line 55
    new-instance p1, Lcom/laifeng/sopcastsdk/stream/amf/AmfNull;

    .end local p1    # "dataItem":Lcom/laifeng/sopcastsdk/stream/amf/AmfData;
    invoke-direct {p1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfNull;-><init>()V

    .line 57
    .restart local p1    # "dataItem":Lcom/laifeng/sopcastsdk/stream/amf/AmfData;
    :cond_1
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public addData(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;

    invoke-direct {v0, p1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;->addData(Lcom/laifeng/sopcastsdk/stream/amf/AmfData;)V

    .line 40
    return-void
.end method

.method public addData(Z)V
    .locals 1
    .param p1, "bool"    # Z

    .prologue
    .line 47
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/amf/AmfBoolean;

    invoke-direct {v0, p1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfBoolean;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;->addData(Lcom/laifeng/sopcastsdk/stream/amf/AmfData;)V

    .line 48
    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/laifeng/sopcastsdk/stream/amf/AmfData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;->data:Ljava/util/List;

    return-object v0
.end method

.method protected readVariableData(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "bytesAlreadyRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    :cond_0
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfDecoder;->readFrom(Ljava/io/InputStream;)Lcom/laifeng/sopcastsdk/stream/amf/AmfData;

    move-result-object v0

    .line 64
    .local v0, "dataItem":Lcom/laifeng/sopcastsdk/stream/amf/AmfData;
    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;->addData(Lcom/laifeng/sopcastsdk/stream/amf/AmfData;)V

    .line 65
    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfData;->getSize()I

    move-result v1

    add-int/2addr p2, v1

    .line 66
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;->header:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->getPacketLength()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 67
    return-void
.end method

.method protected writeVariableData(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/stream/amf/AmfData;

    .line 72
    .local v0, "dataItem":Lcom/laifeng/sopcastsdk/stream/amf/AmfData;
    invoke-interface {v0, p1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfData;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 76
    .end local v0    # "dataItem":Lcom/laifeng/sopcastsdk/stream/amf/AmfData;
    :cond_0
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfNull;->writeNullTo(Ljava/io/OutputStream;)V

    .line 78
    :cond_1
    return-void
.end method
