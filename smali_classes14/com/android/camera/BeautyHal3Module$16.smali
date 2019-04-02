.class Lcom/android/camera/BeautyHal3Module$16;
.super Ljava/lang/Object;
.source "BeautyHal3Module.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$OpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BeautyHal3Module;->openCameraAndStartPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyHal3Module;

.field final synthetic val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 1682
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    iput-object p2, p0, Lcom/android/camera/BeautyHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    iput-object p3, p0, Lcom/android/camera/BeautyHal3Module$16;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 3

    .prologue
    .line 1864
    invoke-static {}, Lcom/android/camera/BeautyHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraClosed : mCamera == null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1865
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onCameraClosed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1866
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/BeautyHal3Module;->access$102(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1867
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$3800(Lcom/android/camera/BeautyHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1868
    return-void

    .line 1864
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpened(Lcom/android/camera/one/OneCamera;)V
    .locals 20
    .param p1, "camera"    # Lcom/android/camera/one/OneCamera;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 1685
    invoke-static {}, Lcom/android/camera/BeautyHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

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

    .line 1686
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "onCameraOpened"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/camera/BeautyHal3Module;->access$102(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1693
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$200(Lcom/android/camera/BeautyHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1694
    invoke-static {}, Lcom/android/camera/BeautyHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Camera Opened after Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1696
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v5}, Lcom/android/camera/BeautyHal3Module;->access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1698
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/BeautyHal3Module;->access$102(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$3800(Lcom/android/camera/BeautyHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1700
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "Camera Opened after Module Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1846
    :goto_0
    return-void

    .line 1705
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lcom/android/camera/BeautyHal3Module;->access$002(Lcom/android/camera/BeautyHal3Module;F)F

    .line 1707
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$3900(Lcom/android/camera/BeautyHal3Module;)V

    .line 1712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$1400(Lcom/android/camera/BeautyHal3Module;)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    sget-object v5, Lcom/android/camera/BeautyHal3Module$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/BeautyHal3Module$ModuleState;

    invoke-static {v4, v5}, Lcom/android/camera/BeautyHal3Module;->access$1502(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/BeautyHal3Module$ModuleState;)Lcom/android/camera/BeautyHal3Module$ModuleState;

    .line 1714
    invoke-static {}, Lcom/android/camera/BeautyHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "starting preview ..."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$400(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1719
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$400(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 1720
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$400(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 1723
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$4000(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/BeautyHal3ModuleUI;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 1725
    new-instance v8, Lcom/android/camera/async/Lifetime;

    invoke-direct {v8}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 1728
    .local v8, "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    :try_start_0
    new-instance v3, Lcom/android/camera/opengl/PreviewRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BeautyHal3Module$16;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v6}, Lcom/android/camera/BeautyHal3Module;->access$800(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v9}, Lcom/android/camera/BeautyHal3Module;->access$4100(Lcom/android/camera/BeautyHal3Module;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v10}, Lcom/android/camera/BeautyHal3Module;->access$4200(Lcom/android/camera/BeautyHal3Module;)I

    move-result v10

    invoke-direct/range {v3 .. v10}, Lcom/android/camera/opengl/PreviewRenderer;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;II)V

    .line 1729
    .local v3, "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    new-instance v4, Lcom/android/camera/BeautyHal3Module$16$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/android/camera/BeautyHal3Module$16$1;-><init>(Lcom/android/camera/BeautyHal3Module$16;Lcom/android/camera/opengl/PreviewRenderer;)V

    invoke-virtual {v8, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1750
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$200(Lcom/android/camera/BeautyHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1751
    invoke-static {}, Lcom/android/camera/BeautyHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "PreviewRender init after AppController Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1753
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v5}, Lcom/android/camera/BeautyHal3Module;->access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1755
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/BeautyHal3Module;->access$102(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1756
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$3800(Lcom/android/camera/BeautyHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1757
    if-eqz v8, :cond_4

    .line 1758
    invoke-virtual {v8}, Lcom/android/camera/async/Lifetime;->close()V

    .line 1760
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "PreviewRender init after AppController Paused"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1736
    .end local v3    # "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    :catch_0
    move-exception v19

    .line 1737
    .local v19, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/BeautyHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

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

    .line 1738
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1739
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v5}, Lcom/android/camera/BeautyHal3Module;->access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1741
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/BeautyHal3Module;->access$102(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v4}, Lcom/android/camera/BeautyHal3Module;->access$3800(Lcom/android/camera/BeautyHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1743
    if-eqz v8, :cond_6

    .line 1744
    invoke-virtual {v8}, Lcom/android/camera/async/Lifetime;->close()V

    .line 1746
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "PreviewRender init Fail"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1764
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v3    # "glRendererPreviewRender":Lcom/android/camera/opengl/PreviewRenderer;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "starting preview ..."

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1766
    new-instance v4, Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v5}, Lcom/android/camera/BeautyHal3Module;->access$4100(Lcom/android/camera/BeautyHal3Module;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v6}, Lcom/android/camera/BeautyHal3Module;->access$4200(Lcom/android/camera/BeautyHal3Module;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/android/camera/opengl/PreviewRenderer;->getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/BeautyHal3Module$16;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/camera/BeautyHal3Module$16$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/BeautyHal3Module$16$2;-><init>(Lcom/android/camera/BeautyHal3Module$16;Lcom/android/camera/one/OneCamera;Lcom/android/camera/opengl/PreviewRenderer;)V

    move-object/from16 v9, p1

    move-object v14, v8

    invoke-interface/range {v9 .. v18}, Lcom/android/camera/one/OneCamera;->startPreview(Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    goto/16 :goto_0
.end method

.method public onFailure()V
    .locals 2

    .prologue
    .line 1850
    invoke-static {}, Lcom/android/camera/BeautyHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1851
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onFailure"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1852
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1853
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1855
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/BeautyHal3Module;->access$102(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1856
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$3800(Lcom/android/camera/BeautyHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1857
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1858
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onCameraOpenFailure()V

    .line 1860
    :cond_1
    return-void
.end method
