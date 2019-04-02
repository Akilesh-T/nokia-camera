.class public Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;
.super Ljava/lang/Object;
.source "ZSLBurstLowEndCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/commands/CameraCommand;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field final CONTINUE_REQUIRE_IMAGES:I

.field final HIGH_SIZE_RAM:I

.field TIME_OUT_FOR_CAPTURE_FPS:I

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

.field private mTemplateType:I

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

.field private final publishLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ZSLBurstLowEndCapCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/async/Lifetime;Lcom/android/camera/burst/BurstController;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Ljava/lang/Runnable;I)V
    .locals 5
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
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->CONTINUE_REQUIRE_IMAGES:I

    .line 98
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->HIGH_SIZE_RAM:I

    .line 99
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->TIME_OUT_FOR_CAPTURE_FPS:I

    .line 101
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->publishLock:Ljava/lang/Object;

    .line 136
    iput-object p1, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 137
    iput-object p2, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 138
    new-instance v2, Lcom/android/camera/one/v2/core/RequestTemplate;

    invoke-direct {v2, p3}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    iput-object v2, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 139
    iput-object p4, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    .line 140
    iput-object p5, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mManagedImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 141
    iput-object p6, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mImageReprocessor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    .line 142
    iput-object p7, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mImageStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    .line 143
    iput-object p7, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mZslRingBuffer:Lcom/android/camera/async/BufferQueue;

    .line 144
    iput-object p8, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    .line 145
    iput-object p9, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBurstLifetime:Lcom/android/camera/async/Lifetime;

    .line 146
    iput-object p10, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    .line 147
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    .line 148
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    .line 149
    move/from16 v0, p13

    iput v0, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mTemplateType:I

    .line 150
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mReprocessTaskSet:Ljava/util/Set;

    .line 151
    iget-object v2, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mReprocessTaskSet:Ljava/util/Set;

    sget-object v3, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_BURST_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 154
    invoke-static {}, Lcom/android/camera/util/FileUtil;->getTotalRam()I

    move-result v1

    .line 155
    .local v1, "totalRamSize":I
    sget-object v2, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new ZSLBurstLowEndCaptureCommand() get current device ram: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 157
    iget v2, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->TIME_OUT_FOR_CAPTURE_FPS:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->TIME_OUT_FOR_CAPTURE_FPS:I

    .line 159
    :cond_0
    return-void
.end method

