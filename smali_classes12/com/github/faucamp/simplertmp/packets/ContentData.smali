.class public abstract Lcom/github/faucamp/simplertmp/packets/ContentData;
.super Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
.source "ContentData.java"


# instance fields
.field protected data:[B

.field protected size:I


# direct methods
.method public constructor <init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 21
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/ContentData;->data:[B

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/ContentData;->data:[B

    return-object v0
.end method

.method public readBody(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/ContentData;->header:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getPacketLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/packets/ContentData;->data:[B

    .line 35
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/ContentData;->data:[B

    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->readBytesUntilFull(Ljava/io/InputStream;[B)V

    .line 36
    return-void
.end method

.method public setData([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 28
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/packets/ContentData;->data:[B

    .line 29
    iput p2, p0, Lcom/github/faucamp/simplertmp/packets/ContentData;->size:I

    .line 30
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/ContentData;->size:I

    return v0
.end method

.method public writeBody(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    return-void
.end method
