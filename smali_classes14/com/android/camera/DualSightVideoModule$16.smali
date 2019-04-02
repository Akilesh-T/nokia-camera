.class Lcom/android/camera/DualSightVideoModule$16;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$OpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule;->openCameraAndStartPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightVideoModule;

.field final synthetic val$camcorderProfile:Landroid/media/CamcorderProfile;

.field final synthetic val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;

.field final synthetic val$persistentInputSurface:Lcom/android/camera/video/PersistentInputSurface;

.field final synthetic val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;Landroid/media/CamcorderProfile;Lcom/android/camera/video/PersistentInputSurface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 1708
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    iput-object p2, p0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    iput-object p3, p0, Lcom/android/camera/DualSightVideoModule$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    iput-object p4, p0, Lcom/android/camera/DualSightVideoModule$16;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    iput-object p5, p0, Lcom/android/camera/DualSightVideoModule$16;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    iput-object p6, p0, Lcom/android/camera/DualSightVideoModule$16;->val$persistentInputSurface:Lcom/android/camera/video/PersistentInputSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 3

    .prologue
    .line 2315
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraClosed : mCamera == null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2316
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onCameraClosed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2317
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/DualSightVideoModule;->access$4502(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2318
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4600(Lcom/android/camera/DualSightVideoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2319
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2320
    return-void

    .line 2315
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
    .line 1711
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    .line 1712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "onCameraOpened"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/camera/DualSightVideoModule;->access$4502(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1719
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$1300(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1720
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Camera Opened after Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v5}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1724
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/DualSightVideoModule;->access$4502(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1725
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$4600(Lcom/android/camera/DualSightVideoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v4}, Lcom/android/camera/async/Lifetime;->close()V

    .line 1727
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Camera Opened after Module Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2296
    :goto_0
    return-void

    .line 1733
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    .line 1734
    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    .line 1735
    invoke-static {v5}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    .line 1736
    invoke-static {v6}, Lcom/android/camera/DualSightVideoModule;->access$3700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/DualSightVideoModule$16;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    new-instance v8, Lcom/android/camera/DualSightVideoModule$16$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/camera/DualSightVideoModule$16$1;-><init>(Lcom/android/camera/DualSightVideoModule$16;)V

    new-instance v9, Lcom/android/camera/DualSightVideoModule$16$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/camera/DualSightVideoModule$16$2;-><init>(Lcom/android/camera/DualSightVideoModule$16;)V

    .line 1733
    invoke-static/range {v4 .. v9}, Lcom/android/camera/burst/BurstFacadeFactory;->create(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/burst/BurstReadyStateChangeListener;)Lcom/android/camera/burst/BurstFacade;

    move-result-object v4

    check-cast v4, Lcom/android/camera/video/VideoFacade;

    invoke-static {v12, v4}, Lcom/android/camera/DualSightVideoModule;->access$702(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/video/VideoFacade;)Lcom/android/camera/video/VideoFacade;

    .line 1886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "VideoController init"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1888
    new-instance v14, Lcom/android/camera/DualSightVideoModule$16$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/camera/DualSightVideoModule$16$3;-><init>(Lcom/android/camera/DualSightVideoModule$16;)V

    .line 1900
    .local v14, "onRecordTimeUpdateListener":Lcom/android/camera/video/OnRecordTimeUpdateListener;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$4200(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/video/VideoFacade;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/DualSightVideoModule$16;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/DualSightVideoModule$16;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$3700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$5000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v15

    invoke-interface/range {v5 .. v15}, Lcom/android/camera/video/VideoFacade;->setRecordingInfo(Landroid/media/CamcorderProfile;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;IJLandroid/net/Uri;Landroid/view/Surface;Lcom/android/camera/video/OnRecordTimeUpdateListener;Lcom/android/camera/async/Observable;)V

    .line 1902
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/video/VideoFacade;

    move-result-object v4

    new-instance v5, Lcom/android/camera/DualSightVideoModule$16$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/DualSightVideoModule$16$4;-><init>(Lcom/android/camera/DualSightVideoModule$16;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    .line 1948
    invoke-static {v6}, Lcom/android/camera/DualSightVideoModule;->access$5100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v6

    .line 1902
    invoke-interface {v4, v5, v6}, Lcom/android/camera/video/VideoFacade;->setStreamingInfo(Lcom/android/camera/video/CountdownController;Lcom/android/camera/async/Observable;)V

    .line 1949
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/video/VideoFacade;

    move-result-object v4

    new-instance v5, Lcom/android/camera/DualSightVideoModule$16$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/DualSightVideoModule$16$5;-><init>(Lcom/android/camera/DualSightVideoModule$16;)V

    invoke-interface {v4, v5}, Lcom/android/camera/video/VideoFacade;->setLiveBroadcastStatusInfo(Lcom/android/camera/video/LiveBroadcastStatusController;)V

    .line 1966
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "setRecordingInfo done"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1979
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$1300(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1980
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Abort Camera Preview due to Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1981
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1982
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v5}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1984
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/DualSightVideoModule;->access$4502(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1985
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$4600(Lcom/android/camera/DualSightVideoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1986
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v4}, Lcom/android/camera/async/Lifetime;->close()V

    .line 1987
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Abort Camera Preview due to Module Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1961
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.sizeLimit"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 1962
    .local v10, "requestedSizeLimit":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "EXTRA_SIZE_LIMIT get"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1964
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/video/VideoFacade;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/DualSightVideoModule$16;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/DualSightVideoModule$16;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$3700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/SettingsUtil;->getMaxVideoDuration(Landroid/content/Context;)I

    move-result v9

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$persistentInputSurface:Lcom/android/camera/video/PersistentInputSurface;

    invoke-virtual {v4}, Lcom/android/camera/video/PersistentInputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$5000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v15

    invoke-interface/range {v5 .. v15}, Lcom/android/camera/video/VideoFacade;->setRecordingInfo(Landroid/media/CamcorderProfile;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;IJLandroid/net/Uri;Landroid/view/Surface;Lcom/android/camera/video/OnRecordTimeUpdateListener;Lcom/android/camera/async/Observable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1967
    .end local v10    # "requestedSizeLimit":J
    .end local v14    # "onRecordTimeUpdateListener":Lcom/android/camera/video/OnRecordTimeUpdateListener;
    :catch_0
    move-exception v31

    .line 1968
    .local v31, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    .line 1969
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v5}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1972
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/DualSightVideoModule;->access$4502(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$4600(Lcom/android/camera/DualSightVideoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1974
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v4}, Lcom/android/camera/async/Lifetime;->close()V

    .line 1975
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Init mVideoController Error"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1992
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v14    # "onRecordTimeUpdateListener":Lcom/android/camera/video/OnRecordTimeUpdateListener;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lcom/android/camera/DualSightVideoModule;->access$5202(Lcom/android/camera/DualSightVideoModule;F)F

    .line 1994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$5300(Lcom/android/camera/DualSightVideoModule;)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$900(Lcom/android/camera/DualSightVideoModule;)V

    .line 2000
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    sget-object v5, Lcom/android/camera/DualSightVideoModule$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/DualSightVideoModule$ModuleState;

    invoke-static {v4, v5}, Lcom/android/camera/DualSightVideoModule;->access$1002(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/DualSightVideoModule$ModuleState;)Lcom/android/camera/DualSightVideoModule$ModuleState;

    .line 2001
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "starting preview ..."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2005
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2006
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 2009
    :cond_6
    new-instance v20, Lcom/android/camera/async/Lifetime;

    invoke-direct/range {v20 .. v20}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 2012
    .local v20, "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    :try_start_2
    new-instance v15, Lcom/android/camera/opengl/PreviewRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$3700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$3800(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$5400(Lcom/android/camera/DualSightVideoModule;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$5500(Lcom/android/camera/DualSightVideoModule;)I

    move-result v22

    invoke-direct/range {v15 .. v22}, Lcom/android/camera/opengl/PreviewRenderer;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;II)V

    .line 2013
    .local v15, "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    new-instance v4, Lcom/android/camera/DualSightVideoModule$16$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/DualSightVideoModule$16$6;-><init>(Lcom/android/camera/DualSightVideoModule$16;)V

    invoke-virtual {v15, v4}, Lcom/android/camera/opengl/PreviewRenderer;->setGestureChangedListener(Lcom/android/camera/opengl/GestureChangedListener;)V

    .line 2073
    new-instance v4, Lcom/android/camera/DualSightVideoModule$16$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lcom/android/camera/DualSightVideoModule$16$7;-><init>(Lcom/android/camera/DualSightVideoModule$16;Lcom/android/camera/opengl/PreviewRenderer;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2099
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$1300(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2100
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "PreviewRender init after AppController Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v5}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2104
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/DualSightVideoModule;->access$4502(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$4600(Lcom/android/camera/DualSightVideoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2106
    if-eqz v20, :cond_8

    .line 2107
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2109
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "PreviewRender init after AppController Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2082
    .end local v15    # "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    :catch_1
    move-exception v31

    .line 2083
    .restart local v31    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    .line 2084
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 2085
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v5}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2087
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/DualSightVideoModule;->access$4502(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$4600(Lcom/android/camera/DualSightVideoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2089
    if-eqz v20, :cond_a

    .line 2090
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2092
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    if-eqz v4, :cond_b

    .line 2093
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v4}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2095
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "PreviewRender init Fail"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2113
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v15    # "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "starting preview ..."

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v5}, Lcom/android/camera/DualSightVideoModule;->access$5700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/util/Size;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v6}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/camera/one/OneCamera;->pickVideoPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v32

    .line 2117
    .local v32, "mainPreviewSize":Lcom/android/camera/util/Size;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v5}, Lcom/android/camera/DualSightVideoModule;->access$5800(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/util/Size;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v6}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/camera/one/OneCamera;->pickVideoPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v33

    .line 2119
    .local v33, "slavePreviewSize":Lcom/android/camera/util/Size;
    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/camera/opengl/PreviewRenderer;->getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v22

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lcom/android/camera/opengl/PreviewRenderer;->getSlaveInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/opengl/PreviewRenderer;->getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Lcom/android/camera/opengl/PreviewRenderer;->getSlavePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v25

    invoke-virtual {v15}, Lcom/android/camera/opengl/PreviewRenderer;->getImageGeneratorProvider()Lcom/android/camera/opengl/image/ImageGeneratorProvider;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/camera/DualSightVideoModule$16$8;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v15}, Lcom/android/camera/DualSightVideoModule$16$8;-><init>(Lcom/android/camera/DualSightVideoModule$16;Lcom/android/camera/one/OneCamera;Lcom/android/camera/opengl/PreviewRenderer;)V

    move-object/from16 v21, p1

    move-object/from16 v26, v20

    invoke-interface/range {v21 .. v30}, Lcom/android/camera/one/OneCamera;->startPreview(Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    goto/16 :goto_0
.end method

.method public onFailure()V
    .locals 2

    .prologue
    .line 2300
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2301
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onFailure"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2302
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2303
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2305
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/DualSightVideoModule;->access$4502(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2306
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4600(Lcom/android/camera/DualSightVideoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2307
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2308
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onCameraOpenFailure()V

    .line 2310
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2311
    return-void
.end method
