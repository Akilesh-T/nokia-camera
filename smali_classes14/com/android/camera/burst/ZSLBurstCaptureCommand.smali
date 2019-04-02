.class public Lcom/android/camera/burst/ZSLBurstCaptureCommand;
.super Ljava/lang/Object;
.source "ZSLBurstCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/commands/CameraCommand;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final BURST_FPS_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final BURST_TEMPLATE_TYPE:I = 0x4

.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mBurstController:Lcom/android/camera/burst/BurstController;

.field private final mBurstLifetime:Lcom/android/camera/async/Lifetime;

.field private final mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mImageReprocessor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

.field private final mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

.field private final mImageStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

.field private final mManagedImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private final mReprocessTaskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestorePreviewCommand:Ljava/lang/Runnable;

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
    .locals 3

    .prologue
    const/16 v2, 0xf

    .line 68
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ZSLBurstCapCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 73
    new-instance v0, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->BURST_FPS_RANGE:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/async/Lifetime;Lcom/android/camera/burst/BurstController;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Ljava/lang/Runnable;I)V
    .locals 2
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p2, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p3, "builder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p4, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p5, "managedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p6, "imageReprocessor"    # Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;
    .param p7, "imageStream"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .param p8, "zslMetadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .param p9, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p10, "burstController"    # Lcom/android/camera/burst/BurstController;
    .param p11, "imageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p12, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p13, "templateType"    # I

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 130
    iput-object p2, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 131
    new-instance v0, Lcom/android/camera/one/v2/core/RequestTemplate;

    invoke-direct {v0, p3}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    iput-object v0, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 132
    iput-object p4, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    .line 133
    iput-object p5, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mManagedImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 134
    iput-object p6, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mImageReprocessor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    .line 135
    iput-object p7, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mImageStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    .line 136
    iput-object p7, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mZslRingBuffer:Lcom/android/camera/async/BufferQueue;

    .line 137
    iput-object p8, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    .line 138
    iput-object p9, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBurstLifetime:Lcom/android/camera/async/Lifetime;

    .line 139
    iput-object p10, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    .line 140
    iput-object p11, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    .line 141
    iput-object p12, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    .line 142
    iput p13, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mTemplateType:I

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mReprocessTaskSet:Ljava/util/Set;

    .line 144
    iget-object v0, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mReprocessTaskSet:Ljava/util/Set;

    sget-object v1, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_BURST_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 146
    return-void
.end method

