.class public Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;
.super Ljava/lang/Object;
.source "NormalVideoEncoder.java"

# interfaces
.implements Lcom/pedro/encoder/input/video/GetCameraData;


# static fields
.field public static final H264_MIME:Ljava/lang/String; = "video/avc"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private getH264Data:Lcom/pedro/encoder/video/GetH264Data;

.field private final mEncoderHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mInputSurface:Landroid/view/Surface;

.field private mPresentTimeUs:J

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVideoEncoder:Landroid/media/MediaCodec;

.field private spsPpsSetted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "VideoEncoder"

    sput-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pedro/encoder/video/GetH264Data;)V
    .locals 2
    .param p1, "getH264Data"    # Lcom/pedro/encoder/video/GetH264Data;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->spsPpsSetted:Z

    .line 38
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->getH264Data:Lcom/pedro/encoder/video/GetH264Data;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaCodecThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mEncoderHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)Lcom/pedro/encoder/video/GetH264Data;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->getH264Data:Lcom/pedro/encoder/video/GetH264Data;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->spsPpsSetted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->spsPpsSetted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;Ljava/nio/ByteBuffer;I)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->decodeSpsPpsFromBuffer(Ljava/nio/ByteBuffer;I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mPresentTimeUs:J

    return-wide v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private chooseVideoEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 18
    .param p1, "mime"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v5, Landroid/media/MediaCodecList;

    const/4 v8, 0x1

    invoke-direct {v5, v8}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 181
    .local v5, "mediaCodecList":Landroid/media/MediaCodecList;
    invoke-virtual {v5}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 182
    .local v4, "mediaCodecInfos":[Landroid/media/MediaCodecInfo;
    array-length v11, v4

    const/4 v8, 0x0

    move v10, v8

    :goto_0
    if-ge v10, v11, :cond_5

    aget-object v3, v4, v10

    .line 183
    .local v3, "mci":Landroid/media/MediaCodecInfo;
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v8

    if-nez v8, :cond_1

    .line 182
    :cond_0
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, "types":[Ljava/lang/String;
    array-length v12, v7

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v12, :cond_0

    aget-object v6, v7, v9

    .line 188
    .local v6, "type":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 189
    sget-object v8, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->TAG:Ljava/lang/String;

    const-string v13, "videoEncoder %s type supported: %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v6, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    .line 191
    .local v1, "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    iget-object v13, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v14, v13

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v14, :cond_4

    aget v2, v13, v8

    .line 192
    .local v2, "color":I
    sget-object v15, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Color supported: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v15, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    invoke-virtual {v15}, Lcom/pedro/encoder/video/FormatVideoEncoder;->getFormatCodec()I

    move-result v15

    if-eq v2, v15, :cond_2

    sget-object v15, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420SEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 195
    invoke-virtual {v15}, Lcom/pedro/encoder/video/FormatVideoEncoder;->getFormatCodec()I

    move-result v15

    if-eq v2, v15, :cond_2

    sget-object v15, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PACKEDPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 196
    invoke-virtual {v15}, Lcom/pedro/encoder/video/FormatVideoEncoder;->getFormatCodec()I

    move-result v15

    if-ne v2, v15, :cond_3

    .line 203
    .end local v1    # "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "color":I
    .end local v3    # "mci":Landroid/media/MediaCodecInfo;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "types":[Ljava/lang/String;
    :cond_2
    :goto_3
    return-object v3

    .line 191
    .restart local v1    # "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v2    # "color":I
    .restart local v3    # "mci":Landroid/media/MediaCodecInfo;
    .restart local v6    # "type":Ljava/lang/String;
    .restart local v7    # "types":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 187
    .end local v1    # "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "color":I
    :cond_4
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_1

    .line 203
    .end local v3    # "mci":Landroid/media/MediaCodecInfo;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "types":[Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private decodeSpsPpsFromBuffer(Ljava/nio/ByteBuffer;I)Landroid/util/Pair;
    .locals 10
    .param p1, "outputBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 210
    const/4 v3, 0x0

    .local v3, "mSPS":[B
    const/4 v2, 0x0

    .line 211
    .local v2, "mPPS":[B
    new-array v0, p2, [B

    .line 212
    .local v0, "csd":[B
    invoke-virtual {p1, v0, v9, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, "i":I
    const/4 v5, -0x1

    .line 215
    .local v5, "spsIndex":I
    const/4 v4, -0x1

    .line 216
    .local v4, "ppsIndex":I
    :goto_0
    add-int/lit8 v6, p2, -0x4

    if-ge v1, v6, :cond_2

    .line 217
    aget-byte v6, v0, v1

    if-nez v6, :cond_0

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v0, v6

    if-nez v6, :cond_0

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v0, v6

    if-nez v6, :cond_0

    add-int/lit8 v6, v1, 0x3

    aget-byte v6, v0, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 218
    if-ne v5, v8, :cond_1

    .line 219
    move v5, v1

    .line 225
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_1
    move v4, v1

    .line 227
    :cond_2
    if-eq v5, v8, :cond_3

    if-eq v4, v8, :cond_3

    .line 228
    new-array v3, v4, [B

    .line 229
    invoke-static {v0, v5, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    sub-int v6, p2, v4

    new-array v2, v6, [B

    .line 231
    sub-int v6, p2, v4

    invoke-static {v0, v4, v2, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 234
    new-instance v6, Landroid/util/Pair;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    :goto_1
    return-object v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mInputSurface:Landroid/view/Surface;

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public inputYUVData([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 242
    return-void
.end method

.method public prepareVideoEncoder(IIIIIZLcom/pedro/encoder/video/FormatVideoEncoder;)Z
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fps"    # I
    .param p4, "bitRate"    # I
    .param p5, "rotation"    # I
    .param p6, "hardwareRotation"    # Z
    .param p7, "formatVideoEncoder"    # Lcom/pedro/encoder/video/FormatVideoEncoder;

    .prologue
    .line 49
    const-string v3, "video/avc"

    invoke-direct {p0, v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->chooseVideoEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 51
    .local v1, "encoder":Landroid/media/MediaCodecInfo;
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    if-nez p6, :cond_3

    const/16 v3, 0x5a

    if-eq p5, v3, :cond_0

    const/16 v3, 0x10e

    if-ne p5, v3, :cond_3

    .line 59
    :cond_0
    const-string v3, "video/avc"

    invoke-static {v3, p2, p1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 63
    .local v2, "videoFormat":Landroid/media/MediaFormat;
    :goto_1
    const-string v3, "color-format"

    invoke-virtual {p7}, Lcom/pedro/encoder/video/FormatVideoEncoder;->getFormatCodec()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 64
    const-string v3, "max-input-size"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 65
    const-string v3, "bitrate"

    invoke-virtual {v2, v3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 66
    const-string v3, "frame-rate"

    invoke-virtual {v2, v3, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 67
    const-string v3, "i-frame-interval"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 68
    if-eqz p6, :cond_1

    .line 69
    const-string v3, "rotation-degrees"

    invoke-virtual {v2, v3, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 73
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    sget-object v3, Lcom/pedro/encoder/video/FormatVideoEncoder;->SURFACE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    if-ne p7, v3, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_2

    .line 76
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mInputSurface:Landroid/view/Surface;

    .line 78
    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    new-instance v4, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;

    invoke-direct {v4, p0}, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder$1;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;)V

    iget-object v5, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mEncoderHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 126
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 52
    .end local v2    # "videoFormat":Landroid/media/MediaFormat;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to prepared video encoder with Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v3, "video/avc"

    invoke-static {v3, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .restart local v2    # "videoFormat":Landroid/media/MediaFormat;
    goto :goto_1
.end method

.method public release()V
    .locals 3

    .prologue
    .line 162
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 166
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mInputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 173
    :cond_1
    monitor-exit v1

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 136
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->spsPpsSetted:Z

    .line 140
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mPresentTimeUs:J

    .line 141
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 142
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 146
    :goto_0
    monitor-exit v1

    .line 147
    return-void

    .line 144
    :cond_0
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "VideoEncoder need be prepared, VideoEncoder not enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 150
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 154
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 156
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->spsPpsSetted:Z

    .line 157
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/NormalVideoEncoder;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 158
    monitor-exit v1

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
