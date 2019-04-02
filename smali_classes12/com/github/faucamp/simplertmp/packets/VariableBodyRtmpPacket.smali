.class public abstract Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;
.super Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
.source "VariableBodyRtmpPacket.java"


# instance fields
.field protected data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/faucamp/simplertmp/amf/AmfData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 31
    return-void
.end method


# virtual methods
.method public addData(D)V
    .locals 1
    .param p1, "number"    # D

    .prologue
    .line 42
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    invoke-direct {v0, p1, p2}, Lcom/github/faucamp/simplertmp/amf/AmfNumber;-><init>(D)V

    invoke-virtual {p0, v0}, Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 43
    return-void
.end method

.method public addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V
    .locals 1
    .param p1, "dataItem"    # Lcom/github/faucamp/simplertmp/amf/AmfData;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;->data:Ljava/util/List;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;->data:Ljava/util/List;

    .line 53
    :cond_0
    if-nez p1, :cond_1

    .line 54
    new-instance p1, Lcom/github/faucamp/simplertmp/amf/AmfNull;

    .end local p1    # "dataItem":Lcom/github/faucamp/simplertmp/amf/AmfData;
    invoke-direct {p1}, Lcom/github/faucamp/simplertmp/amf/AmfNull;-><init>()V

    .line 56
    .restart local p1    # "dataItem":Lcom/github/faucamp/simplertmp/amf/AmfData;
    :cond_1
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public addData(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfString;

    invoke-direct {v0, p1}, Lcom/github/faucamp/simplertmp/amf/AmfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 39
    return-void
.end method

.method public addData(Z)V
    .locals 1
    .param p1, "bool"    # Z

    .prologue
    .line 46
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfBoolean;

    invoke-direct {v0, p1}, Lcom/github/faucamp/simplertmp/amf/AmfBoolean;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 47
    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/faucamp/simplertmp/amf/AmfData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;->data:Ljava/util/List;

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
    .line 62
    :cond_0
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/amf/AmfDecoder;->readFrom(Ljava/io/InputStream;)Lcom/github/faucamp/simplertmp/amf/AmfData;

    move-result-object v0

    .line 63
    .local v0, "dataItem":Lcom/github/faucamp/simplertmp/amf/AmfData;
    invoke-virtual {p0, v0}, Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 64
    invoke-interface {v0}, Lcom/github/faucamp/simplertmp/amf/AmfData;->getSize()I

    move-result v1

    add-int/2addr p2, v1

    .line 65
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;->header:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getPacketLength()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 66
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
    .line 69
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/packets/VariableBodyRtmpPacket;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/faucamp/simplertmp/amf/AmfData;

    .line 71
    .local v0, "dataItem":Lcom/github/faucamp/simplertmp/amf/AmfData;
    invoke-interface {v0, p1}, Lcom/github/faucamp/simplertmp/amf/AmfData;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 75
    .end local v0    # "dataItem":Lcom/github/faucamp/simplertmp/amf/AmfData;
    :cond_0
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/amf/AmfNull;->writeNullTo(Ljava/io/OutputStream;)V

    .line 77
    :cond_1
    return-void
.end method
