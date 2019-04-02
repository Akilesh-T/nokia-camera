.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;
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
    name = "BeautyImageProcess"
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
    .locals 19
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
    .line 1228
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    .line 1229
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/CameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;)V

    .line 1222
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1224
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mReceivedShutterCount:I

    .line 1230
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .line 1232
    const/4 v15, 0x1

    .line 1233
    .local v15, "isHWRotateSupported":Z
    const-string v4, "hw-rotate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1234
    .local v13, "hw_rotate_supported":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 1235
    const-string v4, "1"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 1237
    :cond_0
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BeautyImageProcess - isHWRotateSupported = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v16

    .line 1240
    .local v16, "pictureSize":Landroid/hardware/Camera$Size;
    if-eqz v15, :cond_2

    .line 1241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    iget v4, v4, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mJpegRotation:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_1

    .line 1242
    move-object/from16 v0, v16

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->fWidth:I

    .line 1243
    move-object/from16 v0, v16

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->fHeight:I

    .line 1253
    :goto_0
    const-string v4, "flawless-face-level"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1254
    .local v17, "sBeautyLevel":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v12, 0x0

    .line 1256
    .local v12, "iBeautyLevel":I
    :goto_1
    const-string v4, "picselfie-enable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1257
    .local v18, "sPicSelfieEnable":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v14, 0x0

    .line 1259
    .local v14, "iPicSelfieEnable":I
    :goto_2
    move-object/from16 v0, p6

    iget-boolean v4, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsUsePostProcess:Z

    invoke-static {v4}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch;->getImageEngineFactory(Z)Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    iget-boolean v5, v5, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mIsCameraFrontFacing:Z

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->fWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->fHeight:I

    move-object/from16 v5, p0

    move/from16 v11, p5

    .line 1260
    invoke-virtual/range {v4 .. v12}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newBeautyImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIII)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .line 1269
    return-void

    .line 1245
    .end local v12    # "iBeautyLevel":I
    .end local v14    # "iPicSelfieEnable":I
    .end local v17    # "sBeautyLevel":Ljava/lang/String;
    .end local v18    # "sPicSelfieEnable":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v16

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->fWidth:I

    .line 1246
    move-object/from16 v0, v16

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->fHeight:I

    goto :goto_0

    .line 1249
    :cond_2
    move-object/from16 v0, v16

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->fWidth:I

    .line 1250
    move-object/from16 v0, v16

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->fHeight:I

    goto :goto_0

    .line 1254
    .restart local v17    # "sBeautyLevel":Ljava/lang/String;
    :cond_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    .line 1257
    .restart local v12    # "iBeautyLevel":I
    .restart local v18    # "sPicSelfieEnable":Ljava/lang/String;
    :cond_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_2

    .line 1259
    .restart local v14    # "iPicSelfieEnable":I
    :cond_5
    const/4 v8, 0x0

    goto :goto_3
.end method

.method static synthetic access$3200(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;

    .prologue
    .line 1220
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mReceivedShutterCount:I

    return v0
.end method

.method static synthetic access$3408(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;

    .prologue
    .line 1220
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mReceivedShutterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mReceivedShutterCount:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;Lcom/thirdparty/arcsoft/engine/ImageEngineBase;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;
    .param p1, "x1"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    return-object p1
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 1305
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1306
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1314
    :goto_0
    return-void

    .line 1307
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "BeautyImageProcess - abort"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1311
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1313
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->abort()V

    goto :goto_0

    .line 1307
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
    .line 1319
    return-void
.end method

.method public onPostImage(III[B)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "postImage"    # [B

    .prologue
    .line 1383
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1384
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 1396
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "BeautyImageProcess - onPreviewImage run in engine thread"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1388
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$6;

    invoke-direct {v1, p0, p4}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$6;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1385
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
    .line 1400
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "BeautyImageProcess - onPostProcessDone"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1401
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->lCameraExtensionCaptureCallbacks:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mPostView:Landroid/hardware/Camera$PictureCallback;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1402
    return-void
.end method

.method public onProcessAbort()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1323
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "BeautyImageProcess - onProcessAbort"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1324
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1337
    :goto_0
    return-void

    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 1326
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$3;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$3;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;)V

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

    .line 1353
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1354
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1356
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "BeautyImageProcess - onProcessDone"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 1360
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$5;

    invoke-direct {v1, p0, p4}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$5;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1355
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
    .line 1376
    return-void
.end method

.method public onProcessError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 1341
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BeautyImageProcess - onProcessError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1342
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$4;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$4;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1273
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->start()V

    .line 1274
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$1;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$1;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;)V

    new-instance v2, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$2;

    invoke-direct {v2, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess$2;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;)V

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1301
    return-void
.end method
