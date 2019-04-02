.class public abstract Lcom/pedro/rtplibrary/base/Camera2Base;
.super Ljava/lang/Object;
.source "Camera2Base.java"

# interfaces
.implements Lcom/pedro/encoder/audio/GetAacData;
.implements Lcom/pedro/encoder/input/video/GetCameraData;
.implements Lcom/pedro/encoder/video/GetH264Data;
.implements Lcom/pedro/encoder/input/audio/GetMicrophoneData;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x15
.end annotation


# instance fields
.field protected audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

.field private audioFormat:Landroid/media/MediaFormat;

.field private audioTrack:I

.field protected cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

.field private canRecord:Z

.field protected context:Landroid/content/Context;

.field private mediaMuxer:Landroid/media/MediaMuxer;

.field protected microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

.field private onPreview:Z

.field private openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

.field private recording:Z

.field private streaming:Z

.field private surfaceView:Landroid/view/SurfaceView;

.field private textureView:Landroid/view/TextureView;

.field private videoEnabled:Z

.field protected videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

.field private videoFormat:Landroid/media/MediaFormat;

.field private videoTrack:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEnabled:Z

    .line 63
    iput v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoTrack:I

    .line 64
    iput v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioTrack:I

    .line 65
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->recording:Z

    .line 66
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->canRecord:Z

    .line 67
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->onPreview:Z

    .line 102
    iput-object p1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->context:Landroid/content/Context;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->textureView:Landroid/view/TextureView;

    .line 104
    new-instance v0, Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-direct {v0, p1}, Lcom/pedro/encoder/input/video/Camera2ApiManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    .line 105
    new-instance v0, Lcom/pedro/encoder/video/VideoEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/video/VideoEncoder;-><init>(Lcom/pedro/encoder/video/GetH264Data;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    .line 106
    new-instance v0, Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;-><init>(Lcom/pedro/encoder/input/audio/GetMicrophoneData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    .line 107
    new-instance v0, Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/audio/AudioEncoder;-><init>(Lcom/pedro/encoder/audio/GetAacData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    .line 108
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->streaming:Z

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Landroid/content/Context;)V
    .locals 2
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEnabled:Z

    .line 63
    iput v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoTrack:I

    .line 64
    iput v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioTrack:I

    .line 65
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->recording:Z

    .line 66
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->canRecord:Z

    .line 67
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->onPreview:Z

    .line 72
    iput-object p1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->surfaceView:Landroid/view/SurfaceView;

    .line 73
    iput-object p2, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->context:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-direct {v0, p2}, Lcom/pedro/encoder/input/video/Camera2ApiManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    .line 75
    new-instance v0, Lcom/pedro/encoder/video/VideoEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/video/VideoEncoder;-><init>(Lcom/pedro/encoder/video/GetH264Data;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    .line 76
    new-instance v0, Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;-><init>(Lcom/pedro/encoder/input/audio/GetMicrophoneData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    .line 77
    new-instance v0, Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/audio/AudioEncoder;-><init>(Lcom/pedro/encoder/audio/GetAacData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    .line 78
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->streaming:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;Landroid/content/Context;)V
    .locals 2
    .param p1, "textureView"    # Landroid/view/TextureView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEnabled:Z

    .line 63
    iput v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoTrack:I

    .line 64
    iput v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioTrack:I

    .line 65
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->recording:Z

    .line 66
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->canRecord:Z

    .line 67
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->onPreview:Z

    .line 82
    iput-object p1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->textureView:Landroid/view/TextureView;

    .line 83
    iput-object p2, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->context:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-direct {v0, p2}, Lcom/pedro/encoder/input/video/Camera2ApiManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    .line 85
    new-instance v0, Lcom/pedro/encoder/video/VideoEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/video/VideoEncoder;-><init>(Lcom/pedro/encoder/video/GetH264Data;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    .line 86
    new-instance v0, Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;-><init>(Lcom/pedro/encoder/input/audio/GetMicrophoneData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    .line 87
    new-instance v0, Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/audio/AudioEncoder;-><init>(Lcom/pedro/encoder/audio/GetAacData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    .line 88
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->streaming:Z

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/pedro/rtplibrary/view/OpenGlView;Landroid/content/Context;)V
    .locals 2
    .param p1, "openGlView"    # Lcom/pedro/rtplibrary/view/OpenGlView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEnabled:Z

    .line 63
    iput v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoTrack:I

    .line 64
    iput v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioTrack:I

    .line 65
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->recording:Z

    .line 66
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->canRecord:Z

    .line 67
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->onPreview:Z

    .line 92
    iput-object p1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    .line 93
    iput-object p2, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->context:Landroid/content/Context;

    .line 94
    new-instance v0, Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-direct {v0, p2}, Lcom/pedro/encoder/input/video/Camera2ApiManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    .line 95
    new-instance v0, Lcom/pedro/encoder/video/VideoEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/video/VideoEncoder;-><init>(Lcom/pedro/encoder/video/GetH264Data;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    .line 96
    new-instance v0, Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;-><init>(Lcom/pedro/encoder/input/audio/GetMicrophoneData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    .line 97
    new-instance v0, Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/audio/AudioEncoder;-><init>(Lcom/pedro/encoder/audio/GetAacData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    .line 98
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->streaming:Z

    .line 99
    return-void
.end method

.method private prepareCameraManager()V
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->textureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v2}, Lcom/pedro/encoder/video/VideoEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepareCamera(Landroid/view/TextureView;Landroid/view/Surface;)V

    .line 613
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEnabled:Z

    .line 614
    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->surfaceView:Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v2}, Lcom/pedro/encoder/video/VideoEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepareCamera(Landroid/view/SurfaceView;Landroid/view/Surface;)V

    goto :goto_0

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v1}, Lcom/pedro/encoder/video/VideoEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepareCamera(Landroid/view/Surface;)V

    goto :goto_0
.end method


# virtual methods
.method public clearStreamObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->clear()V

    .line 478
    return-void

    .line 476
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set a text"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableAudio()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->mute()V

    .line 367
    return-void
.end method

.method public disableVideo()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->startSendBlackImage()V

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEnabled:Z

    .line 401
    return-void
.end method

.method public enableAudio()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->unMute()V

    .line 374
    return-void
.end method

.method public enableVideo()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->stopSendBlackImage()V

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEnabled:Z

    .line 409
    return-void
.end method

.method public getAacData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .param p1, "aacBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->recording:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioTrack:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->canRecord:Z

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->mediaMuxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioTrack:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 623
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/pedro/rtplibrary/base/Camera2Base;->getAacDataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 624
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

    .line 637
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->recording:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoTrack:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 638
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v0, v2, :cond_0

    iput-boolean v2, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->canRecord:Z

    .line 639
    :cond_0
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->canRecord:Z

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->mediaMuxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoTrack:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 643
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/pedro/rtplibrary/base/Camera2Base;->getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 644
    return-void
.end method

.method protected abstract getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public getPositionStreamObject()Landroid/graphics/PointF;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 562
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
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->getCameraResolutionsBack()[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

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
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->getCameraResolutionsFront()[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSizeStreamObject()Landroid/graphics/PointF;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->getScale()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 548
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
    .line 648
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/encoder/audio/AudioEncoder;->inputPCMData([BI)V

    .line 649
    return-void
.end method

.method public inputYUVData([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 653
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/video/VideoEncoder;->inputYUVData([B)V

    .line 654
    return-void
.end method

.method public isAudioMuted()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->isMuted()Z

    move-result v0

    return v0
.end method

.method public isOnPreview()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->onPreview:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->recording:Z

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->streaming:Z

    return v0
.end method

.method public isVideoEnabled()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEnabled:Z

    return v0
.end method

.method public onAudioFormat(Landroid/media/MediaFormat;)V
    .locals 0
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioFormat:Landroid/media/MediaFormat;

    .line 664
    return-void
.end method

.method public onSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 630
    invoke-virtual {p0, p1, p2}, Lcom/pedro/rtplibrary/base/Camera2Base;->onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 631
    return-void
.end method

.method protected abstract onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method public onVideoFormat(Landroid/media/MediaFormat;)V
    .locals 0
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoFormat:Landroid/media/MediaFormat;

    .line 659
    return-void
.end method

.method public prepareAudio()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->createMicrophone()V

    .line 200
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

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
    .line 163
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->createMicrophone(IZZZ)V

    .line 164
    invoke-virtual {p0, p3, p2}, Lcom/pedro/rtplibrary/base/Camera2Base;->prepareAudioRtp(ZI)V

    .line 165
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pedro/encoder/audio/AudioEncoder;->prepareAudioEncoder(IIZ)Z

    move-result v0

    return v0
.end method

.method protected abstract prepareAudioRtp(ZI)V
.end method

.method public prepareVideo()Z
    .locals 9

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->onPreview:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/base/Camera2Base;->stopPreview()V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->onPreview:Z

    .line 182
    :cond_0
    const/4 v6, 0x1

    .line 183
    .local v6, "isHardwareRotation":Z
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    const/16 v3, 0x1e

    const v4, 0x12c000

    const/16 v5, 0x5a

    sget-object v7, Lcom/pedro/encoder/video/FormatVideoEncoder;->SURFACE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 185
    invoke-virtual/range {v0 .. v7}, Lcom/pedro/encoder/video/VideoEncoder;->prepareVideoEncoder(IIIIIZLcom/pedro/encoder/video/FormatVideoEncoder;)Z

    move-result v8

    .line 187
    .local v8, "result":Z
    invoke-direct {p0}, Lcom/pedro/rtplibrary/base/Camera2Base;->prepareCameraManager()V

    .line 188
    return v8
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
    .line 136
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->onPreview:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/base/Camera2Base;->stopPreview()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->onPreview:Z

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    sget-object v7, Lcom/pedro/encoder/video/FormatVideoEncoder;->SURFACE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v6, p5

    .line 141
    invoke-virtual/range {v0 .. v7}, Lcom/pedro/encoder/video/VideoEncoder;->prepareVideoEncoder(IIIIIZLcom/pedro/encoder/video/FormatVideoEncoder;)Z

    move-result v8

    .line 143
    .local v8, "result":Z
    invoke-direct {p0}, Lcom/pedro/rtplibrary/base/Camera2Base;->prepareCameraManager()V

    .line 144
    return v8
.end method

.method public setAlphaStreamObject(F)V
    .locals 2
    .param p1, "alpha"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0, p1}, Lcom/pedro/rtplibrary/view/OpenGlView;->setStreamObjectAlpha(F)V

    .line 492
    return-void

    .line 490
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set an alpha"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setGifStreamObject(Lcom/pedro/encoder/utils/gl/GifStreamObject;)V
    .locals 2
    .param p1, "gifStreamObject"    # Lcom/pedro/encoder/utils/gl/GifStreamObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0, p1}, Lcom/pedro/rtplibrary/view/OpenGlView;->setGif(Lcom/pedro/encoder/utils/gl/GifStreamObject;)V

    .line 435
    return-void

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set a gif"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setImageStreamObject(Lcom/pedro/encoder/utils/gl/ImageStreamObject;)V
    .locals 2
    .param p1, "imageStreamObject"    # Lcom/pedro/encoder/utils/gl/ImageStreamObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0, p1}, Lcom/pedro/rtplibrary/view/OpenGlView;->setImage(Lcom/pedro/encoder/utils/gl/ImageStreamObject;)V

    .line 450
    return-void

    .line 448
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set a image"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPositionStreamObject(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtplibrary/view/OpenGlView;->setStreamObjectPosition(FF)V

    .line 522
    return-void

    .line 520
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set a position"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPositionStreamObject(Lcom/pedro/encoder/utils/gl/TranslateTo;)V
    .locals 2
    .param p1, "translateTo"    # Lcom/pedro/encoder/utils/gl/TranslateTo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0, p1}, Lcom/pedro/rtplibrary/view/OpenGlView;->setStreamObjectPosition(Lcom/pedro/encoder/utils/gl/TranslateTo;)V

    .line 536
    return-void

    .line 534
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set a position"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSizeStreamObject(FF)V
    .locals 2
    .param p1, "sizeX"    # F
    .param p2, "sizeY"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtplibrary/view/OpenGlView;->setStreamObjectSize(FF)V

    .line 507
    return-void

    .line 505
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set a size"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextStreamObject(Lcom/pedro/encoder/utils/gl/TextStreamObject;)V
    .locals 2
    .param p1, "textStreamObject"    # Lcom/pedro/encoder/utils/gl/TextStreamObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0, p1}, Lcom/pedro/rtplibrary/view/OpenGlView;->setText(Lcom/pedro/encoder/utils/gl/TextStreamObject;)V

    .line 465
    return-void

    .line 463
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use OpenGlView in the constructor to set a text"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVideoBitrateOnFly(I)V
    .locals 2
    .param p1, "bitrate"    # I

    .prologue
    .line 572
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 573
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/video/VideoEncoder;->setVideoBitrateOnFly(I)V

    .line 575
    :cond_0
    return-void
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pedro/rtplibrary/base/Camera2Base;->startPreview(I)V

    .line 271
    return-void
.end method

.method public startPreview(I)V
    .locals 4
    .param p1, "cameraFacing"    # I
        .annotation build Lcom/pedro/encoder/input/video/Camera2Facing;
        .end annotation
    .end param

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/base/Camera2Base;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->onPreview:Z

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepareCamera(Landroid/view/Surface;)V

    .line 259
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->openCameraFacing(I)V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->onPreview:Z

    .line 262
    :cond_1
    return-void

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepareCamera(Landroid/view/Surface;)V

    goto :goto_0

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->startGLThread()V

    .line 256
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v1}, Lcom/pedro/rtplibrary/view/OpenGlView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v2}, Lcom/pedro/encoder/video/VideoEncoder;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    .line 257
    invoke-virtual {v3}, Lcom/pedro/encoder/video/VideoEncoder;->getHeight()I

    move-result v3

    .line 256
    invoke-virtual {v0, v1, v2, v3}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepareCamera(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->streaming:Z

    if-eqz v0, :cond_2

    .line 211
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 212
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->mediaMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoTrack:I

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->mediaMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioTrack:I

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->recording:Z

    .line 223
    return-void

    .line 221
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Need be called while stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startStream(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEnabled:Z

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->getRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->getRotation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v1}, Lcom/pedro/encoder/video/VideoEncoder;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v2}, Lcom/pedro/encoder/video/VideoEncoder;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pedro/rtplibrary/view/OpenGlView;->setEncoderSize(II)V

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->startGLThread()V

    .line 310
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v1}, Lcom/pedro/encoder/video/VideoEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pedro/rtplibrary/view/OpenGlView;->addMediaCodecSurface(Landroid/view/Surface;)V

    .line 311
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v1}, Lcom/pedro/rtplibrary/view/OpenGlView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v2}, Lcom/pedro/encoder/video/VideoEncoder;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    .line 312
    invoke-virtual {v3}, Lcom/pedro/encoder/video/VideoEncoder;->getHeight()I

    move-result v3

    .line 311
    invoke-virtual {v0, v1, v2, v3}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepareCamera(Landroid/graphics/SurfaceTexture;II)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->start()V

    .line 315
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/audio/AudioEncoder;->start()V

    .line 316
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->onPreview:Z

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->openLastCamera()V

    .line 321
    :goto_1
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->start()V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->streaming:Z

    .line 323
    invoke-virtual {p0, p1}, Lcom/pedro/rtplibrary/base/Camera2Base;->startStreamRtp(Ljava/lang/String;)V

    .line 324
    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v1}, Lcom/pedro/encoder/video/VideoEncoder;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v2}, Lcom/pedro/encoder/video/VideoEncoder;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pedro/rtplibrary/view/OpenGlView;->setEncoderSize(II)V

    goto :goto_0

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->openCameraBack()V

    goto :goto_1
.end method

.method protected abstract startStreamRtp(Ljava/lang/String;)V
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/base/Camera2Base;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->onPreview:Z

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->stopGlThread()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-virtual {v0, v1}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->closeCamera(Z)V

    .line 283
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->onPreview:Z

    .line 285
    :cond_1
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 229
    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->recording:Z

    .line 230
    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->canRecord:Z

    .line 231
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 233
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 236
    :cond_0
    iput v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoTrack:I

    .line 237
    iput v1, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioTrack:I

    .line 238
    return-void
.end method

.method public stopStream()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->closeCamera(Z)V

    .line 333
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->stop()V

    .line 334
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/base/Camera2Base;->stopStreamRtp()V

    .line 335
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->stop()V

    .line 336
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/audio/AudioEncoder;->stop()V

    .line 337
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->stopGlThread()V

    .line 339
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->openGlView:Lcom/pedro/rtplibrary/view/OpenGlView;

    invoke-virtual {v0}, Lcom/pedro/rtplibrary/view/OpenGlView;->removeMediaCodecSurface()V

    .line 341
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->streaming:Z

    .line 342
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
    .line 417
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/base/Camera2Base;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->onPreview:Z

    if-eqz v0, :cond_1

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/Camera2Base;->cameraManager:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->switchCamera()V

    .line 420
    :cond_1
    return-void
.end method
