.class public Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;
.super Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;
.source "Data.java"


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    sget-object v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;->TYPE_0_FULL:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;

    const/4 v2, 0x3

    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->DATA_AMF0:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    invoke-direct {v0, v1, v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkType;ILcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;)V

    invoke-direct {p0, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/VariableBodyRtmpPacket;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;)V

    .line 31
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;->type:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;->type:Ljava/lang/String;

    return-object v0
.end method

.method public readBody(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-static {p1, v2}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->readStringFrom(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;->type:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->sizeOf(Ljava/lang/String;Z)I

    move-result v0

    .line 48
    .local v0, "bytesRead":I
    invoke-virtual {p0, p1, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;->readVariableData(Ljava/io/InputStream;I)V

    .line 49
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;->type:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public writeBody(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;->type:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->writeStringTo(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;->writeVariableData(Ljava/io/OutputStream;)V

    .line 59
    return-void
.end method
