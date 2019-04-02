.class Lcom/android/camera/SquareModule$22;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$OpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule;->openCameraAndStartPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SquareModule;

.field final synthetic val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;

.field final synthetic val$slaveCameraId:Lcom/android/camera/device/CameraId;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/device/CameraId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 2246
    iput-object p1, p0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    iput-object p2, p0, Lcom/android/camera/SquareModule$22;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    iput-object p3, p0, Lcom/android/camera/SquareModule$22;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    iput-object p4, p0, Lcom/android/camera/SquareModule$22;->val$slaveCameraId:Lcom/android/camera/device/CameraId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 3

    .prologue
    .line 2539
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraClosed : mCamera == null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2540
    iget-object v0, p0, Lcom/android/camera/SquareModule$22;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onCameraClosed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2541
    iget-object v0, p0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/SquareModule;->access$102(Lcom/android/camera/SquareModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2542
    iget-object v0, p0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$4500(Lcom/android/camera/SquareModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2543
    return-void

    .line 2539
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpened(Lcom/android/camera/one/OneCamera;)V
    .locals 24
    .param p1, "camera"    # Lcom/android/camera/one/OneCamera;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 2249
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

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

    .line 2250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "onCameraOpened"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/camera/SquareModule;->access$102(Lcom/android/camera/SquareModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$1800(Lcom/android/camera/SquareModule;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2258
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Camera Opened after Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v5}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2262
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/SquareModule;->access$102(Lcom/android/camera/SquareModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$4500(Lcom/android/camera/SquareModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Camera Opened after Module Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2521
    :goto_0
    return-void

    .line 2269
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$3200(Lcom/android/camera/SquareModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    .line 2270
    invoke-static {v5}, Lcom/android/camera/SquareModule;->access$800(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/SquareModule$22;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    new-instance v7, Lcom/android/camera/SquareModule$22$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/camera/SquareModule$22$1;-><init>(Lcom/android/camera/SquareModule$22;)V

    new-instance v8, Lcom/android/camera/SquareModule$22$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/camera/SquareModule$22$2;-><init>(Lcom/android/camera/SquareModule$22;)V

    .line 2269
    invoke-static/range {v3 .. v8}, Lcom/android/camera/burst/BurstFacadeFactory;->create(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/burst/BurstReadyStateChangeListener;)Lcom/android/camera/burst/BurstFacade;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/camera/SquareModule;->access$2602(Lcom/android/camera/SquareModule;Lcom/android/camera/burst/BurstFacade;)Lcom/android/camera/burst/BurstFacade;

    .line 2300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$2600(Lcom/android/camera/SquareModule;)Lcom/android/camera/burst/BurstFacade;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v5}, Lcom/android/camera/SquareModule;->access$2400(Lcom/android/camera/SquareModule;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/camera/burst/BurstFacade;->setShutterSoundEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2305
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$1800(Lcom/android/camera/SquareModule;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2306
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Abort Camera Preview due to Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v5}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2310
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/SquareModule;->access$102(Lcom/android/camera/SquareModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$4500(Lcom/android/camera/SquareModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Abort Camera Preview due to Module Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2301
    :catch_0
    move-exception v19

    .line 2302
    .local v19, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init mBurstController Error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 2317
    .end local v19    # "e":Ljava/lang/Throwable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lcom/android/camera/SquareModule;->access$002(Lcom/android/camera/SquareModule;F)F

    .line 2319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$4800(Lcom/android/camera/SquareModule;)V

    .line 2324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$1500(Lcom/android/camera/SquareModule;)V

    .line 2325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    sget-object v5, Lcom/android/camera/SquareModule$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/SquareModule$ModuleState;

    invoke-static {v4, v5}, Lcom/android/camera/SquareModule;->access$1602(Lcom/android/camera/SquareModule;Lcom/android/camera/SquareModule$ModuleState;)Lcom/android/camera/SquareModule$ModuleState;

    .line 2326
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "starting preview ..."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$400(Lcom/android/camera/SquareModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$400(Lcom/android/camera/SquareModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 2332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$400(Lcom/android/camera/SquareModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 2335
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$4600(Lcom/android/camera/SquareModule;)Lcom/android/camera/SquareModuleUI;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 2338
    const/4 v8, 0x0

    .line 2339
    .local v8, "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    const/4 v11, 0x0

    .line 2340
    .local v11, "slavePreviewSurface":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->val$slaveCameraId:Lcom/android/camera/device/CameraId;

    if-eqz v4, :cond_5

    .line 2341
    new-instance v8, Lcom/android/camera/async/Lifetime;

    .end local v8    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    invoke-direct {v8}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 2342
    .restart local v8    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v5}, Lcom/android/camera/SquareModule;->access$3600(Lcom/android/camera/SquareModule;)Lcom/android/camera/util/Size;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v6}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/camera/one/OneCamera;->pickSlavePreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v21

    .line 2343
    .local v21, "slavePreviewBufferSize":Lcom/android/camera/util/Size;
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slavePreviewBufferSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2345
    new-instance v4, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v4}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    const-string v5, "Slave Preview Handler"

    const/16 v6, 0xa

    invoke-virtual {v4, v8, v5, v6}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v22

    .line 2347
    .local v22, "slavePreviewHandler":Landroid/os/Handler;
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    const/16 v6, 0x23

    const/16 v7, 0x8

    invoke-static {v4, v5, v6, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v23

    .line 2348
    .local v23, "slavePreviewImageReader":Landroid/media/ImageReader;
    new-instance v4, Lcom/android/camera/SquareModule$22$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v4, v0, v1}, Lcom/android/camera/SquareModule$22$3;-><init>(Lcom/android/camera/SquareModule$22;Landroid/media/ImageReader;)V

    invoke-virtual {v8, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 2354
    new-instance v4, Lcom/android/camera/SquareModule$22$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/SquareModule$22$4;-><init>(Lcom/android/camera/SquareModule$22;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 2363
    invoke-virtual/range {v23 .. v23}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v11

    .line 2368
    .end local v21    # "slavePreviewBufferSize":Lcom/android/camera/util/Size;
    .end local v22    # "slavePreviewHandler":Landroid/os/Handler;
    .end local v23    # "slavePreviewImageReader":Landroid/media/ImageReader;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$4900(Lcom/android/camera/SquareModule;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2369
    if-nez v8, :cond_6

    new-instance v8, Lcom/android/camera/async/Lifetime;

    .end local v8    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    invoke-direct {v8}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 2371
    .restart local v8    # "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    :cond_6
    :try_start_1
    new-instance v3, Lcom/android/camera/opengl/PreviewRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/SquareModule$22;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v6}, Lcom/android/camera/SquareModule;->access$800(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v9}, Lcom/android/camera/SquareModule;->access$5000(Lcom/android/camera/SquareModule;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v10}, Lcom/android/camera/SquareModule;->access$5100(Lcom/android/camera/SquareModule;)I

    move-result v10

    invoke-direct/range {v3 .. v10}, Lcom/android/camera/opengl/PreviewRenderer;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;II)V

    .line 2372
    .local v3, "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    new-instance v4, Lcom/android/camera/SquareModule$22$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/android/camera/SquareModule$22$5;-><init>(Lcom/android/camera/SquareModule$22;Lcom/android/camera/opengl/PreviewRenderer;)V

    invoke-virtual {v8, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2398
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$1800(Lcom/android/camera/SquareModule;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2399
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Preview surface ready after Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v5}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2403
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/SquareModule;->access$102(Lcom/android/camera/SquareModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$4500(Lcom/android/camera/SquareModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2405
    if-eqz v8, :cond_8

    .line 2406
    invoke-virtual {v8}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2408
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Preview surface ready after Module Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2380
    .end local v3    # "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    :catch_1
    move-exception v19

    .line 2381
    .local v19, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init PreviewRender Error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 2383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v5}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2385
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/SquareModule;->access$102(Lcom/android/camera/SquareModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$4500(Lcom/android/camera/SquareModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2387
    if-eqz v8, :cond_a

    .line 2388
    invoke-virtual {v8}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2390
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "PreviewRender init Fail"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2394
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    goto/16 :goto_2

    .line 2411
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "starting preview ..."

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2413
    new-instance v20, Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$5000(Lcom/android/camera/SquareModule;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v5}, Lcom/android/camera/SquareModule;->access$5100(Lcom/android/camera/SquareModule;)I

    move-result v5

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 2414
    .local v20, "mainPreviewSize":Lcom/android/camera/util/Size;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$4900(Lcom/android/camera/SquareModule;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/camera/opengl/PreviewRenderer;->getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v10

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    .line 2415
    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$4900(Lcom/android/camera/SquareModule;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, v20

    invoke-virtual {v3, v8, v0}, Lcom/android/camera/opengl/PreviewRenderer;->getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v12

    :goto_4
    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    .line 2416
    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$2600(Lcom/android/camera/SquareModule;)Lcom/android/camera/burst/BurstFacade;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/camera/SquareModule$22$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/SquareModule$22$6;-><init>(Lcom/android/camera/SquareModule$22;Lcom/android/camera/one/OneCamera;Lcom/android/camera/opengl/PreviewRenderer;)V

    move-object/from16 v9, p1

    move-object v14, v8

    .line 2414
    invoke-interface/range {v9 .. v18}, Lcom/android/camera/one/OneCamera;->startPreview(Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    goto/16 :goto_0

    :cond_d
    new-instance v10, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$5200(Lcom/android/camera/SquareModule;)Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-direct {v10, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_3

    .line 2415
    :cond_e
    const/4 v12, 0x0

    goto :goto_4
.end method

.method public onFailure()V
    .locals 2

    .prologue
    .line 2525
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2526
    iget-object v0, p0, Lcom/android/camera/SquareModule$22;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onFailure"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2527
    iget-object v0, p0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2528
    iget-object v0, p0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v1}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2530
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/SquareModule;->access$102(Lcom/android/camera/SquareModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2531
    iget-object v0, p0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$4500(Lcom/android/camera/SquareModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2532
    iget-object v0, p0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2533
    iget-object v0, p0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onCameraOpenFailure()V

    .line 2535
    :cond_1
    return-void
.end method
