.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;
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
    name = "LowLightImageProcess"
.end annotation


# instance fields
.field private final fHeight:I

.field private final fWidth:I

.field private final lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

.field private mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

.field private mReceivedPictureCount:I

.field private mReceivedShutterCount:I

.field private final mRepeatingRunable:Ljava/lang/Runnable;

.field private mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Landroid/hardware/Camera$Parameters;ILcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .locals 14
    .param p1    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraExtension"    # Lcom/android/ex/camera2/portability/extension/CameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p5, "imageFormat"    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "cameraExtensionCaptureCallbacks"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    .line 717
    invoke-direct/range {p0 .. p3}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/CameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;)V

    .line 707
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mReceivedShutterCount:I

    .line 708
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mReceivedPictureCount:I

    .line 709
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 718
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .line 720
    const/4 v12, 0x1

    .line 721
    .local v12, "isHWRotateSupported":Z
    const-string v1, "hw-rotate"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 722
    .local v11, "hw_rotate_supported":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 723
    const-string v1, "1"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 725
    :cond_0
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LowLightImageProcess - isHWRotateSupported = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 730
    .local v13, "pictureSize":Landroid/hardware/Camera$Size;
    if-eqz v12, :cond_2

    .line 731
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    iget v1, v1, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mJpegRotation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_1

    .line 732
    iget v1, v13, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->fWidth:I

    .line 733
    iget v1, v13, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->fHeight:I

    .line 743
    :goto_0
    move-object/from16 v0, p6

    iget-boolean v1, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsUsePostProcess:Z

    invoke-static {v1}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch;->getImageEngineFactory(Z)Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    iget-boolean v2, v2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsCameraFrontFacing:Z

    if-nez v2, :cond_3

    const/4 v5, 0x1

    :goto_1
    iget v6, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->fWidth:I

    iget v7, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->fHeight:I

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    iget v9, v2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsoValue:I

    const/4 v10, 0x0

    move-object v2, p0

    move/from16 v8, p5

    .line 744
    invoke-virtual/range {v1 .. v10}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newNightShotImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIILandroid/hardware/camera2/CameraCharacteristics;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .line 752
    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;Lcom/android/ex/camera2/portability/extension/QCCameraExtension;)V

    iput-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mRepeatingRunable:Ljava/lang/Runnable;

    .line 799
    return-void

    .line 735
    :cond_1
    iget v1, v13, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->fWidth:I

    .line 736
    iget v1, v13, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->fHeight:I

    goto :goto_0

    .line 739
    :cond_2
    iget v1, v13, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->fWidth:I

    .line 740
    iget v1, v13, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->fHeight:I

    goto :goto_0

    .line 743
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static synthetic access$1600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    .prologue
    .line 705
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mReceivedShutterCount:I

    return v0
.end method

.method static synthetic access$1708(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    .prologue
    .line 705
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mReceivedShutterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mReceivedShutterCount:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    .prologue
    .line 705
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mReceivedPictureCount:I

    return v0
.end method

.method static synthetic access$1808(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    .prologue
    .line 705
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mReceivedPictureCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mReceivedPictureCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mRepeatingRunable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;Lcom/thirdparty/arcsoft/engine/ImageEngineBase;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;
    .param p1, "x1"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    return-object p1
.end method


# virtual methods
.method public abort()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 814
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 815
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "LowLightImageProcess - abort"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 821
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$400(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Z)V

    .line 824
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 826
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->abort()V

    goto :goto_0

    .line 816
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
    .line 834
    return-void
.end method

.method public onPostImage(III[B)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "postImage"    # [B

    .prologue
    .line 904
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 905
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "LowLightImageProcess - onPreviewImage run in engine thread"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$5;

    invoke-direct {v1, p0, p4}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$5;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 906
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
    .line 921
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mPostView:Landroid/hardware/Camera$PictureCallback;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 922
    return-void
.end method

.method public onProcessAbort()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 838
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "LowLightImageProcess - onProcessAbort"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 852
    :goto_0
    return-void

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 841
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$2;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$2;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)V

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

    .line 868
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 869
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "LowLightImageProcess - onProcessDone"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 874
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$400(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Z)V

    .line 877
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 879
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 881
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$4;

    invoke-direct {v1, p0, p4}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$4;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 870
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
    .line 898
    return-void
.end method

.method public onProcessError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 856
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LowLightImageProcess - onProcessError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$3;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$3;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 806
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$400(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Z)V

    .line 808
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->start()V

    .line 809
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mRepeatingRunable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 810
    return-void
.end method
