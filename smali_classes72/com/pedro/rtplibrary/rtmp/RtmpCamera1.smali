.class public Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;
.super Lcom/pedro/rtplibrary/base/Camera1Base;
.source "RtmpCamera1.java"


# instance fields
.field private srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;
    .param p2, "connectChecker"    # Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/pedro/rtplibrary/base/Camera1Base;-><init>(Landroid/view/SurfaceView;)V

    .line 30
    new-instance v0, Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {v0, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer;-><init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V
    .locals 1
    .param p1, "textureView"    # Landroid/view/TextureView;
    .param p2, "connectChecker"    # Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/pedro/rtplibrary/base/Camera1Base;-><init>(Landroid/view/TextureView;)V

    .line 35
    new-instance v0, Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {v0, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer;-><init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/pedro/rtplibrary/view/OpenGlView;Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V
    .locals 1
    .param p1, "openGlView"    # Lcom/pedro/rtplibrary/view/OpenGlView;
    .param p2, "connectChecker"    # Lnet/ossrs/rtmp/ConnectCheckerRtmp;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/pedro/rtplibrary/base/Camera1Base;-><init>(Lcom/pedro/rtplibrary/view/OpenGlView;)V

    .line 41
    new-instance v0, Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {v0, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer;-><init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    .line 42
    return-void
.end method


# virtual methods
.method protected getAacDataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "aacBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p1, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->sendAudio(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 82
    return-void
.end method

.method protected getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "h264Buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p1, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->sendVideo(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 92
    return-void
.end method

.method protected onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p1, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->setSpsPPs(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 87
    return-void
.end method

.method protected prepareAudioRtp(ZI)V
    .locals 1
    .param p1, "isStereo"    # Z
    .param p2, "sampleRate"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p1}, Lnet/ossrs/rtmp/SrsFlvMuxer;->setIsStereo(Z)V

    .line 61
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->setSampleRate(I)V

    .line 62
    return-void
.end method

.method public setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p1, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->setAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setProfileIop(B)V
    .locals 1
    .param p1, "profileIop"    # B

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p1}, Lnet/ossrs/rtmp/SrsFlvMuxer;->setProfileIop(B)V

    .line 51
    return-void
.end method

.method protected startStreamRtp(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->getRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->getRotation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    iget-object v1, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v1}, Lcom/pedro/encoder/video/VideoEncoder;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v2}, Lcom/pedro/encoder/video/VideoEncoder;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->setVideoResolution(II)V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0, p1}, Lnet/ossrs/rtmp/SrsFlvMuxer;->start(Ljava/lang/String;)V

    .line 72
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    iget-object v1, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v1}, Lcom/pedro/encoder/video/VideoEncoder;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v2}, Lcom/pedro/encoder/video/VideoEncoder;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->setVideoResolution(II)V

    goto :goto_0
.end method

.method protected stopStreamRtp()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtmp/RtmpCamera1;->srsFlvMuxer:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-virtual {v0}, Lnet/ossrs/rtmp/SrsFlvMuxer;->stop()V

    .line 77
    return-void
.end method
