.class public abstract Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;
.super Ljava/lang/Object;
.source "RtmpBase.java"

# interfaces
.implements Lcom/pedro/encoder/audio/GetAacData;
.implements Lcom/pedro/encoder/input/video/GetCameraData;
.implements Lcom/pedro/encoder/video/GetH264Data;
.implements Lcom/pedro/encoder/input/audio/GetMicrophoneData;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field protected mAudioEncoder:Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;

.field private mAudioFormat:Landroid/media/MediaFormat;

.field private mIsStreaming:Z

.field protected mMicrophoneManager:Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

.field protected mVideoEncoder:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

.field private mVideoFormat:Landroid/media/MediaFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-class v1, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;-><init>(Lcom/pedro/encoder/video/GetH264Data;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mVideoEncoder:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    .line 35
    new-instance v0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;-><init>(Lcom/pedro/encoder/input/audio/GetMicrophoneData;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mMicrophoneManager:Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

    .line 36
    new-instance v0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;-><init>(Lcom/pedro/encoder/audio/GetAacData;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mAudioEncoder:Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mIsStreaming:Z

    .line 38
    return-void
.end method


# virtual methods
.method public getAacData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->getAacDataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 98
    return-void
.end method

.method protected abstract getAacDataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public getH264Data(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 127
    return-void
.end method

.method protected abstract getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mVideoEncoder:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public inputPCMData([BI)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "size"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mAudioEncoder:Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->inputPCMData([BI)V

    .line 108
    return-void
.end method

.method public inputYUVData([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mVideoEncoder:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->inputYUVData([B)V

    .line 113
    return-void
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mIsStreaming:Z

    return v0
.end method

.method public onAudioFormat(Landroid/media/MediaFormat;)V
    .locals 0
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mAudioFormat:Landroid/media/MediaFormat;

    .line 103
    return-void
.end method

.method public onSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "byteBuffer1"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 120
    return-void
.end method

.method protected abstract onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method public onVideoFormat(Landroid/media/MediaFormat;)V
    .locals 0
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mVideoFormat:Landroid/media/MediaFormat;

    .line 132
    return-void
.end method

.method public prepareAudio(IIZZZLcom/android/camera/OZO/OZOSettings;)Z
    .locals 6
    .param p1, "bitrate"    # I
    .param p2, "sampleRate"    # I
    .param p3, "isStereo"    # Z
    .param p4, "echoCanceler"    # Z
    .param p5, "noiseSuppressor"    # Z
    .param p6, "ozoSettings"    # Lcom/android/camera/OZO/OZOSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mMicrophoneManager:Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->checkIfMicrophoneIsReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Microphone is occupied."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mMicrophoneManager:Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->createMicrophone(IZZZLcom/android/camera/OZO/OZOSettings;)V

    .line 59
    invoke-virtual {p0, p3, p2}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->prepareAudioRtp(ZI)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mAudioEncoder:Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;

    invoke-virtual {v0, p1, p2, p3, p6}, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->prepareAudioEncoder(IIZLcom/android/camera/OZO/OZOSettings;)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract prepareAudioRtp(ZI)V
.end method

.method public prepareVideo(IIIIZI)Z
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fps"    # I
    .param p4, "bitrate"    # I
    .param p5, "hardwareRotation"    # Z
    .param p6, "rotation"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mVideoEncoder:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    sget-object v7, Lcom/pedro/encoder/video/FormatVideoEncoder;->SURFACE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->prepareVideoEncoder(IIIIIZLcom/pedro/encoder/video/FormatVideoEncoder;)Z

    move-result v0

    return v0
.end method

.method public releaseStream()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mVideoEncoder:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->release()V

    .line 87
    return-void
.end method

.method public startStream(Ljava/lang/String;II)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->startStreamRtp(Ljava/lang/String;II)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mVideoEncoder:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->start()V

    .line 70
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mAudioEncoder:Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->start()V

    .line 71
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mMicrophoneManager:Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->start()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mIsStreaming:Z

    .line 73
    return-void
.end method

.method protected abstract startStreamRtp(Ljava/lang/String;II)V
.end method

.method public stopStream()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mMicrophoneManager:Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->stop()V

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->stopStreamRtp()V

    .line 80
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mVideoEncoder:Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->stop()V

    .line 81
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mAudioEncoder:Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->stop()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;->mIsStreaming:Z

    .line 83
    return-void
.end method

.method protected abstract stopStreamRtp()V
.end method
