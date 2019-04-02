.class Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;
.super Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;
.source "MTKCameraExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoramaImageProcess"
.end annotation


# instance fields
.field private final lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

.field mCurrentNum:I

.field private mIsMerging:Z

.field minvokehandler:Ljava/lang/reflect/InvocationHandler;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V
    .locals 1
    .param p1    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraExtension"    # Lcom/android/ex/camera2/portability/extension/CameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "capturePanoramaCallback"    # Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    .prologue
    const/4 v0, 0x0

    .line 258
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/CameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;)V

    .line 254
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mCurrentNum:I

    .line 256
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mIsMerging:Z

    .line 261
    iput-object p4, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    .line 263
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 265
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    .line 267
    new-instance v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$1;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$1;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->minvokehandler:Ljava/lang/reflect/InvocationHandler;

    .line 287
    return-void
.end method

.method static synthetic access$600(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;
    .param p1, "x1"    # [B

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->onPictureTaken([B)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mIsMerging:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;)Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    return-object v0
.end method

.method private onPictureTaken([B)V
    .locals 11
    .param p1, "jpegData"    # [B

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x9

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 291
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mCurrentNum:I

    if-eq v0, v10, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mIsMerging:Z

    if-eqz v0, :cond_3

    .line 292
    :cond_0
    if-eqz p1, :cond_1

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mCurrentNum:I

    .line 294
    iput-boolean v2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mIsMerging:Z

    .line 296
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0, v9}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 300
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaPictureTaken([B)V

    .line 301
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$2;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$2;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 310
    :cond_3
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mCurrentNum:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mCurrentNum:I

    if-ge v0, v10, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    iget v5, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mCurrentNum:I

    move v3, v2

    move-object v4, v1

    move-object v6, v1

    move v7, v2

    move v8, v2

    invoke-interface/range {v0 .. v8}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaPreviewFrame(Landroid/graphics/Bitmap;II[II[III)V

    .line 313
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mCurrentNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mCurrentNum:I

    .line 315
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mCurrentNum:I

    if-ne v0, v10, :cond_1

    .line 316
    iput-boolean v9, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mIsMerging:Z

    .line 317
    invoke-direct {p0, v9}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->stop(Z)V

    goto :goto_0
.end method

.method private stop(Z)V
    .locals 9
    .param p1, "ismerge"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 359
    :try_start_0
    const-string v5, "android.hardware.Camera"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 361
    .local v0, "cameraClazz":Ljava/lang/Class;
    const-string v5, "stopAutoRama"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 363
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 374
    .end local v0    # "cameraClazz":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .restart local v0    # "cameraClazz":Ljava/lang/Class;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    move v3, v4

    .line 363
    goto :goto_0

    .line 365
    .end local v0    # "cameraClazz":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 367
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 369
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 371
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public abort()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 378
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaFailed(I)V

    .line 379
    iput-boolean v2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mIsMerging:Z

    .line 380
    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->stop(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 391
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0, v3}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 384
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$3;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$3;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mIsMerging:Z

    .line 396
    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->stop(Z)V

    .line 397
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 324
    iput v4, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->mCurrentNum:I

    .line 326
    iget-object v4, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    const-string v5, "android.hardware.Camera$AutoRamaCallback"

    const-string v6, "setAutoRamaCallback"

    iget-object v7, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->minvokehandler:Ljava/lang/reflect/InvocationHandler;

    invoke-static {v4, v5, v6, v7}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->access$900(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)V

    .line 328
    iget-object v4, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    const-string v5, "android.hardware.Camera$AutoRamaMoveCallback"

    const-string v6, "setAutoRamaMoveCallback"

    iget-object v7, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->minvokehandler:Ljava/lang/reflect/InvocationHandler;

    invoke-static {v4, v5, v6, v7}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->access$900(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)V

    .line 330
    const-class v4, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 333
    .local v2, "loader":Ljava/lang/ClassLoader;
    :try_start_0
    const-string v4, "android.hardware.Camera"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 335
    .local v0, "cameraClazz":Ljava/lang/Class;
    const-string v4, "startAutoRama"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 337
    .local v3, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 352
    .end local v0    # "cameraClazz":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 341
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->abort()V

    goto :goto_0

    .line 342
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 344
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->abort()V

    goto :goto_0

    .line 345
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 347
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->abort()V

    goto :goto_0

    .line 348
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 350
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->abort()V

    goto :goto_0
.end method
