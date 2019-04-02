.class public Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;
.super Ljava/lang/Object;
.source "YuvImageBackendImageProcessor.java"

# interfaces
.implements Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$OnImageProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YuvImageProcessListener"
.end annotation


# instance fields
.field private final mSession:Lcom/android/camera/session/CaptureSession;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    .locals 1
    .param p1, "finalImageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    invoke-interface {p1}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->getCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->mSession:Lcom/android/camera/session/CaptureSession;

    .line 349
    return-void
.end method


# virtual methods
.method public onCaptureFinish()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->onCaptureFinish()V

    .line 368
    return-void
.end method

.method public onPostProcessImageReady([BLcom/android/camera/processing/imagebackend/ImageInfo;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "imageInfo"    # Lcom/android/camera/processing/imagebackend/ImageInfo;
    .param p3, "postProcessImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->mSession:Lcom/android/camera/session/CaptureSession;

    iget v1, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mOrientation:I

    invoke-interface {v0, p3, v1}, Lcom/android/camera/session/CaptureSession;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 372
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->mSession:Lcom/android/camera/session/CaptureSession;

    iget-object v2, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mImageName:Lcom/google/common/base/Optional;

    iget v3, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mWidth:I

    iget v4, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mHeight:I

    iget v5, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mOrientation:I

    iget-object v6, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mExif:Lcom/android/camera/exif/ExifInterface;

    move-object v1, p1

    move-object v7, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/session/CaptureSession;->savePostProcessImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 373
    return-void
.end method

.method public onProcessCancel()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 364
    return-void
.end method

.method public onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;Lcom/android/camera/processing/imagebackend/ImageInfo;)V
    .locals 7
    .param p1, "data"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p2, "imageInfo"    # Lcom/android/camera/processing/imagebackend/ImageInfo;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->mSession:Lcom/android/camera/session/CaptureSession;

    iget-object v2, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mImageName:Lcom/google/common/base/Optional;

    iget v3, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mWidth:I

    iget v4, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mHeight:I

    iget v5, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mOrientation:I

    iget-object v6, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mExif:Lcom/android/camera/exif/ExifInterface;

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/camera/session/CaptureSession;->saveAndFinish(Lcom/android/camera/mpo/Bokeh_Info;Lcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 383
    return-void
.end method

.method public onProcessDone([BLcom/android/camera/processing/imagebackend/ImageInfo;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "imageInfo"    # Lcom/android/camera/processing/imagebackend/ImageInfo;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->mSession:Lcom/android/camera/session/CaptureSession;

    iget-object v2, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mImageName:Lcom/google/common/base/Optional;

    iget v3, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mWidth:I

    iget v4, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mHeight:I

    iget v5, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mOrientation:I

    iget-object v6, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mExif:Lcom/android/camera/exif/ExifInterface;

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/camera/session/CaptureSession;->saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 378
    return-void
.end method

.method public onProcessDone([BLcom/android/camera/processing/imagebackend/ImageInfo;I)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "imageInfo"    # Lcom/android/camera/processing/imagebackend/ImageInfo;
    .param p3, "imageFormat"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->mSession:Lcom/android/camera/session/CaptureSession;

    iget-object v2, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mImageName:Lcom/google/common/base/Optional;

    iget v3, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mWidth:I

    iget v4, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mHeight:I

    iget v5, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mOrientation:I

    iget-object v6, p2, Lcom/android/camera/processing/imagebackend/ImageInfo;->mExif:Lcom/android/camera/exif/ExifInterface;

    move-object v1, p1

    move v7, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/session/CaptureSession;->saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 388
    return-void
.end method

.method public onProcessError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->mSession:Lcom/android/camera/session/CaptureSession;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/CaptureSession;->finishWithFailure(IZ)V

    .line 359
    return-void
.end method

.method public onProcessStart()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->onCaptureStart()V

    .line 354
    return-void
.end method
