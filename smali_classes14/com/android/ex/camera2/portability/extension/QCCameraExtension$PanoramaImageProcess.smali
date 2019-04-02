.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;
.super Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;
.source "QCCameraExtension.java"

# interfaces
.implements Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoramaImageProcess"
.end annotation


# instance fields
.field private final IMAGE_FORMAT:I

.field private final lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

.field private mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngine;

.field private mReceivedPictureCount:I

.field private final mRepeatingRunable:Ljava/lang/Runnable;

.field private mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/hardware/Camera$Parameters;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;I)V
    .locals 17
    .param p1    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraExtension"    # Lcom/android/ex/camera2/portability/extension/CameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "capturePanoramaCallback"    # Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
    .param p6, "imageFormat"    # I

    .prologue
    .line 328
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    .line 329
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/CameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;)V

    .line 322
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mReceivedPictureCount:I

    .line 323
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 324
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 330
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    .line 331
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->IMAGE_FORMAT:I

    .line 333
    const/4 v15, 0x1

    .line 334
    .local v15, "isHWRotateSupported":Z
    const-string v4, "hw-rotate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 335
    .local v14, "hw_rotate_supported":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 336
    const-string v4, "1"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 339
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v16

    .line 343
    .local v16, "pictureSize":Landroid/hardware/Camera$Size;
    if-eqz v15, :cond_2

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    invoke-interface {v4}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->getImgOrientation()I

    move-result v4

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_1

    .line 345
    move-object/from16 v0, v16

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    .line 346
    .local v7, "width":I
    move-object/from16 v0, v16

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    .line 358
    .local v8, "height":I
    :goto_0
    new-instance v4, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    const/4 v6, 0x1

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    const/4 v13, 0x0

    move-object/from16 v5, p0

    move/from16 v9, p6

    invoke-direct/range {v4 .. v13}, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;ZIIIFFLcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    .line 360
    new-instance v4, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;Lcom/android/ex/camera2/portability/extension/QCCameraExtension;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mRepeatingRunable:Ljava/lang/Runnable;

    .line 400
    return-void

    .line 348
    .end local v7    # "width":I
    .end local v8    # "height":I
    :cond_1
    move-object/from16 v0, v16

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    .line 349
    .restart local v7    # "width":I
    move-object/from16 v0, v16

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v8    # "height":I
    goto :goto_0

    .line 352
    .end local v7    # "width":I
    .end local v8    # "height":I
    :cond_2
    move-object/from16 v0, v16

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    .line 353
    .restart local v7    # "width":I
    move-object/from16 v0, v16

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    .restart local v8    # "height":I
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mRepeatingRunable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    .prologue
    .line 318
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mReceivedPictureCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;
    .param p1, "x1"    # I

    .prologue
    .line 318
    iput p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mReceivedPictureCount:I

    return p1
.end method

.method static synthetic access$808(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    .prologue
    .line 318
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mReceivedPictureCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mReceivedPictureCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngine;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/thirdparty/arcsoft/engine/ImageEngine;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;
    .param p1, "x1"    # Lcom/thirdparty/arcsoft/engine/ImageEngine;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    return-object p1
.end method


# virtual methods
.method public abort()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 417
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PanoramaImageProcess - abort"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 432
    :goto_0
    return-void

    .line 420
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 425
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$400(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Z)V

    .line 428
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 430
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mRepeatingRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 431
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->abort()V

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 436
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 454
    :goto_0
    return-void

    .line 438
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 439
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 440
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 438
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 441
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 442
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PanoramaImageProcess - finish"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 447
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$400(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Z)V

    .line 450
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 452
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mRepeatingRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 453
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->finish()V

    goto :goto_0
.end method

.method public onPostImage(III[B)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "postImage"    # [B

    .prologue
    .line 518
    return-void
.end method

.method public onPostProcessDone([B)V
    .locals 0
    .param p1, "jepgData"    # [B

    .prologue
    .line 522
    return-void
.end method

.method public onProcessAbort()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 458
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PanoramaImageProcess - onProcessAbort"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 472
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 461
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$2;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$2;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onProcessDone(III[B)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "jepgData"    # [B

    .prologue
    const/4 v2, 0x1

    .line 490
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PanoramaImageProcess - onProcessDone"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 497
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    invoke-interface {v0, p4}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaPictureTaken([B)V

    .line 498
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$4;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$4;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;)V
    .locals 0
    .param p1, "bokehInfo"    # Lcom/android/camera/mpo/Bokeh_Info;

    .prologue
    .line 514
    return-void
.end method

.method public onProcessError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 476
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PanoramaImageProcess - onProcessError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 486
    :goto_0
    return-void

    .line 479
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$3;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$3;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 479
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 404
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PanoramaImageProcess - run"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 408
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$400(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Z)V

    .line 410
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->start()V

    .line 412
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mRepeatingRunable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 413
    return-void
.end method
