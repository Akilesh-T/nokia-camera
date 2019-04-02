.class Lcom/android/camera/VideoHal3Module$21;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$OpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module;->openCameraAndStartPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoHal3Module;

.field final synthetic val$camcorderProfile:Landroid/media/CamcorderProfile;

.field final synthetic val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;

.field final synthetic val$persistentInputSurface:Lcom/android/camera/video/PersistentInputSurface;

.field final synthetic val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;Landroid/media/CamcorderProfile;Lcom/android/camera/video/PersistentInputSurface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 1988
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    iput-object p2, p0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    iput-object p3, p0, Lcom/android/camera/VideoHal3Module$21;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    iput-object p4, p0, Lcom/android/camera/VideoHal3Module$21;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    iput-object p5, p0, Lcom/android/camera/VideoHal3Module$21;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    iput-object p6, p0, Lcom/android/camera/VideoHal3Module$21;->val$persistentInputSurface:Lcom/android/camera/video/PersistentInputSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 3

    .prologue
    .line 2494
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraClosed : mCamera == null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2495
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onCameraClosed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2496
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/VideoHal3Module;->access$102(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2497
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5000(Lcom/android/camera/VideoHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2498
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2499
    return-void

    .line 2494
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpened(Lcom/android/camera/one/OneCamera;)V
    .locals 34
    .param p1, "camera"    # Lcom/android/camera/one/OneCamera;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 1991
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

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

    .line 1992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "onCameraOpened"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1993
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/camera/VideoHal3Module;->access$102(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1999
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$1800(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2000
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Camera Opened after Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2001
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2002
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v5}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2004
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/VideoHal3Module;->access$102(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2005
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$5000(Lcom/android/camera/VideoHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2006
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v4}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2007
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Camera Opened after Module Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2475
    :goto_0
    return-void

    .line 2012
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    .line 2013
    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    .line 2014
    invoke-static {v5}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    .line 2015
    invoke-static {v6}, Lcom/android/camera/VideoHal3Module;->access$3900(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/VideoHal3Module$21;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    new-instance v8, Lcom/android/camera/VideoHal3Module$21$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/camera/VideoHal3Module$21$1;-><init>(Lcom/android/camera/VideoHal3Module$21;)V

    new-instance v9, Lcom/android/camera/VideoHal3Module$21$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/camera/VideoHal3Module$21$2;-><init>(Lcom/android/camera/VideoHal3Module$21;)V

    .line 2012
    invoke-static/range {v4 .. v9}, Lcom/android/camera/burst/BurstFacadeFactory;->create(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/burst/BurstReadyStateChangeListener;)Lcom/android/camera/burst/BurstFacade;

    move-result-object v4

    check-cast v4, Lcom/android/camera/video/VideoFacade;

    invoke-static {v12, v4}, Lcom/android/camera/VideoHal3Module;->access$1302(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/video/VideoFacade;)Lcom/android/camera/video/VideoFacade;

    .line 2196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "VideoController init"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2198
    new-instance v14, Lcom/android/camera/VideoHal3Module$21$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/camera/VideoHal3Module$21$3;-><init>(Lcom/android/camera/VideoHal3Module$21;)V

    .line 2211
    .local v14, "onRecordTimeUpdateListener":Lcom/android/camera/video/OnRecordTimeUpdateListener;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$4100(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$1300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/VideoHal3Module$21;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/VideoHal3Module$21;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$3900(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$5700(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v15

    invoke-interface/range {v5 .. v15}, Lcom/android/camera/video/VideoFacade;->setRecordingInfo(Landroid/media/CamcorderProfile;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;IJLandroid/net/Uri;Landroid/view/Surface;Lcom/android/camera/video/OnRecordTimeUpdateListener;Lcom/android/camera/async/Observable;)V

    .line 2213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$1300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v4

    new-instance v5, Lcom/android/camera/VideoHal3Module$21$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/VideoHal3Module$21$4;-><init>(Lcom/android/camera/VideoHal3Module$21;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    .line 2260
    invoke-static {v6}, Lcom/android/camera/VideoHal3Module;->access$5800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v6

    .line 2213
    invoke-interface {v4, v5, v6}, Lcom/android/camera/video/VideoFacade;->setStreamingInfo(Lcom/android/camera/video/CountdownController;Lcom/android/camera/async/Observable;)V

    .line 2261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$1300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v4

    new-instance v5, Lcom/android/camera/VideoHal3Module$21$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/VideoHal3Module$21$5;-><init>(Lcom/android/camera/VideoHal3Module$21;)V

    invoke-interface {v4, v5}, Lcom/android/camera/video/VideoFacade;->setLiveBroadcastStatusInfo(Lcom/android/camera/video/LiveBroadcastStatusController;)V

    .line 2278
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "setRecordingInfo done"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$1800(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2292
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Abort Camera Preview due to Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v5}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2296
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/VideoHal3Module;->access$102(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$5000(Lcom/android/camera/VideoHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v4}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Abort Camera Preview due to Module Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2273
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.sizeLimit"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 2274
    .local v10, "requestedSizeLimit":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "EXTRA_SIZE_LIMIT get"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$1300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/VideoHal3Module$21;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/VideoHal3Module$21;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$3900(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/SettingsUtil;->getMaxVideoDuration(Landroid/content/Context;)I

    move-result v9

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$persistentInputSurface:Lcom/android/camera/video/PersistentInputSurface;

    invoke-virtual {v4}, Lcom/android/camera/video/PersistentInputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v13

    const/4 v15, 0x0

    invoke-interface/range {v5 .. v15}, Lcom/android/camera/video/VideoFacade;->setRecordingInfo(Landroid/media/CamcorderProfile;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;IJLandroid/net/Uri;Landroid/view/Surface;Lcom/android/camera/video/OnRecordTimeUpdateListener;Lcom/android/camera/async/Observable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 2279
    .end local v10    # "requestedSizeLimit":J
    .end local v14    # "onRecordTimeUpdateListener":Lcom/android/camera/video/OnRecordTimeUpdateListener;
    :catch_0
    move-exception v31

    .line 2280
    .local v31, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init mVideoController Error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v5}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2284
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/VideoHal3Module;->access$102(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$5000(Lcom/android/camera/VideoHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v4}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Init mVideoController Error"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2304
    .end local v31    # "e":Ljava/lang/Throwable;
    .restart local v14    # "onRecordTimeUpdateListener":Lcom/android/camera/video/OnRecordTimeUpdateListener;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lcom/android/camera/VideoHal3Module;->access$002(Lcom/android/camera/VideoHal3Module;F)F

    .line 2306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$5900(Lcom/android/camera/VideoHal3Module;)V

    .line 2311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$1500(Lcom/android/camera/VideoHal3Module;)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    sget-object v5, Lcom/android/camera/VideoHal3Module$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/VideoHal3Module$ModuleState;

    invoke-static {v4, v5}, Lcom/android/camera/VideoHal3Module;->access$1602(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/VideoHal3Module$ModuleState;)Lcom/android/camera/VideoHal3Module$ModuleState;

    .line 2313
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "starting preview ..."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$200(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$200(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 2319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$200(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 2326
    :cond_6
    new-instance v20, Lcom/android/camera/async/Lifetime;

    invoke-direct/range {v20 .. v20}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 2329
    .local v20, "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$5500(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2331
    :try_start_2
    new-instance v15, Lcom/android/camera/opengl/PreviewRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$3900(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$4200(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$6000(Lcom/android/camera/VideoHal3Module;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$6100(Lcom/android/camera/VideoHal3Module;)I

    move-result v22

    invoke-direct/range {v15 .. v22}, Lcom/android/camera/opengl/PreviewRenderer;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;II)V

    .line 2332
    .local v15, "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    new-instance v4, Lcom/android/camera/VideoHal3Module$21$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lcom/android/camera/VideoHal3Module$21$6;-><init>(Lcom/android/camera/VideoHal3Module$21;Lcom/android/camera/opengl/PreviewRenderer;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2362
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$1800(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2363
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Preview surface ready after Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v5}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2367
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/VideoHal3Module;->access$102(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$5000(Lcom/android/camera/VideoHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2369
    if-eqz v20, :cond_8

    .line 2370
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2372
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Preview surface ready after Module Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2341
    .end local v15    # "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    :catch_1
    move-exception v31

    .line 2342
    .local v31, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init PreviewRender Error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 2344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v5}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2346
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/VideoHal3Module;->access$102(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2347
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$5000(Lcom/android/camera/VideoHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2348
    if-eqz v20, :cond_a

    .line 2349
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2351
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    if-eqz v4, :cond_b

    .line 2352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v4}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2354
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "PreviewRender init Fail"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2358
    .end local v31    # "e":Ljava/lang/Exception;
    :cond_c
    const/4 v15, 0x0

    .line 2359
    .restart local v15    # "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    goto/16 :goto_2

    .line 2376
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "starting preview ..."

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v5}, Lcom/android/camera/VideoHal3Module;->access$6200(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/util/Size;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v6}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/camera/one/OneCamera;->pickVideoPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v32

    .line 2380
    .local v32, "mainPreviewSize":Lcom/android/camera/util/Size;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$4100(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v5}, Lcom/android/camera/VideoHal3Module;->access$6300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/util/Size;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v6}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/camera/one/OneCamera;->pickVideoPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v33

    .line 2382
    .local v33, "slavePreviewSize":Lcom/android/camera/util/Size;
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$5500(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/camera/opengl/PreviewRenderer;->getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v22

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$5500(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lcom/android/camera/opengl/PreviewRenderer;->getSlaveInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v23

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$5500(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/opengl/PreviewRenderer;->getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v24

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$5500(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/opengl/PreviewRenderer;->getSlavePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v25

    :goto_7
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$5500(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/16 v28, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/camera/VideoHal3Module$21$7;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v15}, Lcom/android/camera/VideoHal3Module$21$7;-><init>(Lcom/android/camera/VideoHal3Module$21;Lcom/android/camera/one/OneCamera;Lcom/android/camera/opengl/PreviewRenderer;)V

    move-object/from16 v21, p1

    move-object/from16 v26, v20

    invoke-interface/range {v21 .. v30}, Lcom/android/camera/one/OneCamera;->startPreview(Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    goto/16 :goto_0

    .line 2380
    .end local v33    # "slavePreviewSize":Lcom/android/camera/util/Size;
    :cond_e
    const/16 v33, 0x0

    goto :goto_3

    .line 2382
    .restart local v33    # "slavePreviewSize":Lcom/android/camera/util/Size;
    :cond_f
    new-instance v22, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$6400(Lcom/android/camera/VideoHal3Module;)Landroid/graphics/SurfaceTexture;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_4

    :cond_10
    const/16 v23, 0x0

    goto :goto_5

    :cond_11
    const/16 v24, 0x0

    goto :goto_6

    :cond_12
    const/16 v25, 0x0

    goto :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$1300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v28

    goto :goto_8
.end method

.method public onFailure()V
    .locals 2

    .prologue
    .line 2479
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2480
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onFailure"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2481
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2482
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2484
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/VideoHal3Module;->access$102(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2485
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5000(Lcom/android/camera/VideoHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2486
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2487
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onCameraOpenFailure()V

    .line 2489
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2490
    return-void
.end method
