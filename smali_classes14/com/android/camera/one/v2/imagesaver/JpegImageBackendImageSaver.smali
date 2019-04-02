.class public Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;
.super Ljava/lang/Object;
.source "JpegImageBackendImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$JpegImageProcessorListener;,
        Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;
    }
.end annotation


# static fields
.field private static final JPEG_DOWNSAMPLE_FOR_FAST_INDICATOR:I = 0x4

.field private static TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mCrop:Landroid/graphics/Rect;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field private final mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "JpegImgBESaver"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;)V
    .locals 1
    .param p1, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p2, "imageBackend"    # Lcom/android/camera/processing/imagebackend/ImageBackend;

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .line 222
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 223
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 224
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;Ljava/util/concurrent/Executor;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p2, "imageBackend"    # Lcom/android/camera/processing/imagebackend/ImageBackend;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "crop"    # Landroid/graphics/Rect;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .line 238
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 239
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 240
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->mCrop:Landroid/graphics/Rect;

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->mCrop:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public build(Lcom/android/camera/one/OneCamera$PictureSaverCallback;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/session/CaptureSession;)Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .locals 10
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
    .line 253
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .line 254
    invoke-interface {v2}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->toImageRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v3

    .line 256
    .local v3, "imageRotation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    invoke-virtual {v2}, Lcom/android/camera/processing/imagebackend/ImageBackend;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v1

    .line 258
    .local v1, "proxyListener":Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$JpegImageProcessorListener;

    const/4 v5, 0x0

    move-object v2, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$JpegImageProcessorListener;-><init>(Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$PictureSaverCallback;Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$1;)V

    .line 260
    .local v0, "jpegImageProcessorListener":Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$JpegImageProcessorListener;
    new-instance v2, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;

    new-instance v4, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;

    iget-object v8, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    move-object v5, p0

    move-object v6, p3

    move-object v7, v3

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;-><init>(Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)V

    invoke-direct {v2, v4}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;)V

    return-object v2
.end method

.method public buildForBusrt(Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/session/CaptureSession;)Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .locals 1
    .param p1, "burstIntent"    # Lcom/android/camera/burst/BurstFacade$BurstIntent;
    .param p2, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public updatePostCaptureCrop(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->mCrop:Landroid/graphics/Rect;

    .line 272
    return-void
.end method
