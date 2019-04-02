.class Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;
.super Ljava/lang/Object;
.source "PortabilityCameraActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/PortabilityCameraActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenCameraRunnable"
.end annotation


# instance fields
.field private final mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private final mCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLogger:Lcom/android/camera/debug/Logger;

.field private final mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/device/SingleDeviceOpenListener",
            "<",
            "Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/camera/device/SingleDeviceOpenListener;Lcom/android/camera/debug/Logger;)V
    .locals 0
    .param p1, "cameraAgent"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p2, "cameraId"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p5, "logger"    # Lcom/android/camera/debug/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ex/camera2/portability/CameraAgent;",
            "I",
            "Landroid/os/Handler;",
            "Lcom/android/camera/device/SingleDeviceOpenListener",
            "<",
            "Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;",
            ">;",
            "Lcom/android/camera/debug/Logger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p4, "openListener":Lcom/android/camera/device/SingleDeviceOpenListener;, "Lcom/android/camera/device/SingleDeviceOpenListener<Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 131
    iput p2, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;->mCameraId:I

    .line 132
    iput-object p3, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;->mHandler:Landroid/os/Handler;

    .line 133
    iput-object p4, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    .line 134
    iput-object p5, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    .line 135
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraAgent.openCamera(id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;->mCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v2, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;->mCameraId:I

    new-instance v4, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;

    iget-object v5, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    iget-object v6, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    invoke-direct {v4, v5, v6}, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraStateCallback;-><init>(Lcom/android/camera/device/SingleDeviceOpenListener;Lcom/android/camera/debug/Logger;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/ex/camera2/portability/CameraAgent;->openCamera(Landroid/os/Handler;ILcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/camera/device/PortabilityCameraActions$OpenCameraRunnable;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    invoke-interface {v1, v0}, Lcom/android/camera/device/SingleDeviceOpenListener;->onDeviceOpenException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
