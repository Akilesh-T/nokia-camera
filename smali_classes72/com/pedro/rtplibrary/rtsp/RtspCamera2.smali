.class public Lcom/pedro/rtplibrary/rtsp/RtspCamera2;
.super Lcom/pedro/rtplibrary/base/Camera2Base;
.source "RtspCamera2.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x15
.end annotation


# instance fields
.field private rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectCheckerRtsp"    # Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/pedro/rtplibrary/base/Camera2Base;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-direct {v0, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;-><init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;
    .param p2, "connectCheckerRtsp"    # Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pedro/rtplibrary/base/Camera2Base;-><init>(Landroid/view/SurfaceView;Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-direct {v0, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;-><init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V
    .locals 1
    .param p1, "textureView"    # Landroid/view/TextureView;
    .param p2, "connectCheckerRtsp"    # Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pedro/rtplibrary/base/Camera2Base;-><init>(Landroid/view/TextureView;Landroid/content/Context;)V

    .line 36
    new-instance v0, Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-direct {v0, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;-><init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/pedro/rtplibrary/view/OpenGlView;Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V
    .locals 1
    .param p1, "openGlView"    # Lcom/pedro/rtplibrary/view/OpenGlView;
    .param p2, "connectCheckerRtsp"    # Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/pedro/rtplibrary/view/OpenGlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pedro/rtplibrary/base/Camera2Base;-><init>(Lcom/pedro/rtplibrary/view/OpenGlView;Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-direct {v0, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;-><init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    .line 42
    return-void
.end method


# virtual methods
.method protected getAacDataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "aacBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->sendAudio(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 85
    return-void
.end method

.method protected getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "h264Buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->sendVideo(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 98
    return-void
.end method

.method protected onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 90
    .local v1, "newSps":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 91
    .local v0, "newPps":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v2, v1, v0}, Lcom/pedro/rtsp/rtsp/RtspClient;->setSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 92
    iget-object v2, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v2}, Lcom/pedro/rtsp/rtsp/RtspClient;->connect()V

    .line 93
    return-void
.end method

.method protected prepareAudioRtp(ZI)V
    .locals 1
    .param p1, "isStereo"    # Z
    .param p2, "sampleRate"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->setIsStereo(Z)V

    .line 66
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->setSampleRate(I)V

    .line 67
    return-void
.end method

.method public setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->setAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public setProtocol(Lcom/pedro/rtsp/rtsp/Protocol;)V
    .locals 1
    .param p1, "protocol"    # Lcom/pedro/rtsp/rtsp/Protocol;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->setProtocol(Lcom/pedro/rtsp/rtsp/Protocol;)V

    .line 56
    return-void
.end method

.method protected startStreamRtp(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->setUrl(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0}, Lcom/pedro/rtsp/rtsp/RtspClient;->connect()V

    .line 75
    :cond_0
    return-void
.end method

.method protected stopStreamRtp()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspCamera2;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0}, Lcom/pedro/rtsp/rtsp/RtspClient;->disconnect()V

    .line 80
    return-void
.end method
