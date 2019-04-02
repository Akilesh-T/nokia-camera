.class final Lcom/android/camera/BokehModule$ShutterCallback;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;
.implements Lcom/android/camera/BokehModule$SavePictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# static fields
.field private static final PREVIEW_DOWN_SAMPLE_FACTOR:I = 0x2


# instance fields
.field private mCallback:Lcom/android/camera/BokehModule$ShutterCallback;

.field private final mNeedsAnimation:Z

.field private final mUsePostProcess:Z

.field final memento:Lcom/android/camera/BokehModule$Memento;

.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/BokehModule;ZLcom/android/camera/BokehModule$Memento;Z)V
    .locals 0
    .param p2, "needsAnimation"    # Z
    .param p3, "memento"    # Lcom/android/camera/BokehModule$Memento;
    .param p4, "usePostProcess"    # Z

    .prologue
    .line 876
    iput-object p1, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    iput-boolean p2, p0, Lcom/android/camera/BokehModule$ShutterCallback;->mNeedsAnimation:Z

    .line 878
    iput-object p3, p0, Lcom/android/camera/BokehModule$ShutterCallback;->memento:Lcom/android/camera/BokehModule$Memento;

    .line 879
    iput-boolean p4, p0, Lcom/android/camera/BokehModule$ShutterCallback;->mUsePostProcess:Z

    .line 880
    iput-object p0, p0, Lcom/android/camera/BokehModule$ShutterCallback;->mCallback:Lcom/android/camera/BokehModule$ShutterCallback;

    .line 881
    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/BokehModule$ShutterCallback;)Lcom/android/camera/BokehModule$ShutterCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule$ShutterCallback;

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/camera/BokehModule$ShutterCallback;->mCallback:Lcom/android/camera/BokehModule$ShutterCallback;

    return-object v0
.end method

