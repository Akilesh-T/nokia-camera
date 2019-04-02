.class final Lcom/android/camera/ManualModule$ShutterFakeImageCallback;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;
.implements Lcom/android/camera/ManualModule$SavePictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterFakeImageCallback"
.end annotation


# static fields
.field private static final PREVIEW_DOWN_SAMPLE_FACTOR:I = 0x2


# instance fields
.field private final mNeedsAnimation:Z

.field final memento:Lcom/android/camera/ManualModule$Memento;

.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/ManualModule;ZLcom/android/camera/ManualModule$Memento;)V
    .locals 0
    .param p2, "needsAnimation"    # Z
    .param p3, "memento"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3238
    iput-object p1, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3239
    iput-boolean p2, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->mNeedsAnimation:Z

    .line 3240
    iput-object p3, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->memento:Lcom/android/camera/ManualModule$Memento;

    .line 3241
    return-void
.end method

.method private flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 3335
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 3336
    .local v5, "flipHorizontalMatrix":Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$6400(Lcom/android/camera/ManualModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3337
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3341
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3342
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 3339
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0
.end method

.method private rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "angle"    # F

    .prologue
    const/4 v1, 0x0

    .line 3328
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 3329
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 3331
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getTitle(Lcom/android/camera/ManualModule$Memento;)Ljava/lang/String;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3352
    invoke-static {p1}, Lcom/android/camera/ManualModule$Memento;->access$2200(Lcom/android/camera/ManualModule$Memento;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnimateCapture()Z
    .locals 1

    .prologue
    .line 3357
    const/4 v0, 0x1

    return v0
.end method

.method public isFakeImage()Z
    .locals 1

    .prologue
    .line 3378
    const/4 v0, 0x1

    return v0
.end method

.method public isHandleImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 3362
    const/4 v0, 0x0

    return v0
.end method

.method public isNotifyRemoteShutterListner()Z
    .locals 1

    .prologue
    .line 3367
    const/4 v0, 0x0

    return v0
.end method

.method public isUpdateThumbnail()Z
    .locals 1

    .prologue
    .line 3347
    const/4 v0, 0x1

    return v0
.end method

.method public isUseWaterMark()Z
    .locals 2

    .prologue
    .line 3372
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PosRawPictureCallback isUseWaterMark = false"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3373
    const/4 v0, 0x0

    return v0
.end method

.method public onShutter(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 14
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 3245
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/android/camera/ManualModule;->access$1702(Lcom/android/camera/ManualModule;J)J

    .line 3246
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    iget-object v9, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v9}, Lcom/android/camera/ManualModule;->access$1700(Lcom/android/camera/ManualModule;)J

    move-result-wide v10

    iget-object v9, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    iget-wide v12, v9, Lcom/android/camera/ManualModule;->mCaptureStartTime:J

    sub-long/2addr v10, v12

    iput-wide v10, v8, Lcom/android/camera/ManualModule;->mShutterLag:J

    .line 3247
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mShutterLag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    iget-wide v10, v10, Lcom/android/camera/ManualModule;->mShutterLag:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3249
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    const-string v9, "PhotoModule--stopFlashAnimationAfterTakePicture"

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3250
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v8}, Lcom/android/camera/ManualModule;->access$2000(Lcom/android/camera/ManualModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3251
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v8}, Lcom/android/camera/ManualModule;->access$2000(Lcom/android/camera/ManualModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v8

    const-string v9, "ShutterCallback"

    invoke-interface {v8, v9}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3257
    :cond_0
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v8}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/camera/app/AppController;->stopFlashAnimationAfterTakePicture(Z)V

    .line 3258
    iget-boolean v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->mNeedsAnimation:Z

    if-eqz v8, :cond_1

    .line 3265
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v8}, Lcom/android/camera/ManualModule;->access$1800(Lcom/android/camera/ManualModule;)V

    .line 3269
    :cond_1
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v8}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/app/CameraAppUI;->setFakeShutterButtonEnabled()V

    .line 3270
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v8}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/app/CameraAppUI;->setFakeSwitchButtonEnabled()V

    .line 3272
    sget-boolean v8, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v8, :cond_2

    .line 3273
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v8}, Lcom/android/camera/ManualModule;->access$800(Lcom/android/camera/ManualModule;)Lcom/android/camera/ManualAbstractUI;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/ManualAbstractUI;->setEditableMode(ZZ)V

    .line 3276
    :cond_2
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v8}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/camera/app/CameraAppUI;->getPreviewFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3277
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->memento:Lcom/android/camera/ManualModule$Memento;

    invoke-static {v8}, Lcom/android/camera/ManualModule$Memento;->access$5900(Lcom/android/camera/ManualModule$Memento;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3278
    invoke-direct {p0, v0}, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3279
    .local v1, "flipBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3280
    move-object v0, v1

    .line 3284
    .end local v1    # "flipBmp":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v8}, Lcom/android/camera/ManualModule;->access$1000(Lcom/android/camera/ManualModule;)Lcom/android/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->memento:Lcom/android/camera/ManualModule$Memento;

    invoke-static {v9}, Lcom/android/camera/ManualModule$Memento;->access$6000(Lcom/android/camera/ManualModule$Memento;)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v3

    .line 3285
    .local v3, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v6

    .line 3286
    .local v6, "sensorOrientation":I
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3289
    .local v7, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->memento:Lcom/android/camera/ManualModule$Memento;

    invoke-static {v8}, Lcom/android/camera/ManualModule$Memento;->access$6100(Lcom/android/camera/ManualModule$Memento;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v8

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v8, v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    .line 3290
    .local v2, "hw_rotate_support":Z
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    iget-object v9, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v9}, Lcom/android/camera/ManualModule;->access$6200(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/ManualModule;->access$6300(Lcom/android/camera/ManualModule;Lcom/android/ex/camera2/portability/CaptureIntent;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/android/camera/product_utils/ProductUtil;->isSupportedLib2DRotate()Z

    move-result v8

    if-nez v8, :cond_8

    :cond_4
    if-nez v2, :cond_8

    .line 3291
    if-eqz v6, :cond_7

    .line 3292
    rsub-int v4, v6, 0x168

    .line 3293
    .local v4, "rotate":I
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->memento:Lcom/android/camera/ManualModule$Memento;

    invoke-static {v8}, Lcom/android/camera/ManualModule$Memento;->access$5900(Lcom/android/camera/ManualModule$Memento;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3294
    move v4, v6

    .line 3297
    :cond_5
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v8}, Lcom/android/camera/ManualModule;->access$6400(Lcom/android/camera/ManualModule;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v8}, Lcom/android/camera/ManualModule;->access$4600(Lcom/android/camera/ManualModule;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->memento:Lcom/android/camera/ManualModule$Memento;

    invoke-static {v8}, Lcom/android/camera/ManualModule$Memento;->access$6500(Lcom/android/camera/ManualModule$Memento;)I

    move-result v8

    rem-int/lit16 v8, v8, 0xb4

    if-nez v8, :cond_6

    .line 3298
    add-int/lit16 v4, v4, 0xb4

    .line 3301
    :cond_6
    int-to-float v8, v4

    invoke-direct {p0, v0, v8}, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3302
    .local v5, "rotatedBmp":Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v5, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3303
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 3321
    .end local v4    # "rotate":I
    .end local v5    # "rotatedBmp":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3322
    const/4 v0, 0x0

    .line 3324
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->savePreviewData([B)V

    .line 3325
    return-void

    .line 3306
    :cond_7
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v0, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 3311
    :cond_8
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->memento:Lcom/android/camera/ManualModule$Memento;

    invoke-static {v8}, Lcom/android/camera/ManualModule$Memento;->access$6500(Lcom/android/camera/ManualModule$Memento;)I

    move-result v8

    add-int/lit8 v4, v8, -0x5a

    .line 3312
    .restart local v4    # "rotate":I
    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v8}, Lcom/android/camera/ManualModule;->access$6400(Lcom/android/camera/ManualModule;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v8}, Lcom/android/camera/ManualModule;->access$4600(Lcom/android/camera/ManualModule;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->memento:Lcom/android/camera/ManualModule$Memento;

    invoke-static {v8}, Lcom/android/camera/ManualModule$Memento;->access$6500(Lcom/android/camera/ManualModule$Memento;)I

    move-result v8

    rem-int/lit16 v8, v8, 0xb4

    if-nez v8, :cond_9

    .line 3313
    add-int/lit16 v4, v4, 0xb4

    .line 3315
    :cond_9
    int-to-float v8, v4

    invoke-direct {p0, v0, v8}, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3316
    .restart local v5    # "rotatedBmp":Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v5, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3317
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected savePreviewData([B)V
    .locals 1
    .param p1, "previewData"    # [B

    .prologue
    .line 3382
    iget-object v0, p0, Lcom/android/camera/ManualModule$ShutterFakeImageCallback;->memento:Lcom/android/camera/ManualModule$Memento;

    invoke-static {v0, p1, p0}, Lcom/android/camera/ManualModule$Memento;->access$2100(Lcom/android/camera/ManualModule$Memento;[BLcom/android/camera/ManualModule$SavePictureCallback;)V

    .line 3383
    return-void
.end method
