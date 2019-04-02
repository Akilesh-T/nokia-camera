.class public Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;
.super Ljava/lang/Object;
.source "CaptureSessionFactory.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/session/CaptureSessionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureSessionStub"
.end annotation


# instance fields
.field private final mParentSesssion:Lcom/android/camera/session/CaptureSession;


# direct methods
.method public constructor <init>(Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "parentSesssion"    # Lcom/android/camera/session/CaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    .line 100
    return-void
.end method


# virtual methods
.method public addProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession;->addProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V

    .line 250
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 185
    return-void
.end method

.method public finalizeSession()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->finalizeSession()V

    .line 230
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->finish()V

    .line 220
    return-void
.end method

.method public finishWithFailure(IZ)V
    .locals 1
    .param p1, "failureMessageId"    # I
    .param p2, "removeFromFilmstrip"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/session/CaptureSession;->finishWithFailure(IZ)V

    .line 225
    return-void
.end method

.method public getBrandLogoViewData()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/brandlogo/BrandLogoViewData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getBrandLogoViewData()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureSessionForMap()Lcom/android/camera/session/CaptureSession;
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    return-object v0
.end method

.method public getExternalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getPrevPhoto()[B
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getProgress()I

    move-result v0

    return v0
.end method

.method public getProgressMessageId()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getProgressMessageId()I

    move-result v0

    return v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRecordListener()Lcom/android/camera/session/VideoRecordListener;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getVideoRecordListener()Lcom/android/camera/session/VideoRecordListener;

    move-result-object v0

    return-object v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->isCaptureIntent()Z

    move-result v0

    return v0
.end method

.method public isDisableSessionReturnData()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstShotInTwiceShot()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->isFirstShotInTwiceShot()Z

    move-result v0

    return v0
.end method

.method public isForceHideThumbnail()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public isImageHWRotate()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->isImageHWRotate()Z

    move-result v0

    return v0
.end method

.method public isMainCamera()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public isPreviewOnly()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public needMirror()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->needMirror()Z

    move-result v0

    return v0
.end method

.method public onCaptureFinish()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public prepareImageTitle()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->prepareImageTitle()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public registerImageSavedListener(Lcom/android/camera/session/CaptureSession$ImageSavedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession;->registerImageSavedListener(Lcom/android/camera/session/CaptureSession$ImageSavedListener;)V

    .line 284
    return-void
.end method

.method public removeProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession;->removeProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V

    .line 255
    return-void
.end method

.method public saveAndFinish(Lcom/android/camera/mpo/Bokeh_Info;Lcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .param p1, "data"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
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

    .prologue
    .line 194
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/camera/session/CaptureSession;->saveAndFinish(Lcom/android/camera/mpo/Bokeh_Info;Lcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .param p1, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
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

    .prologue
    .line 189
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/camera/session/CaptureSession;->saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .param p1, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p7, "imageFormat"    # I
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

    .prologue
    .line 199
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/session/CaptureSession;->saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public saveBurstImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)V
    .locals 7
    .param p1, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
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

    .prologue
    .line 204
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/camera/session/CaptureSession;->saveBurstImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)V

    .line 205
    return-void
.end method

.method public savePostProcessImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .param p1, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p7, "postProcessImage"    # Landroid/graphics/Bitmap;
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

    .prologue
    .line 209
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/session/CaptureSession;->savePostProcessImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public saveRawImage([BLcom/google/common/base/Optional;II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
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

    .prologue
    .line 214
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/camera/session/CaptureSession;->saveRawImage([BLcom/google/common/base/Optional;II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setBrandLogoViewData(Lcom/google/common/base/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/brandlogo/BrandLogoViewData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "brandLogoViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/brandlogo/BrandLogoViewData;>;"
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession;->setBrandLogoViewData(Lcom/google/common/base/Optional;)V

    .line 280
    return-void
.end method

.method public setCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 0
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 319
    return-void
.end method

.method public setDisableSessionReturnData(Z)V
    .locals 0
    .param p1, "isDisable"    # Z

    .prologue
    .line 330
    return-void
.end method

.method public setForceHideThumbnail(Z)V
    .locals 0
    .param p1, "hideThumbnail"    # Z

    .prologue
    .line 299
    return-void
.end method

.method public setImageHWRotate(Z)V
    .locals 1
    .param p1, "hw_do_rotate"    # Z

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession;->setImageHWRotate(Z)V

    .line 309
    return-void
.end method

.method public setIsCaptureIntent(Z)V
    .locals 1
    .param p1, "isCaptureIntent"    # Z

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession;->setIsCaptureIntent(Z)V

    .line 405
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession;->setLocation(Landroid/location/Location;)V

    .line 130
    return-void
.end method

.method public setMainCamera(Z)V
    .locals 0
    .param p1, "isMainCamera"    # Z

    .prologue
    .line 340
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 360
    return-void
.end method

.method public setPrevPhoto([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 350
    return-void
.end method

.method public setPreviewOnly(Z)V
    .locals 0
    .param p1, "previewOnly"    # Z

    .prologue
    .line 322
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession;->setProgress(I)V

    .line 135
    return-void
.end method

.method public setProgressMessage(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession;->setProgressMessage(I)V

    .line 150
    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 365
    return-void
.end method

.method public setWatermarkViewData(Lcom/google/common/base/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/watermark/WatermarkViewData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "watermarkViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/watermark/WatermarkViewData;>;"
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession;->setWatermarkViewData(Lcom/google/common/base/Optional;)V

    .line 276
    return-void
.end method

.method public startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "pictureSize"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 165
    return-void
.end method

.method public startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "placeholder"    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "progressMessageId"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/session/CaptureSession;->startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Landroid/graphics/Bitmap;I)V

    .line 175
    return-void
.end method

.method public startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Landroid/net/Uri;I)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "progressMessageId"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/session/CaptureSession;->startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Landroid/net/Uri;I)V

    .line 180
    return-void
.end method

.method public startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;[BI)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "placeholder"    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "progressMessageId"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/session/CaptureSession;->startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;[BI)V

    .line 170
    return-void
.end method

.method public unregisterImageSavedListener()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->unregisterImageSavedListener()V

    .line 289
    return-void
.end method

.method public updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/session/CaptureSession;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 160
    return-void
.end method

.method public updatePreview()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->updatePreview()V

    .line 245
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;->mParentSesssion:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 155
    return-void
.end method