.method private flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 981
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 982
    .local v5, "flipHorizontalMatrix":Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$2400(Lcom/android/camera/BokehModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 987
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 988
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 989
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    .line 988
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 985
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

    .line 973
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 974
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 976
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 977
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    .line 976
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getTitle(Lcom/android/camera/BokehModule$Memento;)Ljava/lang/String;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/BokehModule$Memento;

    .prologue
    .line 999
    invoke-static {p1}, Lcom/android/camera/BokehModule$Memento;->access$2800(Lcom/android/camera/BokehModule$Memento;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnimateCapture()Z
    .locals 1

    .prologue
    .line 1004
    const/4 v0, 0x1

    return v0
.end method

.method public isFakeImage()Z
    .locals 1

    .prologue
    .line 1025
    const/4 v0, 0x1

    return v0
.end method

.method public isHandleImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 1009
    const/4 v0, 0x0

    return v0
.end method

.method public isNotifyRemoteShutterListner()Z
    .locals 1

    .prologue
    .line 1014
    const/4 v0, 0x0

    return v0
.end method

.method public isUpdateThumbnail()Z
    .locals 1

    .prologue
    .line 994
    const/4 v0, 0x1

    return v0
.end method

.method public isUseWaterMark()Z
    .locals 2

    .prologue
    .line 1019
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PosRawPictureCallback isUseWaterMark = false"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1020
    const/4 v0, 0x0

    return v0
.end method

.method public onShutter(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 14
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 885
    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/android/camera/BokehModule;->access$1902(Lcom/android/camera/BokehModule;J)J

    .line 886
    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    iget-object v9, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v9}, Lcom/android/camera/BokehModule;->access$1900(Lcom/android/camera/BokehModule;)J

    move-result-wide v10

    iget-object v9, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    iget-wide v12, v9, Lcom/android/camera/BokehModule;->mCaptureStartTime:J

    sub-long/2addr v10, v12

    iput-wide v10, v8, Lcom/android/camera/BokehModule;->mShutterLag:J

    .line 887
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mShutterLag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    iget-wide v10, v10, Lcom/android/camera/BokehModule;->mShutterLag:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 888
    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v8}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/camera/app/AppController;->stopFlashAnimationAfterTakePicture(Z)V

    .line 889
    iget-boolean v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->mNeedsAnimation:Z

    if-eqz v8, :cond_0

    .line 896
    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v8}, Lcom/android/camera/BokehModule;->access$2000(Lcom/android/camera/BokehModule;)V

    .line 899
    :cond_0
    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v8}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/camera/app/CameraAppUI;->getPreviewFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 900
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->memento:Lcom/android/camera/BokehModule$Memento;

    invoke-static {v8}, Lcom/android/camera/BokehModule$Memento;->access$2100(Lcom/android/camera/BokehModule$Memento;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 901
    invoke-direct {p0, v0}, Lcom/android/camera/BokehModule$ShutterCallback;->flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 902
    .local v1, "flipBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 903
    move-object v0, v1

    .line 907
    .end local v1    # "flipBmp":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v8}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/BokehModule$ShutterCallback;->memento:Lcom/android/camera/BokehModule$Memento;

    invoke-static {v9}, Lcom/android/camera/BokehModule$Memento;->access$2200(Lcom/android/camera/BokehModule$Memento;)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v3

    .line 908
    .local v3, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v6

    .line 909
    .local v6, "sensorOrientation":I
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 912
    .local v7, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->memento:Lcom/android/camera/BokehModule$Memento;

    invoke-static {v8}, Lcom/android/camera/BokehModule$Memento;->access$2300(Lcom/android/camera/BokehModule$Memento;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v8

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v8, v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    .line 913
    .local v2, "hw_rotate_support":Z
    iget-boolean v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->mUsePostProcess:Z

    if-nez v8, :cond_2

    invoke-static {}, Lcom/android/camera/product_utils/ProductUtil;->isSupportedLib2DRotate()Z

    move-result v8

    if-nez v8, :cond_6

    :cond_2
    if-nez v2, :cond_6

    .line 914
    if-eqz v6, :cond_5

    .line 915
    rsub-int v4, v6, 0x168

    .line 916
    .local v4, "rotate":I
    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->memento:Lcom/android/camera/BokehModule$Memento;

    invoke-static {v8}, Lcom/android/camera/BokehModule$Memento;->access$2100(Lcom/android/camera/BokehModule$Memento;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 917
    move v4, v6

    .line 920
    :cond_3
    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v8}, Lcom/android/camera/BokehModule;->access$2400(Lcom/android/camera/BokehModule;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v8}, Lcom/android/camera/BokehModule;->access$2500(Lcom/android/camera/BokehModule;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->memento:Lcom/android/camera/BokehModule$Memento;

    invoke-static {v8}, Lcom/android/camera/BokehModule$Memento;->access$2600(Lcom/android/camera/BokehModule$Memento;)I

    move-result v8

    rem-int/lit16 v8, v8, 0xb4

    if-nez v8, :cond_4

    .line 921
    add-int/lit16 v4, v4, 0xb4

    .line 924
    :cond_4
    int-to-float v8, v4

    invoke-direct {p0, v0, v8}, Lcom/android/camera/BokehModule$ShutterCallback;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 925
    .local v5, "rotatedBmp":Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v5, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 926
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 944
    .end local v4    # "rotate":I
    .end local v5    # "rotatedBmp":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 945
    const/4 v0, 0x0

    .line 947
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/camera/BokehModule$ShutterCallback$1;

    invoke-direct {v9, p0, v7}, Lcom/android/camera/BokehModule$ShutterCallback$1;-><init>(Lcom/android/camera/BokehModule$ShutterCallback;Ljava/io/ByteArrayOutputStream;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 969
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 970
    return-void

    .line 929
    :cond_5
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v0, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 934
    :cond_6
    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->memento:Lcom/android/camera/BokehModule$Memento;

    invoke-static {v8}, Lcom/android/camera/BokehModule$Memento;->access$2600(Lcom/android/camera/BokehModule$Memento;)I

    move-result v8

    add-int/lit8 v4, v8, -0x5a

    .line 935
    .restart local v4    # "rotate":I
    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v8}, Lcom/android/camera/BokehModule;->access$2400(Lcom/android/camera/BokehModule;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v8}, Lcom/android/camera/BokehModule;->access$2500(Lcom/android/camera/BokehModule;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/camera/BokehModule$ShutterCallback;->memento:Lcom/android/camera/BokehModule$Memento;

    invoke-static {v8}, Lcom/android/camera/BokehModule$Memento;->access$2600(Lcom/android/camera/BokehModule$Memento;)I

    move-result v8

    rem-int/lit16 v8, v8, 0xb4

    if-nez v8, :cond_7

    .line 936
    add-int/lit16 v4, v4, 0xb4

    .line 938
    :cond_7
    int-to-float v8, v4

    invoke-direct {p0, v0, v8}, Lcom/android/camera/BokehModule$ShutterCallback;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 939
    .restart local v5    # "rotatedBmp":Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v5, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 940
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected savePreviewData([B)V
    .locals 2
    .param p1, "previewData"    # [B

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$3100(Lcom/android/camera/BokehModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/BokehModule$ShutterCallback$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/BokehModule$ShutterCallback$2;-><init>(Lcom/android/camera/BokehModule$ShutterCallback;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1036
    return-void
.end method
