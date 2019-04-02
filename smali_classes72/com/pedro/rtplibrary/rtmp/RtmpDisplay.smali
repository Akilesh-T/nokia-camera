.class public Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;
.super Lcom/pedro/rtplibrary/base/DisplayBase;
.source "RtmpDisplay.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x15
.end annotation


# instance fields
.field private srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectChecker"    # Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/pedro/rtplibrary/base/DisplayBase;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {v0, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer;-><init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    .line 29
    return-void
.end method


# virtual methods
.method protected getAacDataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "aacBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p1, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->sendAudio(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 69
    return-void
.end method

.method protected getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "h264Buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p1, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->sendVideo(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 79
    return-void
.end method

.method protected onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p1, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->setSpsPPs(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 74
    return-void
.end method

.method protected prepareAudioRtp(ZI)V
    .locals 1
    .param p1, "isStereo"    # Z
    .param p2, "sampleRate"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p1}, Lnet/ossrs/rtmp/SrsFlvMuxer;->setIsStereo(Z)V

    .line 48
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->setSampleRate(I)V

    .line 49
    return-void
.end method

.method public setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p1, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->setAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public setProfileIop(B)V
    .locals 1
    .param p1, "profileIop"    # B

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p1}, Lnet/ossrs/rtmp/SrsFlvMuxer;->setProfileIop(B)V

    .line 38
    return-void
.end method

.method protected startStreamRtp(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->getRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->getRotation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    iget-object v1, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v1}, Lcom/pedro/encoder/video/VideoEncoder;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v2}, Lcom/pedro/encoder/video/VideoEncoder;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->setVideoResolution(II)V

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p1}, Lnet/ossrs/rtmp/SrsFlvMuxer;->start(Ljava/lang/String;)V

    .line 59
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    iget-object v1, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v1}, Lcom/pedro/encoder/video/VideoEncoder;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v2}, Lcom/pedro/encoder/video/VideoEncoder;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->setVideoResolution(II)V

    goto :goto_0
.end method

.method protected stopStreamRtp()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpDisplay;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0}, Lnet/ossrs/rtmp/SrsFlvMuxer;->stop()V

    .line 64
    return-void
.end method
