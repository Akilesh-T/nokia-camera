.class Lcom/android/camera/CaptureModule$24;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$OpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->openCameraAndStartPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;

.field final synthetic val$slaveCameraId:Lcom/android/camera/device/CameraId;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/device/CameraId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 2459
    iput-object p1, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    iput-object p2, p0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    iput-object p3, p0, Lcom/android/camera/CaptureModule$24;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    iput-object p4, p0, Lcom/android/camera/CaptureModule$24;->val$slaveCameraId:Lcom/android/camera/device/CameraId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 3

    .prologue
    .line 2819
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraClosed : mCamera == null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2820
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onCameraClosed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2821
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$102(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2822
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5000(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2823
    return-void

    .line 2819
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpened(Lcom/android/camera/one/OneCamera;)V
    .locals 32
    .param p1, "camera"    # Lcom/android/camera/one/OneCamera;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 2462
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCameraOpened: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "onCameraOpened"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2464
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/camera/CaptureModule;->access$102(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$2400(Lcom/android/camera/CaptureModule;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2471
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Camera Opened after Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2472
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2475
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/CaptureModule;->access$102(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$5000(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2477
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Camera Opened after Module Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2801
    :goto_0
    return-void

    .line 2482
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$3800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    .line 2483
    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$1400(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureModule$24;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    new-instance v7, Lcom/android/camera/CaptureModule$24$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/camera/CaptureModule$24$1;-><init>(Lcom/android/camera/CaptureModule$24;)V

    new-instance v8, Lcom/android/camera/CaptureModule$24$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/camera/CaptureModule$24$2;-><init>(Lcom/android/camera/CaptureModule$24;)V

    .line 2482
    invoke-static/range {v3 .. v8}, Lcom/android/camera/burst/BurstFacadeFactory;->create(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/burst/BurstReadyStateChangeListener;)Lcom/android/camera/burst/BurstFacade;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/camera/CaptureModule;->access$3202(Lcom/android/camera/CaptureModule;Lcom/android/camera/burst/BurstFacade;)Lcom/android/camera/burst/BurstFacade;

    .line 2513
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$3200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/burst/BurstFacade;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$3000(Lcom/android/camera/CaptureModule;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/camera/burst/BurstFacade;->setShutterSoundEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2518
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$2400(Lcom/android/camera/CaptureModule;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2519
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Abort Camera Preview due to Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2523
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/CaptureModule;->access$102(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$5000(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2525
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Abort Camera Preview due to Module Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2514
    :catch_0
    move-exception v25

    .line 2515
    .local v25, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init mBurstController Error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 2530
    .end local v25    # "e":Ljava/lang/Throwable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lcom/android/camera/CaptureModule;->access$002(Lcom/android/camera/CaptureModule;F)F

    .line 2531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$5300(Lcom/android/camera/CaptureModule;)V

    .line 2536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$2100(Lcom/android/camera/CaptureModule;)V

    .line 2537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    sget-object v5, Lcom/android/camera/CaptureModule$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/CaptureModule$ModuleState;

    invoke-static {v4, v5}, Lcom/android/camera/CaptureModule;->access$2202(Lcom/android/camera/CaptureModule;Lcom/android/camera/CaptureModule$ModuleState;)Lcom/android/camera/CaptureModule$ModuleState;

    .line 2538
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "starting preview ..."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$1000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2543
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$1000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 2544
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$1000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 2547
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$5400(Lcom/android/camera/CaptureModule;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2548
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$5100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModuleUI;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 2551
    :cond_5
    const/4 v8, 0x0

    .line 2552
    .local v8, "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    const/16 v31, 0x0

    .line 2553
    .local v31, "slavePreviewSurface":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->val$slaveCameraId:Lcom/android/camera/device/CameraId;

    if-eqz v4, :cond_6

    .line 2554
    new-instance v8, Lcom/android/camera/async/Lifetime;

    .end local v8    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    invoke-direct {v8}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 2555
    .restart local v8    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$4300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/util/Size;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v6}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/camera/one/OneCamera;->pickSlavePreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v28

    .line 2556
    .local v28, "slavePreviewBufferSize":Lcom/android/camera/util/Size;
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slavePreviewBufferSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v28 .. v28}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v28 .. v28}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2558
    new-instance v4, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v4}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    const-string v5, "Slave Preview Handler"

    const/16 v6, 0xa

    invoke-virtual {v4, v8, v5, v6}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v29

    .line 2560
    .local v29, "slavePreviewHandler":Landroid/os/Handler;
    invoke-virtual/range {v28 .. v28}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v4

    invoke-virtual/range {v28 .. v28}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    const/16 v6, 0x23

    const/16 v7, 0x8

    invoke-static {v4, v5, v6, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v30

    .line 2561
    .local v30, "slavePreviewImageReader":Landroid/media/ImageReader;
    new-instance v4, Lcom/android/camera/CaptureModule$24$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v4, v0, v1}, Lcom/android/camera/CaptureModule$24$3;-><init>(Lcom/android/camera/CaptureModule$24;Landroid/media/ImageReader;)V

    invoke-virtual {v8, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 2567
    new-instance v4, Lcom/android/camera/CaptureModule$24$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/CaptureModule$24$4;-><init>(Lcom/android/camera/CaptureModule$24;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 2576
    invoke-virtual/range {v30 .. v30}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v31

    .line 2580
    .end local v28    # "slavePreviewBufferSize":Lcom/android/camera/util/Size;
    .end local v29    # "slavePreviewHandler":Landroid/os/Handler;
    .end local v30    # "slavePreviewImageReader":Landroid/media/ImageReader;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$4300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/util/Size;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v6}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/camera/one/OneCamera;->pickMotionPreviewDataCallbackSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v27

    .line 2582
    .local v27, "previewCallbackBufferSize":Lcom/android/camera/util/Size;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$5500(Lcom/android/camera/CaptureModule;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2583
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/CaptureModule;->access$5602(Lcom/android/camera/CaptureModule;Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;)Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    .line 2584
    if-nez v8, :cond_7

    new-instance v8, Lcom/android/camera/async/Lifetime;

    .end local v8    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    invoke-direct {v8}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 2586
    .restart local v8    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    :cond_7
    :try_start_1
    new-instance v3, Lcom/android/camera/opengl/PreviewRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v6}, Lcom/android/camera/CaptureModule;->access$1400(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v9}, Lcom/android/camera/CaptureModule;->access$5700(Lcom/android/camera/CaptureModule;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v10}, Lcom/android/camera/CaptureModule;->access$5800(Lcom/android/camera/CaptureModule;)I

    move-result v10

    invoke-direct/range {v3 .. v10}, Lcom/android/camera/opengl/PreviewRenderer;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;II)V

    .line 2587
    .local v3, "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    new-instance v4, Lcom/android/camera/CaptureModule$24$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/android/camera/CaptureModule$24$5;-><init>(Lcom/android/camera/CaptureModule$24;Lcom/android/camera/opengl/PreviewRenderer;)V

    invoke-virtual {v8, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2640
    :goto_2
    const/16 v18, 0x0

    .line 2641
    .local v18, "previewCallbackSurface":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$5900(Lcom/android/camera/CaptureModule;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2642
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$5600(Lcom/android/camera/CaptureModule;)Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v8, v0}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v18

    .line 2645
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$2400(Lcom/android/camera/CaptureModule;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2646
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Preview surface ready after Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 2648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2650
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/CaptureModule;->access$102(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2651
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$5000(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2652
    if-eqz v8, :cond_a

    .line 2653
    invoke-virtual {v8}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2655
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Preview surface ready after Module Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2595
    .end local v3    # "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    .end local v18    # "previewCallbackSurface":Landroid/view/Surface;
    :catch_1
    move-exception v25

    .line 2596
    .local v25, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init PreviewRender Error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2597
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 2598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2600
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/CaptureModule;->access$102(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2601
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$5000(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2602
    if-eqz v8, :cond_c

    .line 2603
    invoke-virtual {v8}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2605
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "PreviewRender init Fail"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2608
    .end local v25    # "e":Ljava/lang/Exception;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v5, :cond_e

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqBarCode()Z

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$5900(Lcom/android/camera/CaptureModule;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2610
    :cond_f
    const/4 v3, 0x0

    .line 2611
    .restart local v3    # "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    :try_start_2
    new-instance v14, Lcom/android/camera/async/Lifetime;

    invoke-direct {v14}, Lcom/android/camera/async/Lifetime;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2612
    .end local v8    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    .local v14, "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    new-instance v9, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$5100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModuleUI;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v5

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v5, v6, :cond_10

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqBarCode()Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$5900(Lcom/android/camera/CaptureModule;)Z

    move-result v13

    .line 2613
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v15

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$2300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/async/MainThread;

    move-result-object v17

    invoke-direct/range {v9 .. v17}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;-><init>(Lcom/android/camera/CaptureModuleUI;Lcom/android/camera/app/AppController;ZZLcom/android/camera/async/Lifetime;IILcom/android/camera/async/MainThread;)V

    .line 2612
    invoke-static {v4, v9}, Lcom/android/camera/CaptureModule;->access$5602(Lcom/android/camera/CaptureModule;Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;)Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    .line 2614
    new-instance v4, Lcom/android/camera/CaptureModule$24$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/CaptureModule$24$6;-><init>(Lcom/android/camera/CaptureModule$24;)V

    invoke-virtual {v14, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v8, v14

    .line 2633
    .end local v14    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    .restart local v8    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    goto/16 :goto_2

    .line 2612
    .end local v8    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    .restart local v14    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    :cond_10
    const/4 v12, 0x0

    goto :goto_3

    .line 2621
    .end local v14    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    .restart local v8    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    :catch_2
    move-exception v25

    .line 2622
    .restart local v25    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init PreviewRender Error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2623
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 2624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2626
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/CaptureModule;->access$102(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2627
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$5000(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2628
    if-eqz v8, :cond_12

    .line 2629
    invoke-virtual {v8}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2631
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "PreviewRender init Fail"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2635
    .end local v3    # "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    .end local v25    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v3, 0x0

    .line 2636
    .restart local v3    # "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/CaptureModule;->access$5602(Lcom/android/camera/CaptureModule;Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;)Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    goto/16 :goto_2

    .line 2659
    .restart local v18    # "previewCallbackSurface":Landroid/view/Surface;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "starting preview ..."

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2661
    new-instance v26, Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$5700(Lcom/android/camera/CaptureModule;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$5800(Lcom/android/camera/CaptureModule;)I

    move-result v5

    move-object/from16 v0, v26

    invoke-direct {v0, v4, v5}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 2662
    .local v26, "mainPreviewSize":Lcom/android/camera/util/Size;
    const/16 v16, 0x0

    .line 2664
    .local v16, "surface":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$5500(Lcom/android/camera/CaptureModule;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2665
    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/camera/opengl/PreviewRenderer;->getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v16

    .line 2666
    move-object/from16 v0, v26

    invoke-virtual {v3, v8, v0}, Lcom/android/camera/opengl/PreviewRenderer;->getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v18

    .line 2672
    :goto_5
    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    .line 2673
    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$3200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/burst/BurstFacade;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/camera/CaptureModule$24$7;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CaptureModule$24$7;-><init>(Lcom/android/camera/CaptureModule$24;Lcom/android/camera/one/OneCamera;Lcom/android/camera/opengl/PreviewRenderer;)V

    move-object/from16 v15, p1

    move-object/from16 v17, v31

    move-object/from16 v20, v8

    .line 2672
    invoke-interface/range {v15 .. v24}, Lcom/android/camera/one/OneCamera;->startPreview(Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    goto/16 :goto_0

    .line 2668
    :cond_15
    new-instance v16, Landroid/view/Surface;

    .end local v16    # "surface":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$6100(Lcom/android/camera/CaptureModule;)Landroid/graphics/SurfaceTexture;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .restart local v16    # "surface":Landroid/view/Surface;
    goto :goto_5

    .line 2621
    .end local v8    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    .end local v16    # "surface":Landroid/view/Surface;
    .end local v18    # "previewCallbackSurface":Landroid/view/Surface;
    .end local v26    # "mainPreviewSize":Lcom/android/camera/util/Size;
    .restart local v14    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    :catch_3
    move-exception v25

    move-object v8, v14

    .end local v14    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    .restart local v8    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    goto/16 :goto_4
.end method

.method public onFailure()V
    .locals 2

    .prologue
    .line 2805
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2806
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onFailure"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2807
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2808
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2810
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$102(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2811
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5000(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2812
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2813
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onCameraOpenFailure()V

    .line 2815
    :cond_1
    return-void
.end method
