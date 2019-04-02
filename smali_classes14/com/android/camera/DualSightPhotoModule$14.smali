.class Lcom/android/camera/DualSightPhotoModule$14;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$OpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule;->openCameraAndStartPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightPhotoModule;

.field final synthetic val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 2045
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    iput-object p2, p0, Lcom/android/camera/DualSightPhotoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    iput-object p3, p0, Lcom/android/camera/DualSightPhotoModule$14;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 3

    .prologue
    .line 2394
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraClosed : mCamera == null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2395
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onCameraClosed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2396
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/DualSightPhotoModule;->access$4202(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2397
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4300(Lcom/android/camera/DualSightPhotoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2398
    return-void

    .line 2394
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpened(Lcom/android/camera/one/OneCamera;)V
    .locals 14
    .param p1, "camera"    # Lcom/android/camera/one/OneCamera;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v13, 0x0

    .line 2048
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    .line 2049
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onCameraOpened"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2050
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0, p1}, Lcom/android/camera/DualSightPhotoModule;->access$4202(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2056
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1400(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2057
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Camera Opened after Module Paused"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2058
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2061
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0, v13}, Lcom/android/camera/DualSightPhotoModule;->access$4202(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2062
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4300(Lcom/android/camera/DualSightPhotoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2063
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "Camera Opened after Module Paused"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2376
    :goto_0
    return-void

    .line 2068
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/android/camera/DualSightPhotoModule;->access$4402(Lcom/android/camera/DualSightPhotoModule;F)F

    .line 2070
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4500(Lcom/android/camera/DualSightPhotoModule;)V

    .line 2075
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$800(Lcom/android/camera/DualSightPhotoModule;)V

    .line 2076
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    sget-object v1, Lcom/android/camera/DualSightPhotoModule$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/DualSightPhotoModule$ModuleState;

    invoke-static {v0, v1}, Lcom/android/camera/DualSightPhotoModule;->access$902(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/DualSightPhotoModule$ModuleState;)Lcom/android/camera/DualSightPhotoModule$ModuleState;

    .line 2077
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "starting preview ..."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2081
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2082
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 2085
    :cond_2
    new-instance v5, Lcom/android/camera/async/Lifetime;

    invoke-direct {v5}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 2088
    .local v5, "localPreviewLifetime":Lcom/android/camera/async/Lifetime;
    :try_start_0
    iget-object v8, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    new-instance v0, Lcom/android/camera/opengl/PreviewRenderer;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule$14;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModule;->access$3600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightPhotoModule;->access$4700(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v4

    iget-object v6, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v6}, Lcom/android/camera/DualSightPhotoModule;->access$4800(Lcom/android/camera/DualSightPhotoModule;)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v7}, Lcom/android/camera/DualSightPhotoModule;->access$4900(Lcom/android/camera/DualSightPhotoModule;)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/opengl/PreviewRenderer;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;II)V

    invoke-static {v8, v0}, Lcom/android/camera/DualSightPhotoModule;->access$4602(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/opengl/PreviewRenderer;)Lcom/android/camera/opengl/PreviewRenderer;

    .line 2089
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v0

    new-instance v1, Lcom/android/camera/DualSightPhotoModule$14$1;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModule$14$1;-><init>(Lcom/android/camera/DualSightPhotoModule$14;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/PreviewRenderer;->setGestureChangedListener(Lcom/android/camera/opengl/GestureChangedListener;)V

    .line 2193
    new-instance v0, Lcom/android/camera/DualSightPhotoModule$14$2;

    invoke-direct {v0, p0}, Lcom/android/camera/DualSightPhotoModule$14$2;-><init>(Lcom/android/camera/DualSightPhotoModule$14;)V

    invoke-virtual {v5, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2215
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1400(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2216
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PreviewRender init after AppController Paused"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2217
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2218
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2220
    :cond_3
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0, v13}, Lcom/android/camera/DualSightPhotoModule;->access$4202(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2221
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4300(Lcom/android/camera/DualSightPhotoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2222
    if-eqz v5, :cond_4

    .line 2223
    invoke-virtual {v5}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2225
    :cond_4
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "PreviewRender init after AppController Paused"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2201
    :catch_0
    move-exception v10

    .line 2202
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init PreviewRender Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2203
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2204
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2206
    :cond_5
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0, v13}, Lcom/android/camera/DualSightPhotoModule;->access$4202(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2207
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4300(Lcom/android/camera/DualSightPhotoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2208
    if-eqz v5, :cond_6

    .line 2209
    invoke-virtual {v5}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2211
    :cond_6
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "PreviewRender init Fail"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2229
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "starting preview ..."

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2231
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$5600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/util/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/one/OneCamera;->pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v11

    .line 2232
    .local v11, "mainPreviewSize":Lcom/android/camera/util/Size;
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$5700(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/util/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/one/OneCamera;->pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v12

    .line 2234
    .local v12, "slavePreviewSize":Lcom/android/camera/util/Size;
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/camera/opengl/PreviewRenderer;->getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/camera/opengl/PreviewRenderer;->getSlaveInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v0

    invoke-virtual {v0, v5, v11}, Lcom/android/camera/opengl/PreviewRenderer;->getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v0

    invoke-virtual {v0, v5, v12}, Lcom/android/camera/opengl/PreviewRenderer;->getSlavePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/opengl/PreviewRenderer;->getImageGeneratorProvider()Lcom/android/camera/opengl/image/ImageGeneratorProvider;

    move-result-object v6

    iget-object v8, p0, Lcom/android/camera/DualSightPhotoModule$14;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    new-instance v9, Lcom/android/camera/DualSightPhotoModule$14$3;

    invoke-direct {v9, p0, p1}, Lcom/android/camera/DualSightPhotoModule$14$3;-><init>(Lcom/android/camera/DualSightPhotoModule$14;Lcom/android/camera/one/OneCamera;)V

    move-object v0, p1

    move-object v7, v13

    invoke-interface/range {v0 .. v9}, Lcom/android/camera/one/OneCamera;->startPreview(Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    goto/16 :goto_0
.end method

.method public onFailure()V
    .locals 2

    .prologue
    .line 2380
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2381
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onFailure"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2382
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2383
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2385
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/DualSightPhotoModule;->access$4202(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2386
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4300(Lcom/android/camera/DualSightPhotoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2387
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2388
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onCameraOpenFailure()V

    .line 2390
    :cond_1
    return-void
.end method
