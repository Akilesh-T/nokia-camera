.class public interface abstract Lcom/android/camera/session/CaptureSession;
.super Ljava/lang/Object;
.source "CaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/session/CaptureSession$ImageSavedListener;,
        Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;,
        Lcom/android/camera/session/CaptureSession$ProgressListener;,
        Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;
    }
.end annotation


# static fields
.field public static final BURST_CONTENT_URI:Landroid/net/Uri;

.field public static final BURST_SESSION_SCHEME:Ljava/lang/String; = "burst_session"

.field public static final GOOGLE_COM:Ljava/lang/String; = "google.com"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "burst_session"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "google.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/session/CaptureSession;->BURST_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract addProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract finalizeSession()V
.end method

.method public abstract finish()V
.end method

.method public abstract finishWithFailure(IZ)V
.end method

.method public abstract getBrandLogoViewData()Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/brandlogo/BrandLogoViewData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCaptureSessionForMap()Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;
.end method

.method public abstract getExternalUri()Landroid/net/Uri;
.end method

.method public abstract getLocation()Landroid/location/Location;
.end method

.method public abstract getPrevPhoto()[B
.end method

.method public abstract getProgress()I
.end method

.method public abstract getProgressMessageId()I
.end method

.method public abstract getSceneMode()Ljava/lang/String;
.end method

.method public abstract getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract getVideoFileDescriptor()Ljava/io/FileDescriptor;
.end method

.method public abstract getVideoFilename()Ljava/lang/String;
.end method

.method public abstract getVideoRecordListener()Lcom/android/camera/session/VideoRecordListener;
.end method

.method public abstract isCaptureIntent()Z
.end method

.method public abstract isDisableSessionReturnData()Z
.end method

.method public abstract isFirstShotInTwiceShot()Z
.end method

.method public abstract isForceHideThumbnail()Z
.end method

.method public abstract isImageHWRotate()Z
.end method

.method public abstract isMainCamera()Z
.end method

.method public abstract isPreviewOnly()Z
.end method

.method public abstract needMirror()Z
.end method

.method public abstract onCaptureFinish()V
.end method

.method public abstract onCaptureStart()V
.end method

.method public abstract prepareImageTitle()Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerImageSavedListener(Lcom/android/camera/session/CaptureSession$ImageSavedListener;)V
.end method

.method public abstract removeProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
.end method

.method public abstract saveAndFinish(Lcom/android/camera/mpo/Bokeh_Info;Lcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/mpo/Bokeh_Info;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/android/camera/exif/ExifInterface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/android/camera/exif/ExifInterface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/android/camera/exif/ExifInterface;",
            "I)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract saveBurstImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/android/camera/exif/ExifInterface;",
            ")V"
        }
    .end annotation
.end method

.method public abstract savePostProcessImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/android/camera/exif/ExifInterface;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract saveRawImage([BLcom/google/common/base/Optional;II)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract setBrandLogoViewData(Lcom/google/common/base/Optional;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/brandlogo/BrandLogoViewData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
.end method

.method public abstract setDisableSessionReturnData(Z)V
.end method

.method public abstract setForceHideThumbnail(Z)V
.end method

.method public abstract setImageHWRotate(Z)V
.end method

.method public abstract setIsCaptureIntent(Z)V
.end method

.method public abstract setLocation(Landroid/location/Location;)V
.end method

.method public abstract setMainCamera(Z)V
.end method

.method public abstract setMirror(Z)V
.end method

.method public abstract setPrevPhoto([B)V
.end method

.method public abstract setPreviewOnly(Z)V
.end method

.method public abstract setProgress(I)V
.end method

.method public abstract setProgressMessage(I)V
.end method

.method public abstract setSceneMode(Ljava/lang/String;)V
.end method

.method public abstract setWatermarkViewData(Lcom/google/common/base/Optional;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/watermark/WatermarkViewData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V
    .param p1    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Landroid/graphics/Bitmap;I)V
    .param p1    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end method

.method public abstract startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Landroid/net/Uri;I)V
    .param p1    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;[BI)V
    .param p1    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract unregisterImageSavedListener()V
.end method

.method public abstract updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
.end method

.method public abstract updatePreview()V
.end method

.method public abstract updateThumbnail(Landroid/graphics/Bitmap;)V
.end method
