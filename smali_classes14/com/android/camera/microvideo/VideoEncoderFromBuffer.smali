.class public Lcom/android/camera/microvideo/VideoEncoderFromBuffer;
.super Ljava/lang/Object;
.source "VideoEncoderFromBuffer.java"


# static fields
.field private static final COMPRESS_RATIO:I = 0x100

.field private static final DEBUG_FILE_NAME_BASE:Ljava/lang/String; = "/sdcard/Movies/h264"

.field private static final FRAME_RATE:I = 0x1e

.field private static final IFRAME_INTERVAL:I = 0x1

.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "VideoEncoderFromBuffer"

.field private static final TIMEOUT_USEC:I = 0x7d0

.field private static final VERBOSE:Z = true


# instance fields
.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mColorFormat:I

.field private mCurrentMuxerPath:Ljava/lang/String;

.field mFileOutputStream:Ljava/io/FileOutputStream;

.field mFrameData:[B

.field private mHeight:I

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private mStartTime:J

.field private mTrackIndex:I

.field private mWidth:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isFront"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mTrackIndex:I

    .line 38
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 40
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mStartTime:J

    .line 45
    const-string v9, "VideoEncoderFromBuffer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VideoEncoder():"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iput p1, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mWidth:I

    .line 47
    iput p2, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mHeight:I

    .line 48
    const v0, 0xb71b00

    .line 49
    .local v0, "BIT_RATE":I
    iget v9, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mWidth:I

    iget v10, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mHeight:I

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mFrameData:[B

    .line 51
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v9, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 52
    const-string v9, "video/avc"

    invoke-static {v9}, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 53
    .local v1, "codecInfo":Landroid/media/MediaCodecInfo;
    if-nez v1, :cond_0

    .line 56
    const-string v9, "VideoEncoderFromBuffer"

    const-string v10, "Unable to find an appropriate codec for video/avc"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v9, "VideoEncoderFromBuffer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found codec: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v9, "video/avc"

    invoke-static {v1, v9}, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mColorFormat:I

    .line 63
    const-string v9, "VideoEncoderFromBuffer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found colorFormat: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mColorFormat:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v9, "video/avc"

    iget v10, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mWidth:I

    iget v11, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mHeight:I

    invoke-static {v9, v10, v11}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v6

    .line 66
    .local v6, "mediaFormat":Landroid/media/MediaFormat;
    const-string v9, "bitrate"

    invoke-virtual {v6, v9, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 67
    const-string v9, "frame-rate"

    const/16 v10, 0x1e

    invoke-virtual {v6, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 68
    const-string v9, "color-format"

    iget v10, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mColorFormat:I

    invoke-virtual {v6, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 69
    const-string v9, "i-frame-interval"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 72
    const-string v9, "VideoEncoderFromBuffer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "format: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    iget-object v9, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v6, v10, v11, v12}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 81
    iget-object v9, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->start()V

    .line 82
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/.microvideo/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".mp4"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mCurrentMuxerPath:Ljava/lang/String;

    .line 84
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mCurrentMuxerPath:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 86
    .local v7, "parentFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 87
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 89
    :cond_1
    const/4 v8, 0x0

    .line 90
    .local v8, "s":Z
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 92
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 97
    :cond_2
    :goto_2
    const-string v9, "VideoEncoderFromBuffer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "videofile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mCurrentMuxerPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mStartTime:J

    .line 115
    :try_start_2
    new-instance v9, Landroid/media/MediaMuxer;

    iget-object v10, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mCurrentMuxerPath:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v9, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 120
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mTrackIndex:I

    .line 121
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMuxerStarted:Z

    goto/16 :goto_0

    .line 75
    .end local v4    # "f":Ljava/io/File;
    .end local v7    # "parentFile":Ljava/io/File;
    .end local v8    # "s":Z
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 93
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v7    # "parentFile":Ljava/io/File;
    .restart local v8    # "s":Z
    :catch_1
    move-exception v2

    .line 95
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 117
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 118
    .local v5, "ioe":Ljava/io/IOException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "MediaMuxer creation failed"

    invoke-direct {v9, v10, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method public static NV21toI420Planar([B[BII)V
    .locals 7
    .param p0, "nv21bytes"    # [B
    .param p1, "i420pbytes"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 274
    mul-int v2, p2, p3

    .line 275
    .local v2, "size":I
    div-int/lit8 v1, v2, 0x4

    .line 276
    .local v1, "quarter":I
    move v3, v2

    .line 277
    .local v3, "uPosition":I
    add-int v4, v2, v1

    .line 279
    .local v4, "vPosition":I
    invoke-static {p0, v5, p1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 282
    add-int v5, v3, v0

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p0, v6

    aput-byte v6, p1, v5

    .line 283
    add-int v5, v4, v0

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v2

    aget-byte v6, p0, v6

    aput-byte v6, p1, v5

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    return-void
.end method

.method private NV21toI420SemiPlanar([B[BII)V
    .locals 3
    .param p1, "nv21bytes"    # [B
    .param p2, "i420bytes"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 309
    mul-int v1, p3, p4

    invoke-static {p1, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    mul-int v0, p3, p4

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 311
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    aput-byte v1, p2, v0

    .line 312
    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p1, v0

    aput-byte v2, p2, v1

    .line 310
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

.method public static NV21toYUV420PackedPlanar([B[BII)V
    .locals 5
    .param p0, "nv21bytes"    # [B
    .param p1, "output"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 292
    mul-int v0, p2, p3

    .line 293
    .local v0, "frameSize":I
    div-int/lit8 v2, v0, 0x4

    .line 294
    .local v2, "qFrameSize":I
    invoke-static {p0, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 297
    add-int v3, v0, v1

    add-int/2addr v3, v2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, p1, v3

    .line 298
    add-int v3, v0, v1

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    aget-byte v4, p0, v4

    aput-byte v4, p1, v3

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_0
    return-void
.end method

.method private static computePresentationTime(I)J
    .locals 2
    .param p0, "frameIndex"    # I

    .prologue
    .line 380
    const v0, 0xf4240

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x1e

    add-int/lit16 v0, v0, 0x84

    int-to-long v0, v0

    return-wide v0
.end method

.method private static isRecognizedFormat(I)Z
    .locals 1
    .param p0, "colorFormat"    # I

    .prologue
    .line 342
    sparse-switch p0, :sswitch_data_0

    .line 351
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 349
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 342
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x27 -> :sswitch_0
        0x7f000100 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isSemiPlanarYUV(I)Z
    .locals 3
    .param p0, "colorFormat"    # I

    .prologue
    .line 388
    sparse-switch p0, :sswitch_data_0

    .line 397
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :sswitch_0
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 388
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x27 -> :sswitch_1
        0x7f000100 -> :sswitch_1
    .end sparse-switch
.end method

.method private static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 6
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 361
    .local v3, "numCodecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 362
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 363
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_1

    .line 361
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "types":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 368
    aget-object v5, v4, v2

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 373
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :goto_2
    return-object v0

    .line 367
    .restart local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v2    # "j":I
    .restart local v4    # "types":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 373
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 6
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 323
    .line 324
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 325
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 326
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v1, v3, v2

    .line 327
    .local v1, "colorFormat":I
    invoke-static {v1}, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->isRecognizedFormat(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    .end local v1    # "colorFormat":I
    :goto_1
    return v1

    .line 325
    .restart local v1    # "colorFormat":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    .end local v1    # "colorFormat":I
    :cond_1
    const-string v3, "VideoEncoderFromBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t find a good color format for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 332
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public close()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 253
    const-string v1, "VideoEncoderFromBuffer"

    const-string v2, "close()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 256
    iget-object v1, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 257
    iget-object v1, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    .line 261
    iget-object v1, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    .line 262
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mCurrentMuxerPath:Ljava/lang/String;

    return-object v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    iput-object v3, p0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mCurrentMuxerPath:Ljava/lang/String;

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public encodeFrame([BJ)V
    .locals 22
    .param p1, "input"    # [B
    .param p2, "pts"    # J

    .prologue
    .line 125
    const-string v2, "VideoEncoderFromBuffer"

    const-string v4, "encodeFrame()"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-wide/16 v10, 0x0

    .line 128
    .local v10, "encodedSize":J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mColorFormat:I

    packed-switch v2, :pswitch_data_0

    .line 139
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "do not know how to convert fix me please"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mFrameData:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mHeight:I

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->NV21toI420Planar([B[BII)V

    .line 142
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 143
    .local v14, "inputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 144
    .local v18, "outputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 146
    .local v3, "inputBufferIndex":I
    const-string v2, "VideoEncoderFromBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inputBufferIndex-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-ltz v3, :cond_1

    .line 148
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 149
    .local v12, "endTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mStartTime:J

    sub-long v4, v12, v4

    const-wide/16 v6, 0x3e8

    div-long v20, v4, v6

    .line 150
    .local v20, "ptsUsec":J
    const-string v2, "VideoEncoderFromBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resentationTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    aget-object v9, v14, v3

    .line 152
    .local v9, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mFrameData:[B

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mFrameData:[B

    array-length v5, v5

    const/4 v8, 0x0

    move-wide/from16 v6, p2

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 164
    .end local v9    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v12    # "endTime":J
    .end local v20    # "ptsUsec":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMediaCodec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v2, v4, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v17

    .line 165
    .local v17, "outputBufferIndex":I
    const-string v2, "VideoEncoderFromBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "outputBufferIndex-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    .line 170
    const-string v2, "VideoEncoderFromBuffer"

    const-string v4, "no output from encoder available"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMediaCodec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v2, v4, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v17

    .line 241
    if-gez v17, :cond_0

    .line 242
    return-void

    .line 133
    .end local v3    # "inputBufferIndex":I
    .end local v14    # "inputBuffers":[Ljava/nio/ByteBuffer;
    .end local v17    # "outputBufferIndex":I
    .end local v18    # "outputBuffers":[Ljava/nio/ByteBuffer;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mFrameData:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mHeight:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->NV21toI420SemiPlanar([B[BII)V

    goto/16 :goto_0

    .line 136
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mFrameData:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mHeight:I

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->NV21toYUV420PackedPlanar([B[BII)V

    goto/16 :goto_0

    .line 161
    .restart local v3    # "inputBufferIndex":I
    .restart local v14    # "inputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v18    # "outputBuffers":[Ljava/nio/ByteBuffer;
    :cond_1
    const-string v2, "VideoEncoderFromBuffer"

    const-string v4, "input buffer not available"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 171
    .restart local v17    # "outputBufferIndex":I
    :cond_2
    const/4 v2, -0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 175
    const-string v2, "VideoEncoderFromBuffer"

    const-string v4, "encoder output buffers changed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 176
    :cond_3
    const/4 v2, -0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v15

    .line 180
    .local v15, "newFormat":Landroid/media/MediaFormat;
    const-string v2, "VideoEncoderFromBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encoder output format changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2, v15}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mTrackIndex:I

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->start()V

    .line 185
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMuxerStarted:Z

    goto/16 :goto_2

    .line 186
    .end local v15    # "newFormat":Landroid/media/MediaFormat;
    :cond_4
    if-gez v17, :cond_5

    .line 187
    const-string v2, "VideoEncoderFromBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 192
    :cond_5
    const-string v2, "VideoEncoderFromBuffer"

    const-string v4, "perform encoding"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    aget-object v16, v18, v17

    .line 194
    .local v16, "outputBuffer":Ljava/nio/ByteBuffer;
    if-nez v16, :cond_6

    .line 195
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encoderOutputBuffer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    .line 202
    const-string v2, "VideoEncoderFromBuffer"

    const-string v4, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v4, 0x0

    iput v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 206
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_9

    .line 207
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMuxerStarted:Z

    if-nez v2, :cond_8

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v15

    .line 210
    .restart local v15    # "newFormat":Landroid/media/MediaFormat;
    const-string v2, "VideoEncoderFromBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encoder output format changed 2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2, v15}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mTrackIndex:I

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->start()V

    .line 213
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMuxerStarted:Z

    .line 217
    .end local v15    # "newFormat":Landroid/media/MediaFormat;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mTrackIndex:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    move-object/from16 v0, v16

    invoke-virtual {v2, v4, v0, v5}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 234
    const-string v2, "VideoEncoderFromBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes to muxer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_2

    .line 128
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
