.class Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;
.super Ljava/lang/Object;
.source "YuvImageBackendImageSaver.java"

# interfaces
.implements Lcom/android/camera/processing/imagebackend/ImageProcessorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YuvImageProcessorListener"
.end annotation


# instance fields
.field private final mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field private final mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

.field private final mSession:Lcom/android/camera/session/CaptureSession;


# direct methods
.method private constructor <init>(Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$PictureSaverCallback;)V
    .locals 0
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;
    .param p2, "imageRotation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p3, "pictureSaverCallback"    # Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    .line 351
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 352
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 353
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$PictureSaverCallback;Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/session/CaptureSession;
    .param p2, "x1"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p3, "x2"    # Lcom/android/camera/one/OneCamera$PictureSaverCallback;
    .param p4, "x3"    # Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$1;

    .prologue
    .line 342
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;-><init>(Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$PictureSaverCallback;)V

    return-void
.end method


# virtual methods
.method public onPostProcessImageCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V
    .locals 3
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    .prologue
    const/16 v2, 0x32

    .line 383
    iget-object v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->POST_PROCESS_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    if-ne v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getProgress()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    const v1, 0x7f08024c

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSession;->setProgressMessage(I)V

    .line 386
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, v2}, Lcom/android/camera/session/CaptureSession;->setProgress(I)V

    .line 389
    :cond_0
    return-void
.end method

.method public onPostProcessUriResolved(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V
    .locals 3
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v2, 0x4b

    .line 450
    iget-object v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->POST_PROCESS_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    if-ne v0, v1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getProgress()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    const v1, 0x7f08024c

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSession;->setProgressMessage(I)V

    .line 453
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, v2}, Lcom/android/camera/session/CaptureSession;->setProgress(I)V

    .line 456
    :cond_0
    return-void
.end method

.method public onRawDataReady(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V
    .locals 2
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "payload"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;

    .prologue
    .line 393
    iget-object v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->RAW_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    if-ne v0, v1, :cond_0

    .line 396
    :cond_0
    return-void
.end method

.method public onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V
    .locals 2
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "payload"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;

    .prologue
    .line 373
    iget-object v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    if-ne v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    const/16 v1, 0x5f

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSession;->setProgress(I)V

    .line 375
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    iget-object v1, p2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;->data:[B

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera$PictureSaverCallback;->onRemoteThumbnailAvailable([B)V

    .line 379
    :cond_0
    return-void
.end method

.method public onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 427
    sget-object v0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$1;->$SwitchMap$com$android$camera$processing$imagebackend$TaskImageContainer$TaskInfo$Destination:[I

    iget-object v1, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    invoke-virtual {v1}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 436
    if-eqz p2, :cond_0

    .line 437
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 429
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->isImageHWRotate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lcom/android/camera/session/CaptureSession;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lcom/android/camera/session/CaptureSession;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V
    .locals 9
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "payload"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;

    .prologue
    const/4 v1, 0x0

    .line 402
    sget-object v2, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$1;->$SwitchMap$com$android$camera$processing$imagebackend$TaskImageContainer$TaskInfo$Destination:[I

    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    invoke-virtual {v3}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 423
    :goto_0
    return-void

    .line 404
    :pswitch_0
    iget-object v1, p2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;->data:[I

    iget-object v2, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->result:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v2, v2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->result:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v3, v3, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 407
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    invoke-interface {v1, v7, v2}, Lcom/android/camera/session/CaptureSession;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 410
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_1
    iget-object v2, p2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;->data:[I

    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->result:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v3, v3, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    iget-object v4, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->result:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v4, v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 413
    .local v0, "bitmapIntermediate":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 414
    .local v5, "matrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 416
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 417
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    .line 415
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 418
    .local v8, "bitmapIntermediateRotated":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1, v8}, Lcom/android/camera/session/CaptureSession;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 419
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    const v2, 0x7f08024c

    invoke-interface {v1, v2}, Lcom/android/camera/session/CaptureSession;->setProgressMessage(I)V

    .line 420
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    const/16 v2, 0x19

    invoke-interface {v1, v2}, Lcom/android/camera/session/CaptureSession;->setProgress(I)V

    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V
    .locals 0
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 446
    return-void
.end method

.method public onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V
    .locals 2
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    .prologue
    .line 357
    sget-object v0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$1;->$SwitchMap$com$android$camera$processing$imagebackend$TaskImageContainer$TaskInfo$Destination:[I

    iget-object v1, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    invoke-virtual {v1}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 368
    :pswitch_0
    return-void

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
