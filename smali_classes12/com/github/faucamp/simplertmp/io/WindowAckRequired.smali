.class public Lcom/github/faucamp/simplertmp/io/WindowAckRequired;
.super Ljava/lang/Exception;
.source "WindowAckRequired.java"


# instance fields
.field private bytesRead:I

.field private rtmpPacket:Lcom/github/faucamp/simplertmp/packets/RtmpPacket;


# direct methods
.method public constructor <init>(ILcom/github/faucamp/simplertmp/packets/RtmpPacket;)V
    .locals 0
    .param p1, "bytesReadThusFar"    # I
    .param p2, "rtmpPacket"    # Lcom/github/faucamp/simplertmp/packets/RtmpPacket;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/github/faucamp/simplertmp/io/WindowAckRequired;->rtmpPacket:Lcom/github/faucamp/simplertmp/packets/RtmpPacket;

    .line 27
    iput p1, p0, Lcom/github/faucamp/simplertmp/io/WindowAckRequired;->bytesRead:I

    .line 28
    return-void
.end method


# virtual methods
.method public getBytesRead()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/github/faucamp/simplertmp/io/WindowAckRequired;->bytesRead:I

    return v0
.end method

.method public getRtmpPacket()Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/WindowAckRequired;->rtmpPacket:Lcom/github/faucamp/simplertmp/packets/RtmpPacket;

    return-object v0
.end method
