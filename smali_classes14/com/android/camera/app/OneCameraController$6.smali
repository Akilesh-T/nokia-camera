.class Lcom/android/camera/app/OneCameraController$6;
.super Ljava/lang/Object;
.source "OneCameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/OneCameraController;->checkAndOpenCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/OneCameraController;

.field final synthetic val$openSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$slaveCameraId:Lcom/android/camera/device/CameraId;


# direct methods
.method constructor <init>(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/device/CameraId;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/camera/app/OneCameraController$6;->this$0:Lcom/android/camera/app/OneCameraController;

    iput-object p2, p0, Lcom/android/camera/app/OneCameraController$6;->val$slaveCameraId:Lcom/android/camera/device/CameraId;

    iput-object p3, p0, Lcom/android/camera/app/OneCameraController$6;->val$openSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$6;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$1300(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCameraOpener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/OneCameraController$6;->val$slaveCameraId:Lcom/android/camera/device/CameraId;

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController$6;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v2}, Lcom/android/camera/app/OneCameraController;->access$1200(Lcom/android/camera/app/OneCameraController;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/camera/app/OneCameraController$6$1;

    invoke-direct {v3, p0}, Lcom/android/camera/app/OneCameraController$6$1;-><init>(Lcom/android/camera/app/OneCameraController$6;)V

    new-instance v4, Lcom/android/camera/app/OneCameraController$6$2;

    invoke-direct {v4, p0}, Lcom/android/camera/app/OneCameraController$6$2;-><init>(Lcom/android/camera/app/OneCameraController$6;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/one/OneCameraOpener;->openCameraDevice(Lcom/android/camera/device/CameraId;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;Lcom/android/camera/one/OneCameraOpener$OpenCameraExceptionHandler;)V

    .line 835
    return-void
.end method