.method private static checkAndApplyNexus5FrameRateWorkaround(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 3
    .param p0, "request"    # Lcom/android/camera/one/v2/core/RequestBuilder;

    .prologue
    .line 226
    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-eqz v1, :cond_0

    .line 228
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 229
    .local v0, "frameRateBackOff":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 231
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

    .line 234
    iget-object v1, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v2, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mTemplateType:I

    invoke-interface {v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 236
    .local v0, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    iget-object v1, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstController;->isNeedAFLock()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    .line 237
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 239
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 241
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 242
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 241
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstController;->isNeedAELock()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_3

    .line 245
    :cond_2
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 249
    :cond_3
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->BURST_FPS_RANGE:Landroid/util/Range;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 251
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil;->USE_DEVICE_OPERATED_ZSL:Z

    if-eqz v1, :cond_4

    .line 252
    iget-object v1, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mImageStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 256
    :cond_4
    iget-object v1, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    invoke-virtual {v1, v0, v3}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->configureZslParamForBurstCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Z)V

    .line 258
    new-array v1, v3, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v1, v2}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 261
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

    .line 264
    iget-object v1, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v2, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mTemplateType:I

    invoke-interface {v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 265
    .local v0, "unlockAfAeBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    iget-object v1, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstController;->isNeedAFLock()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    .line 266
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 268
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 270
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    .line 271
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 270
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstController;->isNeedAELock()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_3

    .line 274
    :cond_2
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 276
    :cond_3
    iget-object v1, p0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    invoke-virtual {v1, v0, v3}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->configureZslParamForBurstCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Z)V

    .line 277
    new-array v1, v4, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v1, v2}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 279
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
    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v4, "ZSLBurstCaptureCommand"

    invoke-interface {v2, v4}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v12

    .line 153
    .local v12, "guard":Lcom/android/camera/stats/profiler/Profile;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/burst/BurstResultsListener;->onBurstStarted()V

    .line 155
    invoke-interface {v12}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 156
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .local v3, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/16 v16, 0x0

    .line 157
    :try_start_1
    const-string v2, "FrameServer.Session created"

    invoke-interface {v12, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z

    move-result v14

    .line 159
    .local v14, "isFocusing":Z
    sget-object v2, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFocusing = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    new-instance v13, Lcom/android/camera/async/ConcurrentState;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v13, v2}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 162
    .local v13, "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBurstLifetime:Lcom/android/camera/async/Lifetime;

    const/4 v4, 0x0

    new-instance v8, Lcom/android/camera/burst/ZSLBurstCaptureCommand$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v13}, Lcom/android/camera/burst/ZSLBurstCaptureCommand$1;-><init>(Lcom/android/camera/burst/ZSLBurstCaptureCommand;Lcom/android/camera/async/ConcurrentState;)V

    invoke-virtual {v2, v4, v8}, Lcom/android/camera/async/Lifetime;->add(ILcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 170
    invoke-interface {v12}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 171
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->lock3AOnDemand(Lcom/android/camera/one/v2/core/FrameServer$Session;Z)V

    .line 172
    const-string v2, "lock3AOnDemand"

    invoke-interface {v12, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 174
    :cond_0
    :goto_0
    invoke-virtual {v13}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v2

    if-nez v2, :cond_4

    .line 175
    const/4 v5, 0x0

    .line 177
    .local v5, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mZslRingBuffer:Lcom/android/camera/async/BufferQueue;

    const-wide/16 v8, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v8, v9, v4}, Lcom/android/camera/async/BufferQueue;->getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-object v5, v0

    .line 178
    if-eqz v5, :cond_0

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    .line 180
    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v8

    invoke-interface {v2, v8, v9}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;->removeMetadataFuture(J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v15

    .line 181
    .local v15, "metadataFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-interface {v15}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    .line 182
    .local v6, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    invoke-interface {v2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->prepareImgName()Lcom/google/common/base/Optional;

    move-result-object v7

    .line 183
    .local v7, "burstImgName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil;->USE_DEVICE_OPERATED_ZSL:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mImageReprocessor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mReprocessTaskSet:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v17

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ZSL Reprocess Image : "

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v10

    invoke-interface/range {v2 .. v10}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;->tryReprocessImage(Lcom/android/camera/one/v2/core/FrameServer$Session;Ljava/util/Set;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Lcom/android/camera/one/v2/imagesaver/ImageSaver;ZLcom/android/camera/stats/profiler/Profile;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    const/4 v4, 0x1

    invoke-interface {v2, v5, v6, v4, v7}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->addFullSizeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;ZLcom/google/common/base/Optional;)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_0

    .line 187
    .end local v6    # "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .end local v7    # "burstImgName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    .end local v15    # "metadataFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_0
    move-exception v11

    .line 189
    .local v11, "e":Ljava/util/concurrent/TimeoutException;
    if-eqz v5, :cond_0

    .line 190
    :try_start_3
    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_0

    .line 156
    .end local v5    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v11    # "e":Ljava/util/concurrent/TimeoutException;
    .end local v13    # "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .end local v14    # "isFocusing":Z
    :catch_1
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    :catchall_0
    move-exception v4

    move-object/from16 v19, v4

    move-object v4, v2

    move-object/from16 v2, v19

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v4, :cond_7

    :try_start_5
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    :goto_2
    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_2
    move-exception v11

    .line 209
    .restart local v11    # "e":Ljava/util/concurrent/TimeoutException;
    :try_start_7
    sget-object v2, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TimeoutException : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/android/camera/burst/BurstResultsListener;->onBurstError(Ljava/lang/Exception;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 212
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timeout when running command : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 214
    .end local v11    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v4}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 215
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v4}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/burst/BurstResultsListener;->onBurstCompleted()V

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    invoke-interface {v4}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 218
    invoke-interface {v12}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    throw v2

    .line 192
    .restart local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v5    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .restart local v13    # "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .restart local v14    # "isFocusing":Z
    :catch_3
    move-exception v11

    .line 193
    .local v11, "e":Ljava/lang/Exception;
    :try_start_8
    sget-object v2, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    if-eqz v5, :cond_3

    .line 196
    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 198
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/android/camera/burst/BurstResultsListener;->onBurstError(Ljava/lang/Exception;)V

    .line 204
    .end local v5    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-interface {v12}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 205
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->unlok3AIfNeed(Lcom/android/camera/one/v2/core/FrameServer$Session;Z)V

    .line 206
    const-string v2, "unlok3AIfNeed"

    invoke-interface {v12, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 208
    if-eqz v3, :cond_5

    if-eqz v16, :cond_6

    :try_start_9
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 214
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/burst/BurstResultsListener;->onBurstCompleted()V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstCaptureCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    invoke-interface {v2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 218
    invoke-interface {v12}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 220
    return-void

    .line 208
    :catch_4
    move-exception v2

    :try_start_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto :goto_3

    .end local v13    # "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .end local v14    # "isFocusing":Z
    :catch_5
    move-exception v8

    invoke-virtual {v4, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_7
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_2

    :catchall_2
    move-exception v2

    move-object/from16 v4, v16

    goto/16 :goto_1
.end method
