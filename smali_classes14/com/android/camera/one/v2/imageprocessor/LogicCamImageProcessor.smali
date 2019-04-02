.class public Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;
.super Ljava/lang/Object;
.source "LogicCamImageProcessor.java"

# interfaces
.implements Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
.implements Lcom/google/common/util/concurrent/FutureCallback;
.implements Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;",
        ">;",
        "Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

.field private final mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

.field private mConvertedImgCount:I

.field private final mImageInfo:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfinite:Z

.field private final mLogicImageProcessor:Lcom/android/camera/one/v2/imageprocessor/LogicImageProcessor;

.field private final mProfile:Lcom/android/camera/stats/profiler/Profile;

.field private final mRequiredImgNum:I

.field private final mService:Ljava/util/concurrent/ExecutorService;

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTargetCaptureSize:Lcom/android/camera/util/Size;

.field private final mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

.field private subDepthType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "LogicCamImgProcessor"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/LogicImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;ILcom/android/camera/util/Size;IILandroid/graphics/Point;Lcom/android/camera/stats/profiler/Profile;)V
    .locals 5
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "logicImageProcessor"    # Lcom/android/camera/one/v2/imageprocessor/LogicImageProcessor;
    .param p3, "listener"    # Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;
    .param p4, "requiredImgNum"    # I
    .param p5, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p6, "horizontalViewAngle"    # I
    .param p7, "blurIntensity"    # I
    .param p8, "focusPosiiton"    # Landroid/graphics/Point;
    .param p9, "guard"    # Lcom/android/camera/stats/profiler/Profile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v4, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mConvertedImgCount:I

    .line 90
    iput v4, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->subDepthType:I

    .line 100
    iput-object p9, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    .line 104
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 105
    iput-boolean v4, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mInfinite:Z

    .line 106
    iput p4, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mRequiredImgNum:I

    .line 107
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 108
    iput-object p5, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    .line 109
    new-instance v0, Lcom/android/camera/mpo/Bokeh_Info;

    invoke-direct {v0}, Lcom/android/camera/mpo/Bokeh_Info;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    .line 110
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const-wide/32 v2, 0x30001

    iput-wide v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBokehType:J

    .line 111
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    int-to-long v2, p6

    iput-wide v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mFov:J

    .line 112
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    int-to-long v2, p7

    iput-wide v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBlurLevel:J

    .line 113
    if-eqz p8, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget v1, p8, Landroid/graphics/Point;->x:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mTouchX:J

    .line 115
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget v1, p8, Landroid/graphics/Point;->y:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mTouchY:J

    .line 117
    :cond_0
    iput v4, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mConvertedImgCount:I

    .line 119
    iput-object p2, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mLogicImageProcessor:Lcom/android/camera/one/v2/imageprocessor/LogicImageProcessor;

    .line 120
    iput-object p3, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    .line 121
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mImageInfo:Lcom/google/common/util/concurrent/SettableFuture;

    .line 122
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "Logic_ImageProcessor created"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mImageInfo:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static convertBitmapToJpeg(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 665
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 666
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5f

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 667
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private createMPO(ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 13
    .param p1, "index"    # I
    .param p2, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :try_start_0
    invoke-interface/range {p3 .. p3}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    sget-object v1, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->AS_BOKEH_DEPTH_Format:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 257
    .local v8, "depthType":Ljava/lang/Integer;
    if-eqz v8, :cond_0

    .line 258
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->subDepthType:I

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->subDepthType:I

    const/16 v2, 0x11

    if-ne v0, v2, :cond_5

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/android/camera/mpo/Bokeh_Info;->isMpoType:Z

    .line 261
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBokehInfo.isMpoType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-boolean v2, v2, Lcom/android/camera/mpo/Bokeh_Info;->isMpoType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 269
    .end local v8    # "depthType":Ljava/lang/Integer;
    :goto_1
    :try_start_1
    invoke-interface/range {p3 .. p3}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    sget-object v1, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->AS_BOKEH_DEPTH_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 270
    .local v11, "subDepthSize":Ljava/lang/Integer;
    if-eqz v11, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/mpo/Bokeh_Info;->useVendorTag:Z

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-boolean v0, v0, Lcom/android/camera/mpo/Bokeh_Info;->isMpoType:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-virtual {v0}, Lcom/android/camera/mpo/Bokeh_Info;->hasTouchPos()Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mTouchX:J

    .line 279
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mTouchY:J

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "depthSize of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 283
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    .line 284
    invoke-interface/range {p3 .. p3}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    sget-object v1, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->AS_BOKEH_DEPTH_DATA:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 285
    .local v7, "depthData":[B
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AS_BOKEH_DEPTH_DATA get : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 286
    if-eqz v7, :cond_4

    .line 287
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v0, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v0, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    array-length v10, v0

    .line 288
    .local v10, "offset":I
    :goto_2
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v10

    new-array v12, v0, [B

    .line 289
    .local v12, "tmpDepthData":[B
    if-lez v10, :cond_3

    .line 290
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v0, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v12, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "copy mBokehInfo.mBufferData done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 293
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v7, v0, v12, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "copy tmpDepthData done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iput-object v12, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    .line 296
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDepthData updated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v2, v2, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 307
    .end local v7    # "depthData":[B
    .end local v10    # "offset":I
    .end local v11    # "subDepthSize":Ljava/lang/Integer;
    .end local v12    # "tmpDepthData":[B
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mLogicImageProcessor:Lcom/android/camera/one/v2/imageprocessor/LogicImageProcessor;

    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v6, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$2;

    invoke-direct {v6, p0}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$2;-><init>(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)V

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object v5, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/camera/one/v2/imageprocessor/LogicImageProcessor;->convertImageAndProcess(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 327
    return-void

    .line 260
    .restart local v8    # "depthType":Ljava/lang/Integer;
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 262
    .end local v8    # "depthType":Ljava/lang/Integer;
    :catch_0
    move-exception v9

    .line 263
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "can not find key:com.arcsoft.node.capturebokeh.DepdataFormat,so isMpoType = true"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/mpo/Bokeh_Info;->isMpoType:Z

    goto/16 :goto_1

    .line 265
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v9

    .line 266
    .local v9, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDepthFormat>Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 287
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "depthData":[B
    .restart local v11    # "subDepthSize":Ljava/lang/Integer;
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 299
    .end local v7    # "depthData":[B
    .end local v11    # "subDepthSize":Ljava/lang/Integer;
    :catch_2
    move-exception v9

    .line 300
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "can not find tag"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/mpo/Bokeh_Info;->useVendorTag:Z

    goto :goto_3

    .line 302
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v9

    .line 303
    .local v9, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private getJpegData(Landroid/media/Image;)[B
    .locals 4
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 331
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v1, v2, [B

    .line 332
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 333
    return-object v1
.end method

.method private getShort([BI)S
    .locals 2
    .param p1, "b"    # [B
    .param p2, "index"    # I

    .prologue
    .line 337
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private openNewStream(Ljava/io/ByteArrayOutputStream;)[B
    .locals 1
    .param p1, "stream"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 370
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 371
    .local v0, "bytes":[B
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 372
    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 397
    :goto_0
    return-void

    .line 386
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "abort"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$3;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$3;-><init>(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 18
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "index"    # I
    .param p3, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/CameraType;",
            "I",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p4, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->generateMPOinHAL()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getOriginImage()Landroid/media/Image;

    move-result-object v13

    .line 130
    .local v13, "image":Landroid/media/Image;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v11

    .line 131
    .local v11, "bytes":[B
    invoke-virtual {v13}, Landroid/media/Image;->getWidth()I

    move-result v6

    .line 132
    .local v6, "width":I
    invoke-virtual {v13}, Landroid/media/Image;->getHeight()I

    move-result v7

    .line 133
    .local v7, "height":I
    invoke-static {v11}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v9

    .line 134
    .local v9, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-virtual {v13}, Landroid/media/Image;->close()V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mImageInfo:Lcom/google/common/util/concurrent/SettableFuture;

    move-object/from16 v16, v0

    new-instance v4, Lcom/android/camera/processing/imagebackend/ImageInfo;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v5

    const/16 v8, 0x5a

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/processing/imagebackend/ImageInfo;-><init>(Lcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 138
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->generateXmpFromMpo([B)Ljava/util/ArrayList;

    move-result-object v10

    .line 139
    .local v10, "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/camera/mpo/Bokeh_Info;->isMpoType:Z

    .line 141
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iput-object v4, v5, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    .line 142
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iput-object v4, v5, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    .line 143
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iput-object v4, v5, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    .line 144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/camera/mpo/Bokeh_Info;->mSuccess:Z

    .line 145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/camera/mpo/Bokeh_Info;->useVendorTag:Z

    .line 146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;)V

    .line 152
    :goto_0
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 181
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v9    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v10    # "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v11    # "bytes":[B
    .end local v13    # "image":Landroid/media/Image;
    :goto_1
    return-void

    .line 149
    .restart local v6    # "width":I
    .restart local v7    # "height":I
    .restart local v9    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v10    # "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v11    # "bytes":[B
    .restart local v13    # "image":Landroid/media/Image;
    :cond_0
    sget-object v4, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bokeh fail! size:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    const/16 v5, 0x100

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v5, v4}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->onProcessDone(III[B)V

    goto :goto_0

    .line 153
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v9    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v10    # "bokehBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v11    # "bytes":[B
    .end local v13    # "image":Landroid/media/Image;
    :cond_1
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->generateMTKBokehinHAL()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 154
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getOriginImage()Landroid/media/Image;

    move-result-object v13

    .line 155
    .restart local v13    # "image":Landroid/media/Image;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v11

    .line 156
    .restart local v11    # "bytes":[B
    invoke-virtual {v13}, Landroid/media/Image;->getWidth()I

    move-result v6

    .line 157
    .restart local v6    # "width":I
    invoke-virtual {v13}, Landroid/media/Image;->getHeight()I

    move-result v7

    .line 158
    .restart local v7    # "height":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 159
    .local v14, "starttime":J
    new-instance v12, Lcom/android/camera/gdepth/MTKBokehDataFilter;

    const/4 v4, 0x1

    invoke-direct {v12, v11, v4}, Lcom/android/camera/gdepth/MTKBokehDataFilter;-><init>([BZ)V

    .line 160
    .local v12, "filter":Lcom/android/camera/gdepth/MTKBokehDataFilter;
    invoke-static {v11}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v9

    .line 161
    .restart local v9    # "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-virtual {v13}, Landroid/media/Image;->close()V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mImageInfo:Lcom/google/common/util/concurrent/SettableFuture;

    move-object/from16 v16, v0

    new-instance v4, Lcom/android/camera/processing/imagebackend/ImageInfo;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v5

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/processing/imagebackend/ImageInfo;-><init>(Lcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 163
    if-eqz v11, :cond_3

    array-length v4, v11

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/camera/mpo/Bokeh_Info;->isMpoType:Z

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-virtual {v12}, Lcom/android/camera/gdepth/MTKBokehDataFilter;->getPrimaryData()[B

    move-result-object v5

    iput-object v5, v4, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    .line 166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-virtual {v12}, Lcom/android/camera/gdepth/MTKBokehDataFilter;->getClearData()[B

    move-result-object v5

    iput-object v5, v4, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    .line 167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-virtual {v12}, Lcom/android/camera/gdepth/MTKBokehDataFilter;->getDepthData()[B

    move-result-object v5

    iput-object v5, v4, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    .line 168
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    array-length v4, v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, v5, Lcom/android/camera/mpo/Bokeh_Info;->mSuccess:Z

    .line 169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/camera/mpo/Bokeh_Info;->useVendorTag:Z

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;)V

    .line 175
    :goto_3
    sget-object v4, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "endParse..........costtime = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    goto/16 :goto_1

    .line 168
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 172
    :cond_3
    sget-object v4, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bokeh fail! size:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v8, v11

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    const/16 v4, 0x100

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4, v11}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->onProcessDone(III[B)V

    goto :goto_3

    .line 179
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v9    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v11    # "bytes":[B
    .end local v12    # "filter":Lcom/android/camera/gdepth/MTKBokehDataFilter;
    .end local v13    # "image":Landroid/media/Image;
    .end local v14    # "starttime":J
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->createMPO(ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    goto/16 :goto_1
.end method

.method public addFullSizeImage(Lcom/android/camera/one/DualSightCamType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .param p1, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p2, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/DualSightCamType;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :try_start_0
    invoke-interface {p2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow error : this method should not be call here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :catch_0
    move-exception v0

    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow error : this method should not be call here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow error : this method should not be call here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFullSizeImage(Lcom/android/camera/one/DualSightCamType;[B)V
    .locals 2
    .param p1, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p2, "photoData"    # [B

    .prologue
    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow error : this method should not be call here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/CameraType;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mLogicImageProcessor:Lcom/android/camera/one/v2/imageprocessor/LogicImageProcessor;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/one/v2/imageprocessor/LogicImageProcessor;->saveAndCloseRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 198
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 414
    :goto_0
    return-void

    .line 403
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$4;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$4;-><init>(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method public generateXmpFromMpo([B)Ljava/util/ArrayList;
    .locals 10
    .param p1, "mpoSourceBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v0, "bytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    .line 344
    .local v2, "eoiNumber":I
    const/4 v4, 0x0

    .line 346
    .local v4, "index":I
    const/4 v5, 0x1

    .line 347
    .local v5, "isFirstImage":Z
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 349
    .local v6, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    if-ge v3, v8, :cond_3

    .line 350
    invoke-direct {p0, p1, v3}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->getShort([BI)S

    move-result v8

    const/16 v9, -0x27

    if-eq v8, v9, :cond_1

    .line 349
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 353
    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x1

    if-eq v2, v8, :cond_2

    if-nez v5, :cond_0

    .line 354
    :cond_2
    move v7, v4

    .line 355
    .local v7, "startIndex":I
    add-int/lit8 v4, v3, 0x2

    .line 356
    sub-int v8, v4, v7

    invoke-virtual {v6, p1, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 357
    invoke-direct {p0, v6}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->openNewStream(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    const/4 v2, 0x0

    .line 359
    const/4 v5, 0x0

    goto :goto_1

    .line 362
    .end local v7    # "startIndex":I
    :cond_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_2
    return-object v0

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public getDofBokehType()Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    .locals 10

    .prologue
    .line 629
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v1

    .line 630
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    const-string v8, "default_scope"

    const-string v9, "pref_zeiss_bokeh_key"

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "bokehType":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080451

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, "creamyType":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080455

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 633
    .local v6, "swirlyType":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080452

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, "dotType":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080454

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 635
    .local v5, "starType":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080453

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, "heartType":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bokehType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 639
    sget-object v7, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "bokehType PLANAR"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 640
    sget-object v7, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->PLANAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    .line 660
    :goto_0
    return-object v7

    .line 642
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 643
    sget-object v7, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "bokehType BIOTAR"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 644
    sget-object v7, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->BIOTAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 647
    sget-object v7, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "bokehType dot"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 648
    sget-object v7, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->CIRCLE:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    goto :goto_0

    .line 650
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 651
    sget-object v7, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "bokehType star"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 652
    sget-object v7, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->STAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    goto :goto_0

    .line 654
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 655
    sget-object v7, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "bokehType heart"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 656
    sget-object v7, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->HEART:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    goto :goto_0

    .line 659
    :cond_4
    sget-object v7, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "bokehType unknown"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 660
    sget-object v7, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->PLANAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 377
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->abort()V

    .line 379
    return-void
.end method

.method public onPostImage(III[B)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "postImage"    # [B

    .prologue
    .line 679
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostImage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 681
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpect callback : onPostImage"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPostProcessDone([B)V
    .locals 3
    .param p1, "jepgData"    # [B

    .prologue
    .line 672
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostProcessDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 674
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpect callback : onPostProcessDone"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onProcessAbort()V
    .locals 2

    .prologue
    .line 423
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onProcessAbort"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public onProcessDone(III[B)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "jepgData"    # [B

    .prologue
    .line 445
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 471
    :goto_0
    return-void

    .line 447
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$6;

    invoke-direct {v1, p0, p4}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$6;-><init>(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;)V
    .locals 3
    .param p1, "bokehInfo"    # Lcom/android/camera/mpo/Bokeh_Info;

    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 625
    :goto_0
    return-void

    .line 477
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;-><init>(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;Lcom/android/camera/mpo/Bokeh_Info;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onProcessError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 441
    :goto_0
    return-void

    .line 430
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$5;-><init>(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSuccess(Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;)V
    .locals 4
    .param p1, "result"    # Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 226
    sget-object v2, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuccess : result = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    if-nez p1, :cond_1

    .line 228
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "process error : get empty result."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "get empty result"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->onFailure(Ljava/lang/Throwable;)V

    .line 251
    :goto_1
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    .line 235
    iget v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mConvertedImgCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mConvertedImgCount:I

    .line 236
    iget v0, p1, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mIndex:I

    if-nez v0, :cond_4

    .line 237
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v3, p1, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mImageData:[B

    iput-object v3, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    .line 242
    :cond_2
    :goto_2
    iget v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mConvertedImgCount:I

    iget v3, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mRequiredImgNum:I

    if-ne v0, v3, :cond_3

    .line 243
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v0, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v0, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, v3, Lcom/android/camera/mpo/Bokeh_Info;->mSuccess:Z

    .line 244
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-virtual {p0, v0}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;)V

    .line 245
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onCaptureFinish()V

    .line 250
    :cond_3
    :goto_4
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 238
    :cond_4
    :try_start_1
    iget v0, p1, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mIndex:I

    if-ne v0, v1, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v3, p1, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mImageData:[B

    iput-object v3, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    goto :goto_2

    .line 243
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 248
    :cond_6
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "process stop : ignore result."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    check-cast p1, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->onSuccess(Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;)V

    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "start fail"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 211
    monitor-exit v1

    .line 222
    :goto_0
    return-void

    .line 213
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$1;-><init>(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
