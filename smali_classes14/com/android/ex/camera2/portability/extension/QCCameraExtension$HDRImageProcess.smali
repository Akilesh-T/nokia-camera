.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;
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
    name = "HDRImageProcess"
.end annotation


# instance fields
.field private final NUM_PER_SHOT:I

.field private final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

.field private final fHeight:I

.field private final fWidth:I

.field private final lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

.field private mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

.field private mReceivedShutterCount:I

.field private mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Landroid/hardware/Camera$Parameters;IILcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .locals 13
    .param p1    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraExtension"    # Lcom/android/ex/camera2/portability/extension/CameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p5, "num_per_shot"    # I
    .param p6, "imageFormat"    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "cameraExtensionCaptureCallbacks"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    .line 538
    invoke-direct/range {p0 .. p3}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/CameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;)V

    .line 526
    new-instance v1, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v2, "HDRImageProcess"

    invoke-direct {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    .line 528
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mReceivedShutterCount:I

    .line 529
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 539
    move/from16 v0, p5

    iput v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->NUM_PER_SHOT:I

    .line 540
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .line 542
    const/4 v11, 0x1

    .line 543
    .local v11, "isHWRotateSupported":Z
    const-string v1, "hw-rotate"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 544
    .local v10, "hw_rotate_supported":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 545
    const-string v1, "1"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HDRImageProcess - isHWRotateSupported = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 553
    .local v12, "pictureSize":Landroid/hardware/Camera$Size;
    if-eqz v11, :cond_2

    .line 554
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    iget v1, v1, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mJpegRotation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_1

    .line 555
    iget v1, v12, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->fWidth:I

    .line 556
    iget v1, v12, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->fHeight:I

    .line 566
    :goto_0
    move-object/from16 v0, p7

    iget-boolean v1, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsUsePostProcess:Z

    invoke-static {v1}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch;->getImageEngineFactory(Z)Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    move-result-object v1

    const/4 v4, 0x0

    .line 570
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCameraId()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v5, 0x1

    :goto_1
    iget v6, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->fWidth:I

    iget v7, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->fHeight:I

    const/4 v9, 0x0

    move-object v2, p0

    move/from16 v3, p5

    move/from16 v8, p6

    .line 567
    invoke-virtual/range {v1 .. v9}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newHDRImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIILandroid/hardware/camera2/CameraCharacteristics;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .line 574
    return-void

    .line 558
    :cond_1
    iget v1, v12, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->fWidth:I

    .line 559
    iget v1, v12, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->fHeight:I

    goto :goto_0

    .line 562
    :cond_2
    iget v1, v12, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->fWidth:I

    .line 563
    iget v1, v12, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->fHeight:I

    goto :goto_0

    .line 570
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static synthetic access$1100(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    .prologue
    .line 525
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mReceivedShutterCount:I

    return v0
.end method

.method static synthetic access$1408(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    .prologue
    .line 525
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mReceivedShutterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mReceivedShutterCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;Lcom/thirdparty/arcsoft/engine/ImageEngineBase;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;
    .param p1, "x1"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    return-object p1
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 609
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 617
    :goto_0
    return-void

    .line 611
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "HDRImageProcess - abort"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 616
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->abort()V

    goto :goto_0

    .line 611
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public onPostImage(III[B)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "postImage"    # [B

    .prologue
    .line 684
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "HDRImageProcess - onPreviewImage run in engine thread"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$6;

    invoke-direct {v1, p0, p4}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$6;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 686
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPostProcessDone([B)V
    .locals 2
    .param p1, "jepgData"    # [B

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mPostView:Landroid/hardware/Camera$PictureCallback;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 702
    return-void
.end method

.method public onProcessAbort()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 627
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "HDRImageProcess - onProcessAbort"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 641
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 630
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$3;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$3;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)V

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

    .line 657
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "HDRImageProcess - onProcessDone"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 664
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$5;

    invoke-direct {v1, p0, p4}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$5;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 659
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
    .line 680
    return-void
.end method

.method public onProcessError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDRImageProcess - onProcessError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$4;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$4;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 578
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->start()V

    .line 579
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$1;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$1;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)V

    new-instance v2, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$2;

    invoke-direct {v2, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$2;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)V

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 605
    return-void
.end method
