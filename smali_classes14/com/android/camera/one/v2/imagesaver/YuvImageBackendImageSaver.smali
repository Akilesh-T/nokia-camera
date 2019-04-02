.class public Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;
.super Ljava/lang/Object;
.source "YuvImageBackendImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;,
        Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;,
        Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;
    }
.end annotation


# static fields
.field private static final PERCENTAGE_COMPRESSION_DONE:I = 0x5f

.field private static final PERCENTAGE_INTERMEDIATE_THUMBNAIL_DONE:I = 0x19

.field private static final PERCENTAGE_POST_PROCESS_IMAGE_COMPRESSED:I = 0x32

.field private static final PERCENTAGE_POST_PROCESS_IMAGE_SAVED:I = 0x4b


# instance fields
.field private mCrop:Landroid/graphics/Rect;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field private final mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;)V
    .locals 1
    .param p1, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p2, "imageBackend"    # Lcom/android/camera/processing/imagebackend/ImageBackend;

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .line 475
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 476
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 477
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;Landroid/graphics/Rect;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p2, "imageBackend"    # Lcom/android/camera/processing/imagebackend/ImageBackend;
    .param p3, "crop"    # Landroid/graphics/Rect;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .line 492
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 493
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->mCrop:Landroid/graphics/Rect;

    .line 494
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 495
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->mCrop:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Lcom/android/camera/processing/imagebackend/ImageBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    return-object v0
.end method


# virtual methods
.method public build(Lcom/android/camera/one/OneCamera$PictureSaverCallback;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/session/CaptureSession;)Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .locals 4
    .param p1, "pictureSaverCallback"    # Lcom/android/camera/one/OneCamera$PictureSaverCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "orientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "session"    # Lcom/android/camera/session/CaptureSession;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 509
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .line 510
    invoke-interface {v2}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->toImageRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    .line 512
    .local v0, "imageRotation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v0, p1, v2}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;-><init>(Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$PictureSaverCallback;Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$1;)V

    .line 514
    .local v1, "yuvImageProcessorListener":Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;
    new-instance v2, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;

    new-instance v3, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;

    invoke-direct {v3, p0, p3, v0, v1}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;-><init>(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)V

    invoke-direct {v2, v3}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;)V

    return-object v2
.end method

.method public buildForBusrt(Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/session/CaptureSession;)Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .locals 5
    .param p1, "burstIntent"    # Lcom/android/camera/burst/BurstFacade$BurstIntent;
    .param p2, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    const/4 v4, 0x0

    .line 522
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .line 523
    invoke-interface {v3}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->toImageRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    .line 525
    .local v1, "imageRotation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    new-instance v2, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;

    invoke-direct {v2, p2, v1, v4, v4}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;-><init>(Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$PictureSaverCallback;Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$1;)V

    .line 529
    .local v2, "yuvImageProcessorListener":Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;
    sget-object v3, Lcom/android/camera/burst/BurstFacade$BurstIntent;->BURST:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    if-ne p1, v3, :cond_0

    .line 530
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/BurstImageSaver;

    new-instance v3, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;

    invoke-direct {v3, p0, p2, v1, v2}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;-><init>(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;)V

    invoke-direct {v0, v3}, Lcom/android/camera/one/v2/imagesaver/BurstImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/MultiImageSaver;)V

    .line 535
    .local v0, "burstImageSaver":Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    :goto_0
    return-object v0

    .line 532
    .end local v0    # "burstImageSaver":Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "burstImageSaver":Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    goto :goto_0
.end method

.method public updatePostCaptureCrop(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->mCrop:Landroid/graphics/Rect;

    .line 541
    return-void
.end method
