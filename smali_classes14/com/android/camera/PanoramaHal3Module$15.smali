.class Lcom/android/camera/PanoramaHal3Module$15;
.super Ljava/lang/Object;
.source "PanoramaHal3Module.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$OpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaHal3Module;->openCameraAndStartPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaHal3Module;

.field final synthetic val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    iput-object p2, p0, Lcom/android/camera/PanoramaHal3Module$15;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    iput-object p3, p0, Lcom/android/camera/PanoramaHal3Module$15;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 3

    .prologue
    .line 1824
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraClosed : mCamera == null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1825
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onCameraClosed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1826
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PanoramaHal3Module;->access$3402(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1827
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3500(Lcom/android/camera/PanoramaHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1828
    return-void

    .line 1824
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpened(Lcom/android/camera/one/OneCamera;)V
    .locals 12
    .param p1, "camera"    # Lcom/android/camera/one/OneCamera;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x0

    .line 1564
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOpened: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1565
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onCameraOpened"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1566
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0, p1}, Lcom/android/camera/PanoramaHal3Module;->access$3402(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1572
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$1500(Lcom/android/camera/PanoramaHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1573
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Camera Opened after Module Paused"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1574
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v1}, Lcom/android/camera/PanoramaHal3Module;->access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0, v11}, Lcom/android/camera/PanoramaHal3Module;->access$3402(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1578
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3500(Lcom/android/camera/PanoramaHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1579
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "Camera Opened after Module Paused"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1806
    :goto_0
    return-void

    .line 1584
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    .line 1585
    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    .line 1586
    invoke-static {v1}, Lcom/android/camera/PanoramaHal3Module;->access$2400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    .line 1587
    invoke-static {v2}, Lcom/android/camera/PanoramaHal3Module;->access$400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module$15;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    new-instance v4, Lcom/android/camera/PanoramaHal3Module$15$1;

    invoke-direct {v4, p0}, Lcom/android/camera/PanoramaHal3Module$15$1;-><init>(Lcom/android/camera/PanoramaHal3Module$15;)V

    new-instance v5, Lcom/android/camera/PanoramaHal3Module$15$2;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaHal3Module$15$2;-><init>(Lcom/android/camera/PanoramaHal3Module$15;)V

    .line 1584
    invoke-static/range {v0 .. v5}, Lcom/android/camera/burst/BurstFacadeFactory;->create(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/burst/BurstReadyStateChangeListener;)Lcom/android/camera/burst/BurstFacade;

    move-result-object v0

    check-cast v0, Lcom/android/camera/panorama/PanoramaFacade;

    invoke-static {v6, v0}, Lcom/android/camera/PanoramaHal3Module;->access$1002(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/panorama/PanoramaFacade;)Lcom/android/camera/panorama/PanoramaFacade;

    .line 1668
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "PanoController init"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$1500(Lcom/android/camera/PanoramaHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1681
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Abort Camera Preview due to Module Paused"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1682
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1683
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v1}, Lcom/android/camera/PanoramaHal3Module;->access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1685
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0, v11}, Lcom/android/camera/PanoramaHal3Module;->access$3402(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1686
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3500(Lcom/android/camera/PanoramaHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1687
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "Abort Camera Preview due to Module Paused"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_0

    .line 1669
    :catch_0
    move-exception v10

    .line 1670
    .local v10, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init mPanoramaController Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1671
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1672
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v1}, Lcom/android/camera/PanoramaHal3Module;->access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1674
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0, v11}, Lcom/android/camera/PanoramaHal3Module;->access$3402(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1675
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3500(Lcom/android/camera/PanoramaHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1676
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "Init mPanoramaController Error"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1692
    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/android/camera/PanoramaHal3Module;->access$3702(Lcom/android/camera/PanoramaHal3Module;F)F

    .line 1694
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3800(Lcom/android/camera/PanoramaHal3Module;)V

    .line 1699
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$1200(Lcom/android/camera/PanoramaHal3Module;)V

    .line 1700
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    sget-object v1, Lcom/android/camera/PanoramaHal3Module$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/PanoramaHal3Module$ModuleState;

    invoke-static {v0, v1}, Lcom/android/camera/PanoramaHal3Module;->access$1302(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/PanoramaHal3Module$ModuleState;)Lcom/android/camera/PanoramaHal3Module$ModuleState;

    .line 1701
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "starting preview ..."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1705
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$000(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1706
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$000(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 1713
    :cond_5
    const/4 v5, 0x0

    .line 1715
    .local v5, "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$1500(Lcom/android/camera/PanoramaHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1716
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Preview surface ready after Module Paused"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1717
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1718
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v1}, Lcom/android/camera/PanoramaHal3Module;->access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1720
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0, v11}, Lcom/android/camera/PanoramaHal3Module;->access$3402(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1721
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3500(Lcom/android/camera/PanoramaHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1722
    if-eqz v5, :cond_7

    .line 1723
    invoke-virtual {v5}, Lcom/android/camera/async/Lifetime;->close()V

    .line 1725
    :cond_7
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "Preview surface ready after Module Paused"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1729
    :cond_8
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "starting preview ..."

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1731
    new-instance v1, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3900(Lcom/android/camera/PanoramaHal3Module;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    .line 1733
    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$1000(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/panorama/PanoramaFacade;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/PanoramaHal3Module$15;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    new-instance v9, Lcom/android/camera/PanoramaHal3Module$15$3;

    invoke-direct {v9, p0, p1}, Lcom/android/camera/PanoramaHal3Module$15$3;-><init>(Lcom/android/camera/PanoramaHal3Module$15;Lcom/android/camera/one/OneCamera;)V

    move-object v0, p1

    move-object v2, v11

    move-object v3, v11

    move-object v4, v11

    move-object v6, v11

    .line 1731
    invoke-interface/range {v0 .. v9}, Lcom/android/camera/one/OneCamera;->startPreview(Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    goto/16 :goto_0
.end method

.method public onFailure()V
    .locals 2

    .prologue
    .line 1810
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1811
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onFailure"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1812
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v1}, Lcom/android/camera/PanoramaHal3Module;->access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1815
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PanoramaHal3Module;->access$3402(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1816
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3500(Lcom/android/camera/PanoramaHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1817
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1818
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onCameraOpenFailure()V

    .line 1820
    :cond_1
    return-void
.end method
