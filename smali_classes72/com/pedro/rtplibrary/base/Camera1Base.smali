.class public abstract Lcom/pedro/rtplibrary/base/Camera1Base;
.super Ljava/lang/Object;
.source "Camera1Base.java"

# interfaces
.implements Lcom/pedro/encoder/audio/GetAacData;
.implements Lcom/pedro/encoder/input/video/GetCameraData;
.implements Lcom/pedro/encoder/video/GetH264Data;
.implements Lcom/pedro/encoder/input/audio/GetMicrophoneData;


# static fields
.field private static final TAG:Ljava/lang/String; = "Camera1Base"


# instance fields
.field protected audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

.field private audioFormat:Landroid/media/MediaFormat;

.field private audioTrack:I

.field protected cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

.field private canRecord:Z

.field private context:Landroid/content/Context;

.field private mediaMuxer:Landroid/media/MediaMuxer;

.field protected microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

.field private onPreview:Z

.field private openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

.field private recording:Z

.field private streaming:Z

.field private videoEnabled:Z

.field protected videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

.field private videoFormat:Landroid/media/MediaFormat;

.field private videoTrack:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 3
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEnabled:Z

    .line 64
    iput v2, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoTrack:I

    .line 65
    iput v2, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioTrack:I

    .line 66
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->recording:Z

    .line 67
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->canRecord:Z

    .line 68
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->onPreview:Z

    .line 73
    new-instance v0, Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-direct {v0, p1, p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;-><init>(Landroid/view/SurfaceView;Lcom/pedro/encoder/input/video/GetCameraData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .line 74
    new-instance v0, Lcom/pedro/encoder/video/VideoEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/video/VideoEncoder;-><init>(Lcom/pedro/encoder/video/GetH264Data;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    .line 75
    new-instance v0, Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;-><init>(Lcom/pedro/encoder/input/audio/GetMicrophoneData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    .line 76
    new-instance v0, Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/audio/AudioEncoder;-><init>(Lcom/pedro/encoder/audio/GetAacData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    .line 77
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->streaming:Z

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;)V
    .locals 3
    .param p1, "textureView"    # Landroid/view/TextureView;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEnabled:Z

    .line 64
    iput v2, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoTrack:I

    .line 65
    iput v2, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioTrack:I

    .line 66
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->recording:Z

    .line 67
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->canRecord:Z

    .line 68
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->onPreview:Z

    .line 81
    new-instance v0, Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-direct {v0, p1, p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;-><init>(Landroid/view/TextureView;Lcom/pedro/encoder/input/video/GetCameraData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .line 82
    new-instance v0, Lcom/pedro/encoder/video/VideoEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/video/VideoEncoder;-><init>(Lcom/pedro/encoder/video/GetH264Data;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    .line 83
    new-instance v0, Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;-><init>(Lcom/pedro/encoder/input/audio/GetMicrophoneData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    .line 84
    new-instance v0, Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/audio/AudioEncoder;-><init>(Lcom/pedro/encoder/audio/GetAacData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    .line 85
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->streaming:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/pedro/rtplibrary/view/OpenGlView;)V
    .locals 3
    .param p1, "openGlView"    # Lcom/pedro/rtplibrary/view/OpenGlView;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEnabled:Z

    .line 64
    iput v2, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoTrack:I

    .line 65
    iput v2, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioTrack:I

    .line 66
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->recording:Z

    .line 67
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->canRecord:Z

    .line 68
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->onPreview:Z

    .line 90
    invoke-virtual {p1}, Lcom/pedro/rtplibrary/view/OpenGlView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->context:Landroid/content/Context;

    .line 91
    iput-object p1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    .line 92
    new-instance v0, Lcom/pedro/encoder/video/VideoEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/video/VideoEncoder;-><init>(Lcom/pedro/encoder/video/GetH264Data;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    .line 93
    new-instance v0, Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;-><init>(Lcom/pedro/encoder/input/audio/GetMicrophoneData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    .line 94
    new-instance v0, Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/audio/AudioEncoder;-><init>(Lcom/pedro/encoder/audio/GetAacData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    .line 95
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->streaming:Z

    .line 96
    return-void
.end method


# virtual methods
.method public clearStreamObject()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->clear()V

    .line 517
    return-void

    .line 515
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set a text"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableAudio()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->mute()V

    .line 402
    return-void
.end method

.method public disableVideo()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->startSendBlackImage()V

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEnabled:Z

    .line 436
    return-void
.end method

.method public enableAudio()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->unMute()V

    .line 409
    return-void
.end method

.method public enableVideo()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->stopSendBlackImage()V

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEnabled:Z

    .line 444
    return-void
.end method

.method public getAacData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .param p1, "aacBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 663
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->recording:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioTrack:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->canRecord:Z

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->mediaMuxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioTrack:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 669
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/pedro/rtplibrary/base/Camera1Base;->getAacDataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 670
    return-void
.end method

.method protected abstract getAacDataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public getH264Data(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3
    .param p1, "h264Buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    const/4 v2, 0x1

    .line 683
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->recording:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoTrack:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 686
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v0, v2, :cond_0

    iput-boolean v2, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->canRecord:Z

    .line 687
    :cond_0
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->canRecord:Z

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->mediaMuxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoTrack:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 691
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/pedro/rtplibrary/base/Camera1Base;->getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 692
    return-void
.end method

.method protected abstract getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public getPositionStreamObject()Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 607
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to get scale"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResolutionsBack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->getPreviewSizeBack()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResolutionsFront()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->getPreviewSizeFront()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSizeStreamObject()Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->getScale()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to get position"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inputPCMData([BI)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "size"    # I

    .prologue
    .line 696
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/encoder/audio/AudioEncoder;->inputPCMData([BI)V

    .line 697
    return-void
.end method

.method public inputYUVData([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 701
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/video/VideoEncoder;->inputYUVData([B)V

    .line 702
    return-void
.end method

.method public isAudioMuted()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->isMuted()Z

    move-result v0

    return v0
.end method

.method public isOnPreview()Z
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->onPreview:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->recording:Z

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->streaming:Z

    return v0
.end method

.method public isVideoEnabled()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEnabled:Z

    return v0
.end method

.method public onAudioFormat(Landroid/media/MediaFormat;)V
    .locals 0
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioFormat:Landroid/media/MediaFormat;

    .line 712
    return-void
.end method

.method public onSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 676
    invoke-virtual {p0, p1, p2}, Lcom/pedro/rtplibrary/base/Camera1Base;->onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 677
    return-void
.end method

.method protected abstract onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method public onVideoFormat(Landroid/media/MediaFormat;)V
    .locals 0
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoFormat:Landroid/media/MediaFormat;

    .line 707
    return-void
.end method

.method public prepareAudio()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->createMicrophone()V

    .line 197
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/audio/AudioEncoder;->prepareAudioEncoder()Z

    move-result v0

    return v0
.end method

.method public prepareAudio(IIZZZ)Z
    .locals 1
    .param p1, "bitrate"    # I
    .param p2, "sampleRate"    # I
    .param p3, "isStereo"    # Z
    .param p4, "echoCanceler"    # Z
    .param p5, "noiseSuppressor"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->createMicrophone(IZZZ)V

    .line 157
    invoke-virtual {p0, p3, p2}, Lcom/pedro/rtplibrary/base/Camera1Base;->prepareAudioRtp(ZI)V

    .line 158
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pedro/encoder/audio/AudioEncoder;->prepareAudioEncoder(IIZ)Z

    move-result v0

    return v0
.end method

.method protected abstract prepareAudioRtp(ZI)V
.end method

.method public prepareVideo()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 171
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->onPreview:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/base/Camera1Base;->stopPreview()V

    .line 173
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->onPreview:Z

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->prepareCamera()V

    .line 177
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->prepareVideoEncoder()Z

    move-result v0

    .line 183
    :goto_0
    return v0

    .line 179
    :cond_1
    const/4 v5, 0x0

    .line 180
    .local v5, "orientation":I
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    .line 181
    const/16 v5, 0x5a

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    const/16 v3, 0x1e

    const v4, 0x12c000

    const/4 v6, 0x0

    sget-object v7, Lcom/pedro/encoder/video/FormatVideoEncoder;->SURFACE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    invoke-virtual/range {v0 .. v7}, Lcom/pedro/encoder/video/VideoEncoder;->prepareVideoEncoder(IIIIIZLcom/pedro/encoder/video/FormatVideoEncoder;)Z

    move-result v0

    goto :goto_0
.end method

.method public prepareVideo(IIIIZI)Z
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fps"    # I
    .param p4, "bitrate"    # I
    .param p5, "hardwareRotation"    # Z
    .param p6, "rotation"    # I

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->onPreview:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/base/Camera1Base;->stopPreview()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->onPreview:Z

    .line 129
    :cond_0
    const/16 v8, 0x11

    .line 130
    .local v8, "imageFormat":I
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-virtual {v0, p1, p2, p3, v8}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->prepareCamera(IIII)V

    .line 132
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    sget-object v7, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420Dynamical:Lcom/pedro/encoder/video/FormatVideoEncoder;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/pedro/encoder/video/VideoEncoder;->prepareVideoEncoder(IIIIIZLcom/pedro/encoder/video/FormatVideoEncoder;)Z

    move-result v0

    .line 135
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    sget-object v7, Lcom/pedro/encoder/video/FormatVideoEncoder;->SURFACE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/pedro/encoder/video/VideoEncoder;->prepareVideoEncoder(IIIIIZLcom/pedro/encoder/video/FormatVideoEncoder;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAlphaStreamObject(F)V
    .locals 2
    .param p1, "alpha"    # F
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0, p1}, Lcom/pedro/rtplibrary/view/OpenGlView;->setStreamObjectAlpha(F)V

    .line 532
    return-void

    .line 530
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set an alpha"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setEffect(Lcom/pedro/encoder/input/video/EffectManager;)V
    .locals 1
    .param p1, "effect"    # Lcom/pedro/encoder/input/video/EffectManager;

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/base/Camera1Base;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->setEffect(Lcom/pedro/encoder/input/video/EffectManager;)V

    .line 657
    :cond_0
    return-void
.end method

.method public setGifStreamObject(Lcom/pedro/encoder/utils/gl/GifStreamObject;)V
    .locals 2
    .param p1, "gifStreamObject"    # Lcom/pedro/encoder/utils/gl/GifStreamObject;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0, p1}, Lcom/pedro/rtplibrary/view/OpenGlView;->setGif(Lcom/pedro/encoder/utils/gl/GifStreamObject;)V

    .line 471
    return-void

    .line 469
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set a gif"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setImageStreamObject(Lcom/pedro/encoder/utils/gl/ImageStreamObject;)V
    .locals 2
    .param p1, "imageStreamObject"    # Lcom/pedro/encoder/utils/gl/ImageStreamObject;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0, p1}, Lcom/pedro/rtplibrary/view/OpenGlView;->setImage(Lcom/pedro/encoder/utils/gl/ImageStreamObject;)V

    .line 487
    return-void

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set an image"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPositionStreamObject(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtplibrary/view/OpenGlView;->setStreamObjectPosition(FF)V

    .line 564
    return-void

    .line 562
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set a position"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPositionStreamObject(Lcom/pedro/encoder/utils/gl/TranslateTo;)V
    .locals 2
    .param p1, "translateTo"    # Lcom/pedro/encoder/utils/gl/TranslateTo;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0, p1}, Lcom/pedro/rtplibrary/view/OpenGlView;->setStreamObjectPosition(Lcom/pedro/encoder/utils/gl/TranslateTo;)V

    .line 579
    return-void

    .line 577
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set a position"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreviewOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->setPreviewOrientation(I)V

    .line 322
    return-void
.end method

.method public setSizeStreamObject(FF)V
    .locals 2
    .param p1, "sizeX"    # F
    .param p2, "sizeY"    # F
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtplibrary/view/OpenGlView;->setStreamObjectSize(FF)V

    .line 548
    return-void

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set a size"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextStreamObject(Lcom/pedro/encoder/utils/gl/TextStreamObject;)V
    .locals 2
    .param p1, "textStreamObject"    # Lcom/pedro/encoder/utils/gl/TextStreamObject;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0, p1}, Lcom/pedro/rtplibrary/view/OpenGlView;->setText(Lcom/pedro/encoder/utils/gl/TextStreamObject;)V

    .line 503
    return-void

    .line 501
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set a text"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVideoBitrateOnFly(I)V
    .locals 1
    .param p1, "bitrate"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .prologue
    .line 618
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/video/VideoEncoder;->setVideoBitrateOnFly(I)V

    .line 619
    return-void
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pedro/rtplibrary/base/Camera1Base;->startPreview(I)V

    .line 297
    return-void
.end method

.method public startPreview(I)V
    .locals 1
    .param p1, "cameraFacing"    # I
        .annotation build Lcom/pedro/encoder/input/video/Camera1Facing;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, p1, v0, v0}, Lcom/pedro/rtplibrary/base/Camera1Base;->startPreview(III)V

    .line 277
    return-void
.end method

.method public startPreview(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/pedro/rtplibrary/base/Camera1Base;->startPreview(III)V

    .line 288
    return-void
.end method

.method public startPreview(III)V
    .locals 3
    .param p1, "cameraFacing"    # I
        .annotation build Lcom/pedro/encoder/input/video/Camera1Facing;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/base/Camera1Base;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->onPreview:Z

    if-nez v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->startGLThread()V

    .line 252
    new-instance v0, Lcom/pedro/encoder/input/video/Camera1ApiManager;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    .line 253
    invoke-virtual {v1}, Lcom/pedro/rtplibrary/view/OpenGlView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v2}, Lcom/pedro/rtplibrary/view/OpenGlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/input/video/Camera1ApiManager;-><init>(Landroid/graphics/SurfaceTexture;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->prepareCamera()V

    .line 256
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->start(I)V

    .line 261
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->onPreview:Z

    .line 265
    :goto_1
    return-void

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->start(III)V

    goto :goto_0

    .line 263
    :cond_3
    const-string v0, "Camera1Base"

    const-string v1, "Streaming or preview started, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->streaming:Z

    if-eqz v0, :cond_2

    .line 209
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 210
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->mediaMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoTrack:I

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->mediaMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioTrack:I

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->recording:Z

    .line 221
    return-void

    .line 219
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Need be called while stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startStream(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 340
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->getRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->getRotation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v1}, Lcom/pedro/encoder/video/VideoEncoder;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v2}, Lcom/pedro/encoder/video/VideoEncoder;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pedro/rtplibrary/view/OpenGlView;->setEncoderSize(II)V

    .line 346
    :goto_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->startGLThread()V

    .line 347
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v1}, Lcom/pedro/encoder/video/VideoEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pedro/rtplibrary/view/OpenGlView;->addMediaCodecSurface(Landroid/view/Surface;)V

    .line 348
    new-instance v0, Lcom/pedro/encoder/input/video/Camera1ApiManager;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    .line 349
    invoke-virtual {v1}, Lcom/pedro/rtplibrary/view/OpenGlView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v2}, Lcom/pedro/rtplibrary/view/OpenGlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/input/video/Camera1ApiManager;-><init>(Landroid/graphics/SurfaceTexture;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .line 350
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v1}, Lcom/pedro/encoder/video/VideoEncoder;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v2}, Lcom/pedro/encoder/video/VideoEncoder;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    .line 351
    invoke-virtual {v3}, Lcom/pedro/encoder/video/VideoEncoder;->getFps()I

    move-result v3

    const/16 v4, 0x11

    .line 350
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->prepareCamera(IIII)V

    .line 353
    :cond_1
    invoke-virtual {p0, p1}, Lcom/pedro/rtplibrary/base/Camera1Base;->startStreamRtp(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->start()V

    .line 355
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/audio/AudioEncoder;->start()V

    .line 356
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->start()V

    .line 357
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->start()V

    .line 358
    iput-boolean v5, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->streaming:Z

    .line 359
    iput-boolean v5, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->onPreview:Z

    .line 360
    return-void

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v1}, Lcom/pedro/encoder/video/VideoEncoder;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v2}, Lcom/pedro/encoder/video/VideoEncoder;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pedro/rtplibrary/view/OpenGlView;->setEncoderSize(II)V

    goto :goto_0
.end method

.method protected abstract startStreamRtp(Ljava/lang/String;)V
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/base/Camera1Base;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->onPreview:Z

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->stopGlThread()V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->stop()V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->onPreview:Z

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_1
    const-string v0, "Camera1Base"

    const-string v1, "Streaming or preview stopped, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 228
    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->recording:Z

    .line 229
    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->canRecord:Z

    .line 230
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 232
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 235
    :cond_0
    iput v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoTrack:I

    .line 236
    iput v1, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioTrack:I

    .line 237
    return-void
.end method

.method public stopStream()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->stop()V

    .line 369
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/base/Camera1Base;->stopStreamRtp()V

    .line 370
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->stop()V

    .line 371
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/audio/AudioEncoder;->stop()V

    .line 372
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->stopGlThread()V

    .line 374
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->removeMediaCodecSurface()V

    .line 376
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->streaming:Z

    .line 377
    return-void
.end method

.method protected abstract stopStreamRtp()V
.end method

.method public switchCamera()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pedro/encoder/input/video/CameraOpenException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/base/Camera1Base;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->onPreview:Z

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera1Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera1ApiManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->switchCamera()V

    .line 455
    :cond_1
    return-void
.end method
