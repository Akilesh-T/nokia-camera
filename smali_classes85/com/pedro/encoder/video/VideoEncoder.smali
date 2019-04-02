.class public Lcom/pedro/encoder/video/VideoEncoder;
.super Ljava/lang/Object;
.source "VideoEncoder.java"

# interfaces
.implements Lcom/pedro/encoder/input/video/GetCameraData;


# instance fields
.field private TAG:Ljava/lang/String;

.field private bitRate:I

.field private blackImage:[B

.field private formatVideoEncoder:Lcom/pedro/encoder/video/FormatVideoEncoder;

.field private fps:I

.field private getH264Data:Lcom/pedro/encoder/video/GetH264Data;

.field private hardwareRotation:Z

.field private height:I

.field private inputSurface:Landroid/view/Surface;

.field private mPresentTimeUs:J

.field private mime:Ljava/lang/String;

.field private queueColor:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private queueEncode:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private queueRotate:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private rotation:I

.field private running:Z

.field private sendBlackImage:Z

.field private spsPpsSetted:Z

.field private final sync:Ljava/lang/Object;

.field private thread:Ljava/lang/Thread;

.field private threadColor:Ljava/lang/Thread;

.field private threadRotate:Ljava/lang/Thread;

.field private videoEncoder:Landroid/media/MediaCodec;

.field private videoInfo:Landroid/media/MediaCodec$BufferInfo;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/pedro/encoder/video/GetH264Data;)V
    .locals 3
    .param p1, "getH264Data"    # Lcom/pedro/encoder/video/GetH264Data;

    .prologue
    const/16 v2, 0x1e

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "VideoEncoder"

    iput-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 38
    iput-boolean v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->running:Z

    .line 39
    iput-boolean v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->spsPpsSetted:Z

    .line 40
    iput-boolean v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->hardwareRotation:Z

    .line 45
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->queueEncode:Ljava/util/concurrent/BlockingQueue;

    .line 46
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->queueRotate:Ljava/util/concurrent/BlockingQueue;

    .line 47
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->queueColor:Ljava/util/concurrent/BlockingQueue;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->sync:Ljava/lang/Object;

    .line 51
    const-string v0, "video/avc"

    iput-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->mime:Ljava/lang/String;

    .line 52
    const/16 v0, 0x280

    iput v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->width:I

    .line 53
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->height:I

    .line 54
    iput v2, p0, Lcom/pedro/encoder/video/VideoEncoder;->fps:I

    .line 55
    const v0, 0x12c000

    iput v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->bitRate:I

    .line 56
    const/16 v0, 0x5a

    iput v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->rotation:I

    .line 57
    sget-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420Dynamical:Lcom/pedro/encoder/video/FormatVideoEncoder;

    iput-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->formatVideoEncoder:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 59
    iput-boolean v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->sendBlackImage:Z

    .line 63
    iput-object p1, p0, Lcom/pedro/encoder/video/VideoEncoder;->getH264Data:Lcom/pedro/encoder/video/GetH264Data;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->queueEncode:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pedro/encoder/video/VideoEncoder;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;
    .param p1, "x1"    # [B

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/pedro/encoder/video/VideoEncoder;->getDataFromEncoderAPI21([B)V

    return-void
.end method

.method static synthetic access$1000(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadRotate:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/pedro/encoder/video/VideoEncoder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->sendBlackImage:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/pedro/encoder/video/VideoEncoder;)[B
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->blackImage:[B

    return-object v0
.end method

.method static synthetic access$1400(Lcom/pedro/encoder/video/VideoEncoder;)Lcom/pedro/encoder/video/FormatVideoEncoder;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->formatVideoEncoder:Lcom/pedro/encoder/video/FormatVideoEncoder;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadColor:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec$BufferInfo;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoInfo:Landroid/media/MediaCodec$BufferInfo;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/pedro/encoder/video/VideoEncoder;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/pedro/encoder/video/VideoEncoder;)Lcom/pedro/encoder/video/GetH264Data;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->getH264Data:Lcom/pedro/encoder/video/GetH264Data;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/pedro/encoder/video/VideoEncoder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->spsPpsSetted:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/pedro/encoder/video/VideoEncoder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/pedro/encoder/video/VideoEncoder;->spsPpsSetted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/pedro/encoder/video/VideoEncoder;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;
    .param p1, "x1"    # [B

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/pedro/encoder/video/VideoEncoder;->getDataFromEncoder([B)V

    return-void
.end method

.method static synthetic access$2000(Lcom/pedro/encoder/video/VideoEncoder;Ljava/nio/ByteBuffer;I)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/pedro/encoder/video/VideoEncoder;->decodeSpsPpsFromBuffer(Ljava/nio/ByteBuffer;I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/pedro/encoder/video/VideoEncoder;)J
    .locals 2
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->mPresentTimeUs:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->queueRotate:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pedro/encoder/video/VideoEncoder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->hardwareRotation:Z

    return v0
.end method

.method static synthetic access$600(Lcom/pedro/encoder/video/VideoEncoder;)I
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->width:I

    return v0
.end method

.method static synthetic access$700(Lcom/pedro/encoder/video/VideoEncoder;)I
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->height:I

    return v0
.end method

.method static synthetic access$800(Lcom/pedro/encoder/video/VideoEncoder;)I
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->rotation:I

    return v0
.end method

.method static synthetic access$900(Lcom/pedro/encoder/video/VideoEncoder;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/video/VideoEncoder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->queueColor:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private chooseColorDynamically(Landroid/media/MediaCodecInfo;)Lcom/pedro/encoder/video/FormatVideoEncoder;
    .locals 5
    .param p1, "mediaCodecInfo"    # Landroid/media/MediaCodecInfo;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->mime:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    iget-object v2, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    aget v0, v2, v1

    .line 135
    .local v0, "color":I
    sget-object v4, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    invoke-virtual {v4}, Lcom/pedro/encoder/video/FormatVideoEncoder;->getFormatCodec()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 136
    sget-object v1, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 143
    .end local v0    # "color":I
    :goto_1
    return-object v1

    .line 137
    .restart local v0    # "color":I
    :cond_0
    sget-object v4, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420SEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    invoke-virtual {v4}, Lcom/pedro/encoder/video/FormatVideoEncoder;->getFormatCodec()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 138
    sget-object v1, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420SEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    goto :goto_1

    .line 139
    :cond_1
    sget-object v4, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PACKEDPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    invoke-virtual {v4}, Lcom/pedro/encoder/video/FormatVideoEncoder;->getFormatCodec()I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 140
    sget-object v1, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PACKEDPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    goto :goto_1

    .line 134
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "color":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private chooseVideoEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 16
    .param p1, "mime"    # Ljava/lang/String;

    .prologue
    .line 539
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 540
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 541
    invoke-static {v4}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 542
    .local v5, "mci":Landroid/media/MediaCodecInfo;
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v8

    if-nez v8, :cond_1

    .line 540
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 545
    :cond_1
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    .line 546
    .local v7, "types":[Ljava/lang/String;
    array-length v10, v7

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v10, :cond_0

    aget-object v6, v7, v9

    .line 547
    .local v6, "type":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 548
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pedro/encoder/video/VideoEncoder;->TAG:Ljava/lang/String;

    const-string v11, "videoEncoder %s type supported: %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    .line 550
    .local v1, "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    iget-object v11, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v12, v11

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v12, :cond_4

    aget v2, v11, v8

    .line 551
    .local v2, "color":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pedro/encoder/video/VideoEncoder;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Color supported: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    sget-object v13, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    invoke-virtual {v13}, Lcom/pedro/encoder/video/FormatVideoEncoder;->getFormatCodec()I

    move-result v13

    if-eq v2, v13, :cond_2

    sget-object v13, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420SEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 554
    invoke-virtual {v13}, Lcom/pedro/encoder/video/FormatVideoEncoder;->getFormatCodec()I

    move-result v13

    if-eq v2, v13, :cond_2

    sget-object v13, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PACKEDPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 555
    invoke-virtual {v13}, Lcom/pedro/encoder/video/FormatVideoEncoder;->getFormatCodec()I

    move-result v13

    if-ne v2, v13, :cond_3

    .line 562
    .end local v1    # "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "color":I
    .end local v5    # "mci":Landroid/media/MediaCodecInfo;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "types":[Ljava/lang/String;
    :cond_2
    :goto_3
    return-object v5

    .line 550
    .restart local v1    # "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v2    # "color":I
    .restart local v5    # "mci":Landroid/media/MediaCodecInfo;
    .restart local v6    # "type":Ljava/lang/String;
    .restart local v7    # "types":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 546
    .end local v1    # "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "color":I
    :cond_4
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_1

    .line 562
    .end local v5    # "mci":Landroid/media/MediaCodecInfo;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "types":[Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private chooseVideoEncoderAPI21(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 18
    .param p1, "mime"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 509
    new-instance v5, Landroid/media/MediaCodecList;

    const/4 v8, 0x1

    invoke-direct {v5, v8}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 510
    .local v5, "mediaCodecList":Landroid/media/MediaCodecList;
    invoke-virtual {v5}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 511
    .local v4, "mediaCodecInfos":[Landroid/media/MediaCodecInfo;
    array-length v11, v4

    const/4 v8, 0x0

    move v10, v8

    :goto_0
    if-ge v10, v11, :cond_5

    aget-object v3, v4, v10

    .line 512
    .local v3, "mci":Landroid/media/MediaCodecInfo;
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v8

    if-nez v8, :cond_1

    .line 511
    :cond_0
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    goto :goto_0

    .line 515
    :cond_1
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    .line 516
    .local v7, "types":[Ljava/lang/String;
    array-length v12, v7

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v12, :cond_0

    aget-object v6, v7, v9

    .line 517
    .local v6, "type":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 518
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pedro/encoder/video/VideoEncoder;->TAG:Ljava/lang/String;

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

    .line 519
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    .line 520
    .local v1, "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    iget-object v13, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v14, v13

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v14, :cond_4

    aget v2, v13, v8

    .line 521
    .local v2, "color":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pedro/encoder/video/VideoEncoder;->TAG:Ljava/lang/String;

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

    .line 523
    sget-object v15, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    invoke-virtual {v15}, Lcom/pedro/encoder/video/FormatVideoEncoder;->getFormatCodec()I

    move-result v15

    if-eq v2, v15, :cond_2

    sget-object v15, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420SEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 524
    invoke-virtual {v15}, Lcom/pedro/encoder/video/FormatVideoEncoder;->getFormatCodec()I

    move-result v15

    if-eq v2, v15, :cond_2

    sget-object v15, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PACKEDPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 525
    invoke-virtual {v15}, Lcom/pedro/encoder/video/FormatVideoEncoder;->getFormatCodec()I

    move-result v15

    if-ne v2, v15, :cond_3

    .line 532
    .end local v1    # "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "color":I
    .end local v3    # "mci":Landroid/media/MediaCodecInfo;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "types":[Ljava/lang/String;
    :cond_2
    :goto_3
    return-object v3

    .line 520
    .restart local v1    # "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v2    # "color":I
    .restart local v3    # "mci":Landroid/media/MediaCodecInfo;
    .restart local v6    # "type":Ljava/lang/String;
    .restart local v7    # "types":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 516
    .end local v1    # "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "color":I
    :cond_4
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_1

    .line 532
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

    .line 603
    const/4 v3, 0x0

    .local v3, "mSPS":[B
    const/4 v2, 0x0

    .line 604
    .local v2, "mPPS":[B
    new-array v0, p2, [B

    .line 605
    .local v0, "csd":[B
    invoke-virtual {p1, v0, v9, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 606
    const/4 v1, 0x0

    .line 607
    .local v1, "i":I
    const/4 v5, -0x1

    .line 608
    .local v5, "spsIndex":I
    const/4 v4, -0x1

    .line 609
    .local v4, "ppsIndex":I
    :goto_0
    add-int/lit8 v6, p2, -0x4

    if-ge v1, v6, :cond_2

    .line 610
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

    .line 611
    if-ne v5, v8, :cond_1

    .line 612
    move v5, v1

    .line 618
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    :cond_1
    move v4, v1

    .line 620
    :cond_2
    if-eq v5, v8, :cond_3

    if-eq v4, v8, :cond_3

    .line 621
    new-array v3, v4, [B

    .line 622
    invoke-static {v0, v5, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    sub-int v6, p2, v4

    new-array v2, v6, [B

    .line 624
    sub-int v6, p2, v4

    invoke-static {v0, v4, v2, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 627
    new-instance v6, Landroid/util/Pair;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 629
    :goto_1
    return-object v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private getDataFromEncoder([B)V
    .locals 18
    .param p1, "buffer"    # [B

    .prologue
    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 464
    .local v11, "inputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 466
    .local v14, "outputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 467
    .local v3, "inBufferIndex":I
    if-ltz v3, :cond_0

    .line 468
    aget-object v9, v11, v3

    .line 469
    .local v9, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 470
    const/4 v2, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 471
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v16, 0x3e8

    div-long v4, v4, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pedro/encoder/video/VideoEncoder;->mPresentTimeUs:J

    move-wide/from16 v16, v0

    sub-long v6, v4, v16

    .line 472
    .local v6, "pts":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    array-length v5, v0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 476
    .end local v6    # "pts":J
    .end local v9    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pedro/encoder/video/VideoEncoder;->videoInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v4, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v13

    .line 477
    .local v13, "outBufferIndex":I
    const/4 v2, -0x2

    if-ne v13, v2, :cond_1

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v12

    .line 479
    .local v12, "mediaFormat":Landroid/media/MediaFormat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/video/VideoEncoder;->getH264Data:Lcom/pedro/encoder/video/GetH264Data;

    invoke-interface {v2, v12}, Lcom/pedro/encoder/video/GetH264Data;->onVideoFormat(Landroid/media/MediaFormat;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/video/VideoEncoder;->getH264Data:Lcom/pedro/encoder/video/GetH264Data;

    const-string v4, "csd-0"

    invoke-virtual {v12, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    const-string v5, "csd-1"

    .line 481
    invoke-virtual {v12, v5}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 480
    invoke-interface {v2, v4, v5}, Lcom/pedro/encoder/video/GetH264Data;->onSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 482
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pedro/encoder/video/VideoEncoder;->spsPpsSetted:Z

    goto :goto_0

    .line 483
    .end local v12    # "mediaFormat":Landroid/media/MediaFormat;
    :cond_1
    if-ltz v13, :cond_3

    .line 485
    aget-object v9, v14, v13

    .line 486
    .restart local v9    # "bb":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/video/VideoEncoder;->videoInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 487
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pedro/encoder/video/VideoEncoder;->spsPpsSetted:Z

    if-nez v2, :cond_2

    .line 489
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pedro/encoder/video/VideoEncoder;->videoInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/pedro/encoder/video/VideoEncoder;->decodeSpsPpsFromBuffer(Ljava/nio/ByteBuffer;I)Landroid/util/Pair;

    move-result-object v10

    .line 490
    .local v10, "buffers":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;>;"
    if-eqz v10, :cond_2

    .line 491
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pedro/encoder/video/VideoEncoder;->getH264Data:Lcom/pedro/encoder/video/GetH264Data;

    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    iget-object v4, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-interface {v5, v2, v4}, Lcom/pedro/encoder/video/GetH264Data;->onSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 492
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pedro/encoder/video/VideoEncoder;->spsPpsSetted:Z

    .line 496
    .end local v10    # "buffers":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/video/VideoEncoder;->getH264Data:Lcom/pedro/encoder/video/GetH264Data;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pedro/encoder/video/VideoEncoder;->videoInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v2, v9, v4}, Lcom/pedro/encoder/video/GetH264Data;->getH264Data(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v2, v13, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 502
    .end local v9    # "bb":Ljava/nio/ByteBuffer;
    :cond_3
    return-void
.end method

.method private getDataFromEncoderAPI21([B)V
    .locals 14
    .param p1, "buffer"    # [B
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 427
    .local v1, "inBufferIndex":I
    if-ltz v1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 429
    .local v7, "bb":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    array-length v2, p1

    invoke-virtual {v7, p1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 430
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v2, v12

    iget-wide v12, p0, Lcom/pedro/encoder/video/VideoEncoder;->mPresentTimeUs:J

    sub-long v4, v2, v12

    .line 431
    .local v4, "pts":J
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 434
    .end local v4    # "pts":J
    .end local v7    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v12, 0x0

    invoke-virtual {v0, v2, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10

    .line 435
    .local v10, "outBufferIndex":I
    const/4 v0, -0x2

    if-ne v10, v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v9

    .line 437
    .local v9, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->getH264Data:Lcom/pedro/encoder/video/GetH264Data;

    invoke-interface {v0, v9}, Lcom/pedro/encoder/video/GetH264Data;->onVideoFormat(Landroid/media/MediaFormat;)V

    .line 438
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->getH264Data:Lcom/pedro/encoder/video/GetH264Data;

    const-string v2, "csd-0"

    invoke-virtual {v9, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v3, "csd-1"

    .line 439
    invoke-virtual {v9, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 438
    invoke-interface {v0, v2, v3}, Lcom/pedro/encoder/video/GetH264Data;->onSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->spsPpsSetted:Z

    goto :goto_0

    .line 441
    .end local v9    # "mediaFormat":Landroid/media/MediaFormat;
    :cond_1
    if-ltz v10, :cond_3

    .line 443
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v10}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 444
    .restart local v7    # "bb":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 445
    iget-boolean v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->spsPpsSetted:Z

    if-nez v0, :cond_2

    .line 447
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-direct {p0, v0, v2}, Lcom/pedro/encoder/video/VideoEncoder;->decodeSpsPpsFromBuffer(Ljava/nio/ByteBuffer;I)Landroid/util/Pair;

    move-result-object v8

    .line 448
    .local v8, "buffers":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;>;"
    if-eqz v8, :cond_2

    .line 449
    iget-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->getH264Data:Lcom/pedro/encoder/video/GetH264Data;

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v2, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-interface {v3, v0, v2}, Lcom/pedro/encoder/video/GetH264Data;->onSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->spsPpsSetted:Z

    .line 454
    .end local v8    # "buffers":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;>;"
    :cond_2
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->getH264Data:Lcom/pedro/encoder/video/GetH264Data;

    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v7, v2}, Lcom/pedro/encoder/video/GetH264Data;->getH264Data(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 455
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 460
    .end local v7    # "bb":Ljava/nio/ByteBuffer;
    :cond_3
    return-void
.end method

.method private getDataFromSurface()V
    .locals 2

    .prologue
    .line 385
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pedro/encoder/video/VideoEncoder$5;

    invoke-direct {v1, p0}, Lcom/pedro/encoder/video/VideoEncoder$5;-><init>(Lcom/pedro/encoder/video/VideoEncoder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->thread:Ljava/lang/Thread;

    .line 421
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 422
    return-void
.end method

.method private getDataFromSurfaceAPI21()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 346
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pedro/encoder/video/VideoEncoder$4;

    invoke-direct {v1, p0}, Lcom/pedro/encoder/video/VideoEncoder$4;-><init>(Lcom/pedro/encoder/video/VideoEncoder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->thread:Ljava/lang/Thread;

    .line 381
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 382
    return-void
.end method

.method private prepareBlackImage()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 566
    iget v4, p0, Lcom/pedro/encoder/video/VideoEncoder;->width:I

    iget v5, p0, Lcom/pedro/encoder/video/VideoEncoder;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 567
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 568
    .local v8, "canvas":Landroid/graphics/Canvas;
    const/high16 v4, -0x1000000

    invoke-virtual {v8, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 569
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 570
    .local v3, "x":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 571
    .local v7, "y":I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .local v1, "data":[I
    move v4, v2

    move v5, v2

    move v6, v3

    .line 572
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 573
    iget v2, p0, Lcom/pedro/encoder/video/VideoEncoder;->width:I

    iget v4, p0, Lcom/pedro/encoder/video/VideoEncoder;->height:I

    invoke-static {v1, v2, v4}, Lcom/pedro/encoder/utils/YUVUtil;->ARGBtoYUV420SemiPlanar([III)[B

    move-result-object v2

    iput-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder;->blackImage:[B

    .line 574
    return-void
.end method


# virtual methods
.method public getFps()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->fps:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->height:I

    return v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->inputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->rotation:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->width:I

    return v0
.end method

.method public inputYUVData([B)V
    .locals 4
    .param p1, "buffer"    # [B

    .prologue
    .line 333
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder;->sync:Ljava/lang/Object;

    monitor-enter v2

    .line 334
    :try_start_0
    iget-boolean v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 336
    :try_start_1
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->queueRotate:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 342
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->TAG:Ljava/lang/String;

    const-string v3, "frame discarded"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isHardwareRotation()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->hardwareRotation:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->running:Z

    return v0
.end method

.method public prepareVideoEncoder()Z
    .locals 8

    .prologue
    .line 150
    iget v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->width:I

    iget v2, p0, Lcom/pedro/encoder/video/VideoEncoder;->height:I

    iget v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->fps:I

    iget v4, p0, Lcom/pedro/encoder/video/VideoEncoder;->bitRate:I

    iget v5, p0, Lcom/pedro/encoder/video/VideoEncoder;->rotation:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/pedro/encoder/video/VideoEncoder;->formatVideoEncoder:Lcom/pedro/encoder/video/FormatVideoEncoder;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/pedro/encoder/video/VideoEncoder;->prepareVideoEncoder(IIIIIZLcom/pedro/encoder/video/FormatVideoEncoder;)Z

    move-result v0

    return v0
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
    .line 71
    iput p1, p0, Lcom/pedro/encoder/video/VideoEncoder;->width:I

    .line 72
    iput p2, p0, Lcom/pedro/encoder/video/VideoEncoder;->height:I

    .line 73
    iput p3, p0, Lcom/pedro/encoder/video/VideoEncoder;->fps:I

    .line 74
    iput p4, p0, Lcom/pedro/encoder/video/VideoEncoder;->bitRate:I

    .line 75
    iput p5, p0, Lcom/pedro/encoder/video/VideoEncoder;->rotation:I

    .line 76
    iput-boolean p6, p0, Lcom/pedro/encoder/video/VideoEncoder;->hardwareRotation:Z

    .line 77
    iput-object p7, p0, Lcom/pedro/encoder/video/VideoEncoder;->formatVideoEncoder:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 79
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 80
    iget-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->mime:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/pedro/encoder/video/VideoEncoder;->chooseVideoEncoderAPI21(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 85
    .local v1, "encoder":Landroid/media/MediaCodecInfo;
    :goto_0
    if-eqz v1, :cond_1

    .line 86
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    .line 87
    iget-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->formatVideoEncoder:Lcom/pedro/encoder/video/FormatVideoEncoder;

    sget-object v4, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420Dynamical:Lcom/pedro/encoder/video/FormatVideoEncoder;

    if-ne v3, v4, :cond_2

    .line 88
    invoke-direct {p0, v1}, Lcom/pedro/encoder/video/VideoEncoder;->chooseColorDynamically(Landroid/media/MediaCodecInfo;)Lcom/pedro/encoder/video/FormatVideoEncoder;

    move-result-object v3

    iput-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->formatVideoEncoder:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 89
    iget-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->formatVideoEncoder:Lcom/pedro/encoder/video/FormatVideoEncoder;

    if-nez v3, :cond_2

    .line 90
    iget-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->TAG:Ljava/lang/String;

    const-string v4, "YUV420 dynamical choose failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    const/4 v3, 0x0

    .line 129
    :goto_1
    return v3

    .line 82
    .end local v1    # "encoder":Landroid/media/MediaCodecInfo;
    :cond_0
    iget-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->mime:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/pedro/encoder/video/VideoEncoder;->chooseVideoEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .restart local v1    # "encoder":Landroid/media/MediaCodecInfo;
    goto :goto_0

    .line 95
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->TAG:Ljava/lang/String;

    const-string v4, "valid encoder not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v3, 0x0

    goto :goto_1

    .line 101
    :cond_2
    if-nez p6, :cond_6

    const/16 v3, 0x5a

    if-eq p5, v3, :cond_3

    const/16 v3, 0x10e

    if-ne p5, v3, :cond_6

    .line 102
    :cond_3
    iget-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->mime:Ljava/lang/String;

    invoke-static {v3, p2, p1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 106
    .local v2, "videoFormat":Landroid/media/MediaFormat;
    :goto_2
    const-string v3, "color-format"

    iget-object v4, p0, Lcom/pedro/encoder/video/VideoEncoder;->formatVideoEncoder:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 107
    invoke-virtual {v4}, Lcom/pedro/encoder/video/FormatVideoEncoder;->getFormatCodec()I

    move-result v4

    .line 106
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 108
    const-string v3, "max-input-size"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 109
    const-string v3, "bitrate"

    invoke-virtual {v2, v3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 110
    const-string v3, "frame-rate"

    invoke-virtual {v2, v3, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 111
    const-string v3, "i-frame-interval"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 112
    if-eqz p6, :cond_4

    .line 113
    const-string v3, "rotation-degrees"

    invoke-virtual {v2, v3, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 115
    :cond_4
    iget-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 116
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->running:Z

    .line 117
    sget-object v3, Lcom/pedro/encoder/video/FormatVideoEncoder;->SURFACE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    if-ne p7, v3, :cond_5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_5

    .line 119
    iget-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v3

    iput-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->inputSurface:Landroid/view/Surface;

    .line 121
    :cond_5
    invoke-direct {p0}, Lcom/pedro/encoder/video/VideoEncoder;->prepareBlackImage()V

    .line 122
    const/4 v3, 0x1

    goto :goto_1

    .line 104
    .end local v2    # "videoFormat":Landroid/media/MediaFormat;
    :cond_6
    iget-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->mime:Ljava/lang/String;

    invoke-static {v3, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .restart local v2    # "videoFormat":Landroid/media/MediaFormat;
    goto :goto_2

    .line 123
    .end local v2    # "videoFormat":Landroid/media/MediaFormat;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/pedro/encoder/video/VideoEncoder;->TAG:Ljava/lang/String;

    const-string v4, "create videoEncoder failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    const/4 v3, 0x0

    goto :goto_1

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 129
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "inputSurface"    # Landroid/view/Surface;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/pedro/encoder/video/VideoEncoder;->inputSurface:Landroid/view/Surface;

    .line 174
    return-void
.end method

.method public setVideoBitrateOnFly(I)V
    .locals 4
    .param p1, "bitrate"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/pedro/encoder/video/VideoEncoder;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iput p1, p0, Lcom/pedro/encoder/video/VideoEncoder;->bitRate:I

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "video-bitrate"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder;->TAG:Ljava/lang/String;

    const-string v3, "encoder need be running"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 201
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->spsPpsSetted:Z

    .line 204
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/pedro/encoder/video/VideoEncoder;->mPresentTimeUs:J

    .line 205
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 207
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->formatVideoEncoder:Lcom/pedro/encoder/video/FormatVideoEncoder;

    sget-object v2, Lcom/pedro/encoder/video/FormatVideoEncoder;->SURFACE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    if-ne v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_1

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/pedro/encoder/video/VideoEncoder;->getDataFromSurfaceAPI21()V

    .line 280
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->running:Z

    .line 284
    :goto_1
    monitor-exit v1

    .line 285
    return-void

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/pedro/encoder/video/VideoEncoder;->getDataFromSurface()V

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 216
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->rotation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->rotation:I

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->rotation:I

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->rotation:I

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_2

    .line 217
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "rotation value unsupported, select value 0, 90, 180 or 270"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/pedro/encoder/video/VideoEncoder$1;

    invoke-direct {v2, p0}, Lcom/pedro/encoder/video/VideoEncoder$1;-><init>(Lcom/pedro/encoder/video/VideoEncoder;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->thread:Ljava/lang/Thread;

    .line 237
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/pedro/encoder/video/VideoEncoder$2;

    invoke-direct {v2, p0}, Lcom/pedro/encoder/video/VideoEncoder$2;-><init>(Lcom/pedro/encoder/video/VideoEncoder;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadRotate:Ljava/lang/Thread;

    .line 257
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/pedro/encoder/video/VideoEncoder$3;

    invoke-direct {v2, p0}, Lcom/pedro/encoder/video/VideoEncoder$3;-><init>(Lcom/pedro/encoder/video/VideoEncoder;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadColor:Ljava/lang/Thread;

    .line 276
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 277
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadRotate:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 278
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadColor:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "VideoEncoder need be prepared, VideoEncoder not enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public startSendBlackImage()V
    .locals 4

    .prologue
    .line 577
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pedro/encoder/video/VideoEncoder;->sendBlackImage:Z

    .line 578
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/pedro/encoder/video/VideoEncoder;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 581
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "video-bitrate"

    const v3, 0x19000

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 583
    :try_start_0
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 584
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 585
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder;->TAG:Ljava/lang/String;

    const-string v3, "encoder need be running"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 288
    iget-object v2, p0, Lcom/pedro/encoder/video/VideoEncoder;->sync:Ljava/lang/Object;

    monitor-enter v2

    .line 289
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->running:Z

    .line 290
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :try_start_1
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->thread:Ljava/lang/Thread;

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadRotate:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadRotate:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    :try_start_3
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadRotate:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    :goto_1
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadRotate:Ljava/lang/Thread;

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadColor:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadColor:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 313
    :try_start_5
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadColor:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 317
    :goto_2
    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadColor:Ljava/lang/Thread;

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_3

    .line 320
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 321
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 322
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->videoEncoder:Landroid/media/MediaCodec;

    .line 324
    :cond_3
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->queueEncode:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 325
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->queueRotate:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 326
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->queueColor:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 327
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->spsPpsSetted:Z

    .line 328
    monitor-exit v2

    .line 329
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 328
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 304
    :catch_1
    move-exception v0

    .line 305
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_7
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadRotate:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 314
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 315
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/pedro/encoder/video/VideoEncoder;->threadColor:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public stopSendBlackImage()V
    .locals 2

    .prologue
    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->sendBlackImage:Z

    .line 594
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 595
    iget v0, p0, Lcom/pedro/encoder/video/VideoEncoder;->bitRate:I

    invoke-virtual {p0, v0}, Lcom/pedro/encoder/video/VideoEncoder;->setVideoBitrateOnFly(I)V

    .line 597
    :cond_0
    return-void
.end method
