.class public Lcom/laifeng/sopcastsdk/mediacodec/VideoMediaCodec;
.super Ljava/lang/Object;
.source "VideoMediaCodec.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVideoMediaCodec(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)Landroid/media/MediaCodec;
    .locals 9
    .param p0, "videoConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .prologue
    const/4 v8, 0x1

    .line 26
    iget v6, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->width:I

    invoke-static {v6}, Lcom/laifeng/sopcastsdk/mediacodec/VideoMediaCodec;->getVideoSize(I)I

    move-result v5

    .line 27
    .local v5, "videoWidth":I
    iget v6, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->height:I

    invoke-static {v6}, Lcom/laifeng/sopcastsdk/mediacodec/VideoMediaCodec;->getVideoSize(I)I

    move-result v4

    .line 28
    .local v4, "videoHeight":I
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->mime:Ljava/lang/String;

    invoke-static {v6, v5, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 29
    .local v1, "format":Landroid/media/MediaFormat;
    const-string v6, "color-format"

    const v7, 0x7f000789

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 31
    const-string v6, "bitrate"

    iget v7, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->maxBps:I

    mul-int/lit16 v7, v7, 0x400

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 32
    iget v2, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->fps:I

    .line 34
    .local v2, "fps":I
    invoke-static {}, Lcom/laifeng/sopcastsdk/blacklist/BlackListHelper;->deviceInFpsBlacklisted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 35
    const-string v6, "SopCast"

    const-string v7, "Device in fps setting black list, so set mediacodec fps 15"

    invoke-static {v6, v7}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/16 v2, 0xf

    .line 38
    :cond_0
    const-string v6, "frame-rate"

    invoke-virtual {v1, v6, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 39
    const-string v6, "i-frame-interval"

    iget v7, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->ifi:I

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 40
    const-string v6, "bitrate-mode"

    invoke-virtual {v1, v6, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 41
    const-string v6, "complexity"

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 42
    const/4 v3, 0x0

    .line 45
    .local v3, "mediaCodec":Landroid/media/MediaCodec;
    :try_start_0
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->mime:Ljava/lang/String;

    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    .line 46
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v3, v1, v6, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_1
    :goto_0
    return-object v3

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    if-eqz v3, :cond_1

    .line 50
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 51
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 52
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getVideoSize(I)I
    .locals 6
    .param p0, "size"    # I

    .prologue
    .line 61
    int-to-double v2, p0

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 62
    .local v0, "multiple":I
    mul-int/lit8 v1, v0, 0x10

    return v1
.end method
