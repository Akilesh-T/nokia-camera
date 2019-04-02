.class Lcom/android/camera/TimelapseHal3Module$16;
.super Ljava/lang/Object;
.source "TimelapseHal3Module.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$OpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TimelapseHal3Module;->openCameraAndStartPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TimelapseHal3Module;

.field final synthetic val$camcorderProfile:Landroid/media/CamcorderProfile;

.field final synthetic val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;

.field final synthetic val$persistentInputSurface:Lcom/android/camera/video/PersistentInputSurface;

.field final synthetic val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;


# direct methods
.method constructor <init>(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;Landroid/media/CamcorderProfile;Lcom/android/camera/video/PersistentInputSurface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 1687
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    iput-object p2, p0, Lcom/android/camera/TimelapseHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    iput-object p3, p0, Lcom/android/camera/TimelapseHal3Module$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    iput-object p4, p0, Lcom/android/camera/TimelapseHal3Module$16;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    iput-object p5, p0, Lcom/android/camera/TimelapseHal3Module$16;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    iput-object p6, p0, Lcom/android/camera/TimelapseHal3Module$16;->val$persistentInputSurface:Lcom/android/camera/video/PersistentInputSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 3

    .prologue
    .line 2002
    invoke-static {}, Lcom/android/camera/TimelapseHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraClosed : mCamera == null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2003
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onCameraClosed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2004
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/TimelapseHal3Module;->access$102(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2005
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$3700(Lcom/android/camera/TimelapseHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2006
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2007
    return-void

    .line 2002
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpened(Lcom/android/camera/one/OneCamera;)V
    .locals 23
    .param p1, "camera"    # Lcom/android/camera/one/OneCamera;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 1690
    invoke-static {}, Lcom/android/camera/TimelapseHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

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

    .line 1691
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "onCameraOpened"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/camera/TimelapseHal3Module;->access$102(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$1700(Lcom/android/camera/TimelapseHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1699
    invoke-static {}, Lcom/android/camera/TimelapseHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Camera Opened after Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v5}, Lcom/android/camera/TimelapseHal3Module;->access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1703
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/TimelapseHal3Module;->access$102(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$3700(Lcom/android/camera/TimelapseHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1705
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v4}, Lcom/android/camera/async/Lifetime;->close()V

    .line 1706
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Camera Opened after Module Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1983
    :goto_0
    return-void

    .line 1711
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    .line 1712
    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    .line 1713
    invoke-static {v5}, Lcom/android/camera/TimelapseHal3Module;->access$2700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    .line 1714
    invoke-static {v6}, Lcom/android/camera/TimelapseHal3Module;->access$600(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    new-instance v8, Lcom/android/camera/TimelapseHal3Module$16$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/camera/TimelapseHal3Module$16$1;-><init>(Lcom/android/camera/TimelapseHal3Module$16;)V

    new-instance v9, Lcom/android/camera/TimelapseHal3Module$16$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/camera/TimelapseHal3Module$16$2;-><init>(Lcom/android/camera/TimelapseHal3Module$16;)V

    .line 1711
    invoke-static/range {v4 .. v9}, Lcom/android/camera/burst/BurstFacadeFactory;->create(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/burst/BurstReadyStateChangeListener;)Lcom/android/camera/burst/BurstFacade;

    move-result-object v4

    check-cast v4, Lcom/android/camera/video/VideoFacade;

    invoke-static {v12, v4}, Lcom/android/camera/TimelapseHal3Module;->access$1202(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/video/VideoFacade;)Lcom/android/camera/video/VideoFacade;

    .line 1824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "VideoController init"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1826
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$2700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.sizeLimit"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 1827
    .local v10, "requestedSizeLimit":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "EXTRA_SIZE_LIMIT get"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1829
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$1200(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$600(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$2700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/SettingsUtil;->getMaxVideoDuration(Landroid/content/Context;)I

    move-result v9

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$persistentInputSurface:Lcom/android/camera/video/PersistentInputSurface;

    invoke-virtual {v4}, Lcom/android/camera/video/PersistentInputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v13

    new-instance v14, Lcom/android/camera/TimelapseHal3Module$16$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/camera/TimelapseHal3Module$16$3;-><init>(Lcom/android/camera/TimelapseHal3Module$16;)V

    const/4 v15, 0x0

    invoke-interface/range {v5 .. v15}, Lcom/android/camera/video/VideoFacade;->setRecordingInfo(Landroid/media/CamcorderProfile;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;IJLandroid/net/Uri;Landroid/view/Surface;Lcom/android/camera/video/OnRecordTimeUpdateListener;Lcom/android/camera/async/Observable;)V

    .line 1840
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "setRecordingInfo done"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$1700(Lcom/android/camera/TimelapseHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1854
    invoke-static {}, Lcom/android/camera/TimelapseHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Abort Camera Preview due to Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1856
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v5}, Lcom/android/camera/TimelapseHal3Module;->access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1858
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/TimelapseHal3Module;->access$102(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1859
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$3700(Lcom/android/camera/TimelapseHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1860
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v4}, Lcom/android/camera/async/Lifetime;->close()V

    .line 1861
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Abort Camera Preview due to Module Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1841
    .end local v10    # "requestedSizeLimit":J
    :catch_0
    move-exception v22

    .line 1842
    .local v22, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/camera/TimelapseHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init mVideoController Error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1843
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v5}, Lcom/android/camera/TimelapseHal3Module;->access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1846
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/TimelapseHal3Module;->access$102(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1847
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$3700(Lcom/android/camera/TimelapseHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1848
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v4}, Lcom/android/camera/async/Lifetime;->close()V

    .line 1849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Init mVideoController Error"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1866
    .end local v22    # "e":Ljava/lang/Throwable;
    .restart local v10    # "requestedSizeLimit":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lcom/android/camera/TimelapseHal3Module;->access$002(Lcom/android/camera/TimelapseHal3Module;F)F

    .line 1868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$4100(Lcom/android/camera/TimelapseHal3Module;)V

    .line 1873
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$1400(Lcom/android/camera/TimelapseHal3Module;)V

    .line 1874
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    sget-object v5, Lcom/android/camera/TimelapseHal3Module$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/TimelapseHal3Module$ModuleState;

    invoke-static {v4, v5}, Lcom/android/camera/TimelapseHal3Module;->access$1502(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/TimelapseHal3Module$ModuleState;)Lcom/android/camera/TimelapseHal3Module$ModuleState;

    .line 1875
    invoke-static {}, Lcom/android/camera/TimelapseHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "starting preview ..."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$200(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$200(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 1881
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$200(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 1888
    :cond_5
    new-instance v17, Lcom/android/camera/async/Lifetime;

    invoke-direct/range {v17 .. v17}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 1889
    .local v17, "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 1891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$1700(Lcom/android/camera/TimelapseHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1892
    invoke-static {}, Lcom/android/camera/TimelapseHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Preview surface ready after Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v5}, Lcom/android/camera/TimelapseHal3Module;->access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1896
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/TimelapseHal3Module;->access$102(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$3700(Lcom/android/camera/TimelapseHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1898
    if-eqz v17, :cond_7

    .line 1899
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/async/Lifetime;->close()V

    .line 1901
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Preview surface ready after Module Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1905
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "starting preview ..."

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1907
    new-instance v13, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$4200(Lcom/android/camera/TimelapseHal3Module;)Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-direct {v13, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    .line 1909
    invoke-static {v4}, Lcom/android/camera/TimelapseHal3Module;->access$1200(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/camera/TimelapseHal3Module$16$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/TimelapseHal3Module$16$4;-><init>(Lcom/android/camera/TimelapseHal3Module$16;Lcom/android/camera/one/OneCamera;)V

    move-object/from16 v12, p1

    .line 1907
    invoke-interface/range {v12 .. v21}, Lcom/android/camera/one/OneCamera;->startPreview(Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    goto/16 :goto_0
.end method

.method public onFailure()V
    .locals 2

    .prologue
    .line 1987
    invoke-static {}, Lcom/android/camera/TimelapseHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1988
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onFailure"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1989
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v1}, Lcom/android/camera/TimelapseHal3Module;->access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1992
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/TimelapseHal3Module;->access$102(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1993
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$3700(Lcom/android/camera/TimelapseHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1994
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1995
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onCameraOpenFailure()V

    .line 1997
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 1998
    return-void
.end method
