.class final Lcom/android/camera/BeautyModule$ShutterCallback;
.super Ljava/lang/Object;
.source "BeautyModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;
.implements Lcom/android/camera/BeautyModule$SavePictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# static fields
.field private static final PREVIEW_DOWN_SAMPLE_FACTOR:I = 0x2


# instance fields
.field private final mNeedsAnimation:Z

.field private final mUsePostProcess:Z

.field final memento:Lcom/android/camera/BeautyModule$Memento;

.field final synthetic this$0:Lcom/android/camera/BeautyModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/BeautyModule;ZLcom/android/camera/BeautyModule$Memento;Z)V
    .locals 0
    .param p2, "needsAnimation"    # Z
    .param p3, "memento"    # Lcom/android/camera/BeautyModule$Memento;
    .param p4, "usePostProcess"    # Z

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-boolean p2, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->mNeedsAnimation:Z

    .line 729
    iput-object p3, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->memento:Lcom/android/camera/BeautyModule$Memento;

    .line 730
    iput-boolean p4, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->mUsePostProcess:Z

    .line 731
    return-void
.end method

.method private flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 809
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 810
    .local v5, "flipHorizontalMatrix":Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$2000(Lcom/android/camera/BeautyModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 815
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 816
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 817
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    .line 816
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 813
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

    .line 801
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 802
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 804
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 805
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    .line 804
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getTitle(Lcom/android/camera/BeautyModule$Memento;)Ljava/lang/String;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 827
    invoke-static {p1}, Lcom/android/camera/BeautyModule$Memento;->access$2300(Lcom/android/camera/BeautyModule$Memento;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnimateCapture()Z
    .locals 1

    .prologue
    .line 832
    const/4 v0, 0x1

    return v0
.end method

.method public isFakeImage()Z
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x1

    return v0
.end method

.method public isHandleImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method public isNotifyRemoteShutterListner()Z
    .locals 1

    .prologue
    .line 842
    const/4 v0, 0x0

    return v0
.end method

.method public isUpdateThumbnail()Z
    .locals 1

    .prologue
    .line 822
    const/4 v0, 0x1

    return v0
.end method

.method public isUseWaterMark()Z
    .locals 2

    .prologue
    .line 847
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PosRawPictureCallback isUseWaterMark = false"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method public onShutter(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 14
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 735
    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/android/camera/BeautyModule;->access$1502(Lcom/android/camera/BeautyModule;J)J

    .line 736
    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    iget-object v9, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v9}, Lcom/android/camera/BeautyModule;->access$1500(Lcom/android/camera/BeautyModule;)J

    move-result-wide v10

    iget-object v9, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    iget-wide v12, v9, Lcom/android/camera/BeautyModule;->mCaptureStartTime:J

    sub-long/2addr v10, v12

    iput-wide v10, v8, Lcom/android/camera/BeautyModule;->mShutterLag:J

    .line 737
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mShutterLag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    iget-wide v10, v10, Lcom/android/camera/BeautyModule;->mShutterLag:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 738
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    const-string v9, "BeautyModule--stopFlashAnimationAfterTakePicture"

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 739
    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v8}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/camera/app/AppController;->stopFlashAnimationAfterTakePicture(Z)V

    .line 740
    iget-boolean v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->mNeedsAnimation:Z

    if-eqz v8, :cond_0

    .line 741
    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v8}, Lcom/android/camera/BeautyModule;->access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;

    move-result-object v8

    new-instance v9, Lcom/android/camera/BeautyModule$ShutterCallback$1;

    invoke-direct {v9, p0}, Lcom/android/camera/BeautyModule$ShutterCallback$1;-><init>(Lcom/android/camera/BeautyModule$ShutterCallback;)V

    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 749
    :cond_0
    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v8}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/camera/app/CameraAppUI;->getPreviewFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 750
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->memento:Lcom/android/camera/BeautyModule$Memento;

    invoke-static {v8}, Lcom/android/camera/BeautyModule$Memento;->access$1700(Lcom/android/camera/BeautyModule$Memento;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 751
    invoke-direct {p0, v0}, Lcom/android/camera/BeautyModule$ShutterCallback;->flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 752
    .local v1, "flipBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 753
    move-object v0, v1

    .line 757
    .end local v1    # "flipBmp":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v8}, Lcom/android/camera/BeautyModule;->access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->memento:Lcom/android/camera/BeautyModule$Memento;

    invoke-static {v9}, Lcom/android/camera/BeautyModule$Memento;->access$1800(Lcom/android/camera/BeautyModule$Memento;)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v3

    .line 758
    .local v3, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v6

    .line 759
    .local v6, "sensorOrientation":I
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 762
    .local v7, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->memento:Lcom/android/camera/BeautyModule$Memento;

    invoke-static {v8}, Lcom/android/camera/BeautyModule$Memento;->access$1900(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v8

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v8, v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    .line 763
    .local v2, "hw_rotate_support":Z
    iget-boolean v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->mUsePostProcess:Z

    if-nez v8, :cond_2

    invoke-static {}, Lcom/android/camera/product_utils/ProductUtil;->isSupportedLib2DRotate()Z

    move-result v8

    if-nez v8, :cond_6

    :cond_2
    if-nez v2, :cond_6

    .line 764
    if-eqz v6, :cond_5

    .line 765
    rsub-int v4, v6, 0x168

    .line 766
    .local v4, "rotate":I
    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->memento:Lcom/android/camera/BeautyModule$Memento;

    invoke-static {v8}, Lcom/android/camera/BeautyModule$Memento;->access$1700(Lcom/android/camera/BeautyModule$Memento;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 767
    move v4, v6

    .line 770
    :cond_3
    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v8}, Lcom/android/camera/BeautyModule;->access$2000(Lcom/android/camera/BeautyModule;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v8}, Lcom/android/camera/BeautyModule;->access$2100(Lcom/android/camera/BeautyModule;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->memento:Lcom/android/camera/BeautyModule$Memento;

    invoke-static {v8}, Lcom/android/camera/BeautyModule$Memento;->access$2200(Lcom/android/camera/BeautyModule$Memento;)I

    move-result v8

    rem-int/lit16 v8, v8, 0xb4

    if-nez v8, :cond_4

    .line 771
    add-int/lit16 v4, v4, 0xb4

    .line 774
    :cond_4
    int-to-float v8, v4

    invoke-direct {p0, v0, v8}, Lcom/android/camera/BeautyModule$ShutterCallback;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 775
    .local v5, "rotatedBmp":Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v5, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 776
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 794
    .end local v4    # "rotate":I
    .end local v5    # "rotatedBmp":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 795
    const/4 v0, 0x0

    .line 797
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/camera/BeautyModule$ShutterCallback;->savePreviewData([B)V

    .line 798
    return-void

    .line 779
    :cond_5
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v0, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 784
    :cond_6
    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->memento:Lcom/android/camera/BeautyModule$Memento;

    invoke-static {v8}, Lcom/android/camera/BeautyModule$Memento;->access$2200(Lcom/android/camera/BeautyModule$Memento;)I

    move-result v8

    add-int/lit8 v4, v8, -0x5a

    .line 785
    .restart local v4    # "rotate":I
    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v8}, Lcom/android/camera/BeautyModule;->access$2000(Lcom/android/camera/BeautyModule;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v8}, Lcom/android/camera/BeautyModule;->access$2100(Lcom/android/camera/BeautyModule;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->memento:Lcom/android/camera/BeautyModule$Memento;

    invoke-static {v8}, Lcom/android/camera/BeautyModule$Memento;->access$2200(Lcom/android/camera/BeautyModule$Memento;)I

    move-result v8

    rem-int/lit16 v8, v8, 0xb4

    if-nez v8, :cond_7

    .line 786
    add-int/lit16 v4, v4, 0xb4

    .line 788
    :cond_7
    int-to-float v8, v4

    invoke-direct {p0, v0, v8}, Lcom/android/camera/BeautyModule$ShutterCallback;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 789
    .restart local v5    # "rotatedBmp":Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v5, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 790
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected savePreviewData([B)V
    .locals 1
    .param p1, "previewData"    # [B

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/camera/BeautyModule$ShutterCallback;->memento:Lcom/android/camera/BeautyModule$Memento;

    invoke-static {v0, p1, p0}, Lcom/android/camera/BeautyModule$Memento;->access$2400(Lcom/android/camera/BeautyModule$Memento;[BLcom/android/camera/BeautyModule$SavePictureCallback;)V

    .line 858
    return-void
.end method