.method private static checkAndApplyNexus5FrameRateWorkaround(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 3
    .param p0, "request"    # Lcom/android/camera/one/v2/core/RequestBuilder;

    .prologue
    .line 247
    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-eqz v1, :cond_0

    .line 249
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 250
    .local v0, "frameRateBackOff":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 252
    .end local v0    # "frameRateBackOff":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method private lock3AOnDemand(Lcom/android/camera/one/v2/core/FrameServer$Session;Z)V
    .locals 7
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    .local v0, "burstRequest":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_4

    .line 257
    iget-object v3, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v4, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mTemplateType:I

    invoke-interface {v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v2

    .line 258
    .local v2, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    iget-object v3, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v3}, Lcom/android/camera/burst/BurstController;->isNeedAFLock()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_1

    .line 259
    :cond_0
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 261
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 263
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 264
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 263
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 266
    :cond_1
    iget-object v3, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v3}, Lcom/android/camera/burst/BurstController;->isNeedAELock()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_3

    .line 267
    :cond_2
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 269
    :cond_3
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 270
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 271
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 272
    iget-object v3, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    invoke-virtual {v3, v2, v5}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->configureZslParamForBurstCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Z)V

    .line 273
    iget-object v3, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mImageStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    invoke-virtual {v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 274
    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v2    # "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :cond_4
    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v0, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 277
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

    .line 280
    iget-object v1, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v2, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mTemplateType:I

    invoke-interface {v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 281
    .local v0, "unlockAfAeBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    iget-object v1, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstController;->isNeedAFLock()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    .line 282
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 284
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 286
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    .line 287
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstController;->isNeedAELock()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_3

    .line 290
    :cond_2
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 292
    :cond_3
    iget-object v1, p0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    invoke-virtual {v1, v0, v3}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->configureZslParamForBurstCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Z)V

    .line 293
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 294
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 295
    new-array v1, v4, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v1, v2}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 297
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
    .line 164
    sget-object v2, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "ZSLBurstLowEndCaptureCommand->run()"

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v4, "ZSLBurstLowEndCaptureCommand"

    invoke-interface {v2, v4}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v12

    .line 167
    .local v12, "guard":Lcom/android/camera/stats/profiler/Profile;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/burst/BurstResultsListener;->onBurstStarted()V

    .line 169
    invoke-interface {v12}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 170
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .local v3, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/16 v16, 0x0

    .line 171
    :try_start_1
    const-string v2, "FrameServer.Session created"

    invoke-interface {v12, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z

    move-result v14

    .line 173
    .local v14, "isFocusing":Z
    sget-object v2, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 175
    new-instance v13, Lcom/android/camera/async/ConcurrentState;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v13, v2}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 176
    .local v13, "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBurstLifetime:Lcom/android/camera/async/Lifetime;

    const/4 v4, 0x0

    new-instance v8, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v13}, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand$1;-><init>(Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;Lcom/android/camera/async/ConcurrentState;)V

    invoke-virtual {v2, v4, v8}, Lcom/android/camera/async/Lifetime;->add(ILcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 184
    invoke-interface {v12}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 185
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->lock3AOnDemand(Lcom/android/camera/one/v2/core/FrameServer$Session;Z)V

    .line 186
    const-string v2, "lock3AOnDemand"

    invoke-interface {v12, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    invoke-virtual {v13}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->publishLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 190
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->publishLock:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->TIME_OUT_FOR_CAPTURE_FPS:I

    int-to-long v8, v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 191
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 192
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->lock3AOnDemand(Lcom/android/camera/one/v2/core/FrameServer$Session;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 193
    const/4 v5, 0x0

    .line 195
    .local v5, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mZslRingBuffer:Lcom/android/camera/async/BufferQueue;

    const-wide/16 v8, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v8, v9, v4}, Lcom/android/camera/async/BufferQueue;->getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-object v5, v0

    .line 196
    if-eqz v5, :cond_0

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    .line 198
    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v8

    invoke-interface {v2, v8, v9}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;->removeMetadataFuture(J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v15

    .line 199
    .local v15, "metadataFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-interface {v15}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    .line 200
    .local v6, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    invoke-interface {v2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->prepareImgName()Lcom/google/common/base/Optional;

    move-result-object v7

    .line 201
    .local v7, "burstImgName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil;->USE_DEVICE_OPERATED_ZSL:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mImageReprocessor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mReprocessTaskSet:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

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

    .line 202
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    const/4 v4, 0x1

    invoke-interface {v2, v5, v6, v4, v7}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->addFullSizeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;ZLcom/google/common/base/Optional;)V
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_0

    .line 205
    .end local v6    # "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .end local v7    # "burstImgName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    .end local v15    # "metadataFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_0
    move-exception v11

    .line 207
    .local v11, "e":Ljava/util/concurrent/TimeoutException;
    if-eqz v5, :cond_0

    .line 208
    :try_start_5
    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_0

    .line 170
    .end local v5    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v11    # "e":Ljava/util/concurrent/TimeoutException;
    .end local v13    # "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .end local v14    # "isFocusing":Z
    :catch_1
    move-exception v2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 226
    :catchall_0
    move-exception v4

    move-object/from16 v19, v4

    move-object v4, v2

    move-object/from16 v2, v19

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v4, :cond_7

    :try_start_7
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_2
    :goto_2
    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_2
    move-exception v11

    .line 227
    .restart local v11    # "e":Ljava/util/concurrent/TimeoutException;
    :try_start_9
    sget-object v2, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/android/camera/burst/BurstResultsListener;->onBurstError(Ljava/lang/Exception;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 230
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
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 232
    .end local v11    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->publishLock:Ljava/lang/Object;

    monitor-enter v4

    .line 233
    :try_start_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->publishLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 234
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v4}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v4}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/burst/BurstResultsListener;->onBurstCompleted()V

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    invoke-interface {v4}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 239
    invoke-interface {v12}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    throw v2

    .line 191
    .restart local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v13    # "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .restart local v14    # "isFocusing":Z
    :catchall_2
    move-exception v2

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v2

    .line 226
    .end local v13    # "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .end local v14    # "isFocusing":Z
    :catchall_3
    move-exception v2

    move-object/from16 v4, v16

    goto/16 :goto_1

    .line 210
    .restart local v5    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .restart local v13    # "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .restart local v14    # "isFocusing":Z
    :catch_3
    move-exception v11

    .line 211
    .local v11, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 212
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    if-eqz v5, :cond_3

    .line 214
    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 216
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/android/camera/burst/BurstResultsListener;->onBurstError(Ljava/lang/Exception;)V

    .line 222
    .end local v5    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-interface {v12}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 223
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->unlok3AIfNeed(Lcom/android/camera/one/v2/core/FrameServer$Session;Z)V

    .line 224
    const-string v2, "unlok3AIfNeed"

    invoke-interface {v12, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 226
    if-eqz v3, :cond_5

    if-eqz v16, :cond_6

    :try_start_d
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 232
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->publishLock:Ljava/lang/Object;

    monitor-enter v4

    .line 233
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->publishLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 234
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/burst/BurstResultsListener;->onBurstCompleted()V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/ZSLBurstLowEndCaptureCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    invoke-interface {v2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 239
    invoke-interface {v12}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 241
    return-void

    .line 226
    :catch_4
    move-exception v2

    :try_start_f
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
    :try_end_f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_2

    .line 234
    .restart local v13    # "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .restart local v14    # "isFocusing":Z
    :catchall_4
    move-exception v2

    :try_start_10
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v2

    .end local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v13    # "isBurstEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .end local v14    # "isFocusing":Z
    :catchall_5
    move-exception v2

    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    throw v2
.end method
