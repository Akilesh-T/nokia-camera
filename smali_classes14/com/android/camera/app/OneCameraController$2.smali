.class Lcom/android/camera/app/OneCameraController$2;
.super Ljava/lang/Object;
.source "OneCameraController.java"

# interfaces
.implements Lcom/android/camera/one/OneCameraOpener$OpenCameraExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/OneCameraController;->warmStartCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/OneCameraController;

.field final synthetic val$id:Lcom/android/camera/device/CameraId;


# direct methods
.method constructor <init>(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/device/CameraId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/camera/app/OneCameraController$2;->this$0:Lcom/android/camera/app/OneCameraController;

    iput-object p2, p0, Lcom/android/camera/app/OneCameraController$2;->val$id:Lcom/android/camera/device/CameraId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraOpenFailed(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 358
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOpenFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$2;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$100(Lcom/android/camera/app/OneCameraController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$2;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/camera/app/OneCameraController;->access$202(Lcom/android/camera/app/OneCameraController;I)I

    .line 361
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$2;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/camera/app/OneCameraController;->access$302(Lcom/android/camera/app/OneCameraController;I)I

    .line 362
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$2;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$400(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveCameraDeviceTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController$2;->val$id:Lcom/android/camera/device/CameraId;

    invoke-virtual {v0, v2}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 363
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$2;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$2;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    .line 365
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$2;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/app/OneCameraController;->access$502(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera$OpenCallback;)Lcom/android/camera/one/OneCamera$OpenCallback;

    .line 367
    :cond_0
    monitor-exit v1

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
