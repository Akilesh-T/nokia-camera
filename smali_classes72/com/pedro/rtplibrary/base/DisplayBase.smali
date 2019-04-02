.class public abstract Lcom/pedro/rtplibrary/base/DisplayBase;
.super Ljava/lang/Object;
.source "DisplayBase.java"

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

.field private canRecord:Z

.field protected context:Landroid/content/Context;

.field private dpi:I

.field private mediaMuxer:Landroid/media/MediaMuxer;

.field private mediaProjection:Landroid/media/projection/MediaProjection;

.field private mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field protected microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

.field private recording:Z

.field private streaming:Z

.field protected surfaceView:Landroid/view/SurfaceView;

.field private videoEnabled:Z

.field protected videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

.field private videoFormat:Landroid/media/MediaFormat;

.field private videoTrack:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEnabled:Z

    .line 50
    iput v2, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoTrack:I

    .line 51
    iput v2, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->audioTrack:I

    .line 52
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->recording:Z

    .line 53
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->canRecord:Z

    .line 56
    const/16 v0, 0x140

    iput v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->dpi:I

    .line 59
    iput-object p1, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->context:Landroid/content/Context;

    .line 60
    const-string v0, "media_projection"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->surfaceView:Landroid/view/SurfaceView;

    .line 63
    new-instance v0, Lcom/pedro/encoder/video/VideoEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/video/VideoEncoder;-><init>(Lcom/pedro/encoder/video/GetH264Data;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    .line 64
    new-instance v0, Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;-><init>(Lcom/pedro/encoder/input/audio/GetMicrophoneData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    .line 65
    new-instance v0, Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/audio/AudioEncoder;-><init>(Lcom/pedro/encoder/audio/GetAacData;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    .line 66
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->streaming:Z

    .line 67
    return-void
.end method


# virtual methods
.method public disableAudio()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->mute()V

    .line 233
    return-void
.end method

.method public disableVideo()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->startSendBlackImage()V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEnabled:Z

    .line 267
    return-void
.end method

.method public enableAudio()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->unMute()V

    .line 240
    return-void
.end method

.method public enableVideo()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->stopSendBlackImage()V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEnabled:Z

    .line 275
    return-void
.end method

.method public getAacData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .param p1, "aacBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->recording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->canRecord:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaMuxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->audioTrack:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 313
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/pedro/rtplibrary/base/DisplayBase;->getAacDataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 314
    return-void
.end method

.method protected abstract getAacDataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public getH264Data(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .param p1, "h264Buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    const/4 v1, 0x1

    .line 327
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->recording:Z

    if-eqz v0, :cond_1

    .line 328
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->canRecord:Z

    .line 329
    :cond_0
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->canRecord:Z

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaMuxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoTrack:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 333
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/pedro/rtplibrary/base/DisplayBase;->getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 334
    return-void
.end method

.method protected abstract getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public inputPCMData([BI)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "size"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/encoder/audio/AudioEncoder;->inputPCMData([BI)V

    .line 339
    return-void
.end method

.method public inputYUVData([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 343
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/video/VideoEncoder;->inputYUVData([B)V

    .line 344
    return-void
.end method

.method public isAudioMuted()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->isMuted()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->recording:Z

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->streaming:Z

    return v0
.end method

.method public isVideoEnabled()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEnabled:Z

    return v0
.end method

.method public onAudioFormat(Landroid/media/MediaFormat;)V
    .locals 0
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->audioFormat:Landroid/media/MediaFormat;

    .line 354
    return-void
.end method

.method public onSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 320
    invoke-virtual {p0, p1, p2}, Lcom/pedro/rtplibrary/base/DisplayBase;->onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 321
    return-void
.end method

.method protected abstract onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method public onVideoFormat(Landroid/media/MediaFormat;)V
    .locals 0
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoFormat:Landroid/media/MediaFormat;

    .line 349
    return-void
.end method

.method public prepareAudio()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->createMicrophone()V

    .line 143
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

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
    .line 115
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->createMicrophone(IZZZ)V

    .line 116
    invoke-virtual {p0, p3, p2}, Lcom/pedro/rtplibrary/base/DisplayBase;->prepareAudioRtp(ZI)V

    .line 117
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pedro/encoder/audio/AudioEncoder;->prepareAudioEncoder(IIZ)Z

    move-result v0

    return v0
.end method

.method protected abstract prepareAudioRtp(ZI)V
.end method

.method public prepareVideo()Z
    .locals 8

    .prologue
    .line 130
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    const/16 v3, 0x1e

    const v4, 0x12c000

    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v7, Lcom/pedro/encoder/video/FormatVideoEncoder;->SURFACE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    invoke-virtual/range {v0 .. v7}, Lcom/pedro/encoder/video/VideoEncoder;->prepareVideoEncoder(IIIIIZLcom/pedro/encoder/video/FormatVideoEncoder;)Z

    move-result v0

    return v0
.end method

.method public prepareVideo(IIIIII)Z
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fps"    # I
    .param p4, "bitrate"    # I
    .param p5, "rotation"    # I
    .param p6, "dpi"    # I

    .prologue
    .line 93
    iput p6, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->dpi:I

    .line 94
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    const/4 v6, 0x1

    sget-object v7, Lcom/pedro/encoder/video/FormatVideoEncoder;->SURFACE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/pedro/encoder/video/VideoEncoder;->prepareVideoEncoder(IIIIIZLcom/pedro/encoder/video/FormatVideoEncoder;)Z

    move-result v8

    .line 96
    .local v8, "result":Z
    return v8
.end method

.method public sendIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public abstract setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setVideoBitrateOnFly(I)V
    .locals 2
    .param p1, "bitrate"    # I

    .prologue
    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/video/VideoEncoder;->setVideoBitrateOnFly(I)V

    .line 286
    :cond_0
    return-void
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
    .line 153
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->streaming:Z

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 155
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoTrack:I

    .line 156
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->audioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->audioTrack:I

    .line 157
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->recording:Z

    .line 162
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Need be called while stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startStream(Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 202
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->start()V

    .line 203
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/audio/AudioEncoder;->start()V

    .line 204
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 205
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaProjection:Landroid/media/projection/MediaProjection;

    const-string v1, "Stream Display"

    iget-object v2, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v2}, Lcom/pedro/encoder/video/VideoEncoder;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    .line 206
    invoke-virtual {v3}, Lcom/pedro/encoder/video/VideoEncoder;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->dpi:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v6}, Lcom/pedro/encoder/video/VideoEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v6

    move-object v8, v7

    .line 205
    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    .line 207
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->start()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->streaming:Z

    .line 209
    invoke-virtual {p0, p1}, Lcom/pedro/rtplibrary/base/DisplayBase;->startStreamRtp(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method protected abstract startStreamRtp(Ljava/lang/String;)V
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 168
    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->recording:Z

    .line 169
    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->canRecord:Z

    .line 170
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 172
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 175
    :cond_0
    iput v1, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoTrack:I

    .line 176
    iput v1, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->audioTrack:I

    .line 177
    return-void
.end method

.method public stopStream()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->microphoneManager:Lcom/pedro/encoder/input/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->stop()V

    .line 219
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->mediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/base/DisplayBase;->stopStreamRtp()V

    .line 223
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->stop()V

    .line 224
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->audioEncoder:Lcom/pedro/encoder/audio/AudioEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/audio/AudioEncoder;->stop()V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/DisplayBase;->streaming:Z

    .line 226
    return-void
.end method

.method protected abstract stopStreamRtp()V
.end method
