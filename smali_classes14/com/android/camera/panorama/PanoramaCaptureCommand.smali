.class public Lcom/android/camera/panorama/PanoramaCaptureCommand;
.super Ljava/lang/Object;
.source "PanoramaCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/commands/CameraCommand;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mBurstController:Lcom/android/camera/burst/BurstController;

.field private final mBurstLifetime:Lcom/android/camera/async/Lifetime;

.field private final mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

.field private final mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

.field private final mImageStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

.field private final mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private final mRestorePreviewCommand:Ljava/lang/Runnable;

.field private final mTargetCaptureSize:Lcom/android/camera/util/Size;

.field private final mTemplateType:I

.field private final mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

.field private final mZslRingBuffer:Lcom/android/camera/async/BufferQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PanoramaCapCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/async/Lifetime;Lcom/android/camera/burst/BurstController;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Ljava/lang/Runnable;Lcom/android/camera/util/Size;I)V
    .locals 1
    .param p1, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p2, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p3, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p4, "builder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p5, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p6, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p7, "imageStream"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .param p8, "zslMetadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .param p9, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p10, "burstController"    # Lcom/android/camera/burst/BurstController;
    .param p11, "imageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p12, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p13, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p14, "templateType"    # I

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 127
    iput-object p2, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 128
    iput-object p3, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 129
    new-instance v0, Lcom/android/camera/one/v2/core/RequestTemplate;

    invoke-direct {v0, p4}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    iput-object v0, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 130
    iput-object p5, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    .line 131
    iput-object p6, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    .line 132
    iput-object p7, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mImageStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    .line 133
    iput-object p7, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mZslRingBuffer:Lcom/android/camera/async/BufferQueue;

    .line 134
    iput-object p8, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    .line 135
    iput-object p9, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBurstLifetime:Lcom/android/camera/async/Lifetime;

    .line 136
    iput-object p10, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    .line 137
    iput-object p11, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    .line 138
    iput-object p12, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    .line 139
    iput-object p13, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    .line 140
    iput p14, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mTemplateType:I

    .line 141
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 142
    return-void
.end method

