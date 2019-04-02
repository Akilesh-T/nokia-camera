.class public Lcom/github/faucamp/simplertmp/packets/Audio;
.super Lcom/github/faucamp/simplertmp/packets/ContentData;
.source "Audio.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 17
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    sget-object v1, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_0_FULL:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    const/4 v2, 0x7

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->AUDIO:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;ILcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;)V

    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/packets/ContentData;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/github/faucamp/simplertmp/packets/ContentData;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 14
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "RTMP Audio"

    return-object v0
.end method
