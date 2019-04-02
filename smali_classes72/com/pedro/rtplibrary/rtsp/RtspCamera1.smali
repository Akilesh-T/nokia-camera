.class public Lcom/pedro/rtplibrary/rtsp/RtspCamera1;
.super Lcom/pedro/rtplibrary/base/Camera1Base;
.source "RtspCamera1.java"


# instance fields
.field private rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;
    .param p2, "connectCheckerRtsp"    # Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/pedro/rtplibrary/base/Camera1Base;-><init>(Landroid/view/SurfaceView;)V

    .line 28
    new-instance v0, Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-direct {v0, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;-><init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera1;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V
    .locals 1
    .param p1, "textureView"    # Landroid/view/TextureView;
    .param p2, "connectCheckerRtsp"    # Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/pedro/rtplibrary/base/Camera1Base;-><init>(Landroid/view/TextureView;)V

    .line 33
    new-instance v0, Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-direct {v0, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;-><init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera1;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/pedro/rtplibrary/view/OpenGlView;Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V
    .locals 1
    .param p1, "openGlView"    # Lcom/pedro/rtplibrary/view/OpenGlView;
    .param p2, "connectCheckerRtsp"    # Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/pedro/rtplibrary/base/Camera1Base;-><init>(Lcom/pedro/rtplibrary/view/OpenGlView;)V

    .line 39
    new-instance v0, Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-direct {v0, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;-><init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera1;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    .line 40
    return-void
.end method


# virtual methods
.method protected getAacDataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "aacBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera1;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->sendAudio(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 78
    return-void
.end method

.method protected getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "h264Buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera1;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->sendVideo(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 91
    return-void
.end method

.method protected onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 83
    .local v1, "newSps":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    .local v0, "newPps":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera1;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v2, v1, v0}, Lcom/pedro/rtsp/rtsp/RtspClient;->setSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 85
    iget-object v2, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera1;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v2}, Lcom/pedro/rtsp/rtsp/RtspClient;->connect()V

    .line 86
    return-void
.end method

.method protected prepareAudioRtp(ZI)V
    .locals 1
    .param p1, "isStereo"    # Z
    .param p2, "sampleRate"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera1;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->setIsStereo(Z)V

    .line 59
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera1;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->setSampleRate(I)V

    .line 60
    return-void
.end method

.method public setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera1;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->setAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setProtocol(Lcom/pedro/rtsp/rtsp/Protocol;)V
    .locals 1
    .param p1, "protocol"    # Lcom/pedro/rtsp/rtsp/Protocol;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera1;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->setProtocol(Lcom/pedro/rtsp/rtsp/Protocol;)V

    .line 49
    return-void
.end method

.method protected startStreamRtp(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera1;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->setUrl(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera1;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera1;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0}, Lcom/pedro/rtsp/rtsp/RtspClient;->connect()V

    .line 68
    :cond_0
    return-void
.end method

.method protected stopStreamRtp()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera1;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0}, Lcom/pedro/rtsp/rtsp/RtspClient;->disconnect()V

    .line 73
    return-void
.end method