.method private static checkAndApplyNexus5FrameRateWorkaround(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 3
    .param p0, "request"    # Lcom/android/camera/one/v2/core/RequestBuilder;

    .prologue
    .line 238
    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-eqz v1, :cond_0

    .line 240
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 241
    .local v0, "frameRateBackOff":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 243
    .end local v0    # "frameRateBackOff":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method private lock3AOnDemand(Lcom/android/camera/one/v2/core/FrameServer$Session;Z)V
    .locals 5
    .param p1, "session"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .param p2, "isFocusing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 246
    iget-object v1, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v2, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mTemplateType:I

    invoke-interface {v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 248
    .local v0, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    iget-object v1, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstController;->isNeedAFLock()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    .line 249
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 251
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 253
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 254
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstController;->isNeedAELock()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_3

    .line 257
    :cond_2
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 260
    :cond_3
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil;->USE_DEVICE_OPERATED_ZSL:Z

    if-eqz v1, :cond_4

    .line 261
    iget-object v1, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mImageStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 264
    :cond_4
    new-array v1, v3, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v1, v2}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 266
    return-void
.end method

.method private unlok3AIfNeed(Lcom/android/camera/one/v2/core/FrameServer$Session;Z)V
    .locals 5
    .param p1, "session"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .param p2, "isFocusing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 269
    iget-object v1, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v2, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mTemplateType:I

    invoke-interface {v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 270
    .local v0, "unlockAfAeBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    iget-object v1, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstController;->isNeedAFLock()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    .line 271
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 273
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 275
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    .line 276
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 275
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstController;->isNeedAELock()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_3

    .line 279
    :cond_2
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 281
    :cond_3
    new-array v1, v4, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v1, v2}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 283
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "PanoramaCaptureCommand"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v9

    .line 149
    .local v9, "guard":Lcom/android/camera/stats/profiler/Profile;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->PANORAMA:Lcom/android/ex/camera2/portability/CaptureIntent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getHorizontalViewAngle()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v5}, Lcom/android/camera/one/OneCameraCharacteristics;->getVerticalViewAngle()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface/range {v2 .. v9}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;->buildForPanorama(Lcom/android/ex/camera2/portability/CaptureIntent;FFLcom/android/camera/util/Size;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/burst/BurstController;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;

    move-result-object v13

    .line 151
    .local v13, "imageProcessor":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/burst/BurstResultsListener;->onBurstStarted()V

    .line 153
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 154
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v11, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 155
    .local v11, "hasError":Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v18

    .local v18, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v3, 0x0

    .line 156
    :try_start_1
    const-string v2, "FrameServer.Session created"

    invoke-interface {v9, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z

    move-result v15

    .line 158
    .local v15, "isFocusing":Z
    sget-object v2, Lcom/android/camera/panorama/PanoramaCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFocusing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    new-instance v14, Lcom/android/camera/async/ConcurrentState;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 161
    .local v14, "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBurstLifetime:Lcom/android/camera/async/Lifetime;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/camera/panorama/PanoramaCaptureCommand$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lcom/android/camera/panorama/PanoramaCaptureCommand$1;-><init>(Lcom/android/camera/panorama/PanoramaCaptureCommand;Lcom/android/camera/async/ConcurrentState;)V

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/async/Lifetime;->add(ILcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 169
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/android/camera/panorama/PanoramaCaptureCommand;->lock3AOnDemand(Lcom/android/camera/one/v2/core/FrameServer$Session;Z)V

    .line 171
    const-string v2, "lock3AOnDemand"

    invoke-interface {v9, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 173
    invoke-interface {v13}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->start()V

    .line 174
    :cond_0
    :goto_0
    invoke-virtual {v14}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v2

    if-nez v2, :cond_3

    .line 175
    const/4 v12, 0x0

    .line 177
    .local v12, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mZslRingBuffer:Lcom/android/camera/async/BufferQueue;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v6}, Lcom/android/camera/async/BufferQueue;->getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-object v12, v0

    .line 178
    if-eqz v12, :cond_0

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    .line 180
    invoke-interface {v12}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;->removeMetadataFuture(J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v17

    .line 181
    .local v17, "metadataFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v16

    .line 182
    .local v16, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    sget-object v2, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v2, v4, v12, v0}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 184
    .end local v16    # "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .end local v17    # "metadataFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_0
    move-exception v10

    .line 186
    .local v10, "e":Ljava/util/concurrent/TimeoutException;
    if-eqz v12, :cond_0

    .line 187
    :try_start_3
    invoke-interface {v12}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 155
    .end local v10    # "e":Ljava/util/concurrent/TimeoutException;
    .end local v12    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v14    # "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .end local v15    # "isFocusing":Z
    :catch_1
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    :catchall_0
    move-exception v3

    move-object/from16 v19, v3

    move-object v3, v2

    move-object/from16 v2, v19

    :goto_1
    if-eqz v18, :cond_1

    if-eqz v3, :cond_7

    :try_start_5
    invoke-interface/range {v18 .. v18}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_1
    :goto_2
    :try_start_6
    throw v2
    :try_end_6
    .catch Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v18    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_2
    move-exception v10

    .line 211
    .local v10, "e":Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
    :try_start_7
    sget-object v2, Lcom/android/camera/panorama/PanoramaCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraCaptureSessionClosedException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    .line 213
    invoke-interface {v13}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->finish()V

    .line 215
    :cond_2
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 227
    .end local v10    # "e":Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v3}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v3}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/burst/BurstResultsListener;->onBurstCompleted()V

    .line 230
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    throw v2

    .line 189
    .restart local v12    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .restart local v14    # "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .restart local v15    # "isFocusing":Z
    .restart local v18    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_3
    move-exception v10

    .line 190
    .local v10, "e":Ljava/lang/Exception;
    :try_start_8
    sget-object v2, Lcom/android/camera/panorama/PanoramaCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when get image : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 193
    invoke-interface {v13}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->abort()V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v2

    invoke-interface {v2, v10}, Lcom/android/camera/burst/BurstResultsListener;->onBurstError(Ljava/lang/Exception;)V

    .line 195
    if-eqz v12, :cond_3

    .line 196
    invoke-interface {v12}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 202
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_3
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    .line 203
    invoke-interface {v13}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->finish()V

    .line 207
    :cond_4
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/android/camera/panorama/PanoramaCaptureCommand;->unlok3AIfNeed(Lcom/android/camera/one/v2/core/FrameServer$Session;Z)V

    .line 209
    const-string v2, "unlok3AIfNeed"

    invoke-interface {v9, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 210
    if-eqz v18, :cond_5

    if-eqz v3, :cond_6

    :try_start_9
    invoke-interface/range {v18 .. v18}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 227
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/burst/BurstResultsListener;->onBurstCompleted()V

    .line 230
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 232
    return-void

    .line 210
    :catch_4
    move-exception v2

    :try_start_a
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    .line 216
    .end local v14    # "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .end local v15    # "isFocusing":Z
    .end local v18    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_5
    move-exception v10

    .line 217
    .local v10, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_b
    sget-object v2, Lcom/android/camera/panorama/PanoramaCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimeoutException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    invoke-interface {v13}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->abort()V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v2

    invoke-interface {v2, v10}, Lcom/android/camera/burst/BurstResultsListener;->onBurstError(Ljava/lang/Exception;)V

    .line 220
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout when running command : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 210
    .end local v10    # "e":Ljava/util/concurrent/TimeoutException;
    .restart local v14    # "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .restart local v15    # "isFocusing":Z
    .restart local v18    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :cond_6
    :try_start_c
    invoke-interface/range {v18 .. v18}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_c
    .catch Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_3

    .line 221
    .end local v14    # "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .end local v15    # "isFocusing":Z
    .end local v18    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_6
    move-exception v10

    .line 222
    .local v10, "e":Ljava/lang/Exception;
    :try_start_d
    sget-object v2, Lcom/android/camera/panorama/PanoramaCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    invoke-interface {v13}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->abort()V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/panorama/PanoramaCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v2

    invoke-interface {v2, v10}, Lcom/android/camera/burst/BurstResultsListener;->onBurstError(Ljava/lang/Exception;)V

    .line 225
    throw v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 210
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v18    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_7
    move-exception v4

    :try_start_e
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_7
    invoke-interface/range {v18 .. v18}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_e
    .catch Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_2

    :catchall_2
    move-exception v2

    goto/16 :goto_1
.end method
