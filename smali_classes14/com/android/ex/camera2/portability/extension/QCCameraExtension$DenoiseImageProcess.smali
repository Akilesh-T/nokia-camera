.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;
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
    name = "DenoiseImageProcess"
.end annotation


# instance fields
.field private final fHeight:I

.field private final fWidth:I

.field private final lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

.field private mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

.field private mReceivedShutterCount:I

.field private mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/hardware/Camera$Parameters;Landroid/os/Handler;ILcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .locals 18
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
    .param p5, "imageFormat"    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "cameraExtensionCaptureCallbacks"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .prologue
    .line 943
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    .line 944
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/CameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;)V

    .line 937
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 939
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mReceivedShutterCount:I

    .line 945
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .line 947
    const/16 v16, 0x1

    .line 948
    .local v16, "isHWRotateSupported":Z
    const-string v4, "hw-rotate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 949
    .local v15, "hw_rotate_supported":Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 950
    const-string v4, "1"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 952
    :cond_0
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DenoiseImageProcess - isHWRotateSupported = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v17

    .line 957
    .local v17, "pictureSize":Landroid/hardware/Camera$Size;
    if-eqz v16, :cond_2

    .line 958
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    iget v4, v4, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mJpegRotation:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_1

    .line 959
    move-object/from16 v0, v17

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->fWidth:I

    .line 960
    move-object/from16 v0, v17

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->fHeight:I

    .line 970
    :goto_0
    move-object/from16 v0, p6

    iget-boolean v4, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsUsePostProcess:Z

    invoke-static {v4}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch;->getImageEngineFactory(Z)Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    iget-boolean v5, v5, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsCameraFrontFacing:Z

    if-nez v5, :cond_3

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->fWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->fHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    iget v12, v5, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsoValue:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    iget-boolean v13, v5, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsLongExposureTime:Z

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move/from16 v11, p5

    .line 971
    invoke-virtual/range {v4 .. v14}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newDenoiseImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIIZLandroid/hardware/camera2/CameraCharacteristics;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .line 973
    return-void

    .line 962
    :cond_1
    move-object/from16 v0, v17

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->fWidth:I

    .line 963
    move-object/from16 v0, v17

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->fHeight:I

    goto :goto_0

    .line 966
    :cond_2
    move-object/from16 v0, v17

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->fWidth:I

    .line 967
    move-object/from16 v0, v17

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->fHeight:I

    goto :goto_0

    .line 970
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method static synthetic access$2200(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    .prologue
    .line 935
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mReceivedShutterCount:I

    return v0
.end method

.method static synthetic access$2408(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    .prologue
    .line 935
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mReceivedShutterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mReceivedShutterCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;Lcom/thirdparty/arcsoft/engine/ImageEngineBase;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;
    .param p1, "x1"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .prologue
    .line 935
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    return-object p1
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 1009
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1010
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1018
    :goto_0
    return-void

    .line 1011
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "DenoiseImageProcess - abort"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1017
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->abort()V

    goto :goto_0

    .line 1011
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
    .line 1023
    return-void
.end method

.method public onPostImage(III[B)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "postImage"    # [B

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1088
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "DenoiseImageProcess - onPreviewImage run in engine thread"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$6;

    invoke-direct {v1, p0, p4}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$6;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1089
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
    .line 1104
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "DenoiseImageProcess - onPostProcessDone"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mPostView:Landroid/hardware/Camera$PictureCallback;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1106
    return-void
.end method

.method public onProcessAbort()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1027
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "DenoiseImageProcess - onProcessAbort"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 1030
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$3;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$3;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)V

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

    .line 1057
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "DenoiseImageProcess - onProcessDone"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 1064
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$5;

    invoke-direct {v1, p0, p4}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$5;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1059
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
    .line 1080
    return-void
.end method

.method public onProcessError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 1045
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DenoiseImageProcess - onProcessError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$4;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$4;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 977
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->start()V

    .line 978
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$1;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$1;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)V

    new-instance v2, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$2;

    invoke-direct {v2, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$2;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)V

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1005
    return-void
.end method
