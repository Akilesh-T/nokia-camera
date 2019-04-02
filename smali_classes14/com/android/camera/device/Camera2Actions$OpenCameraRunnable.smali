.class Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;
.super Ljava/lang/Object;
.source "Camera2Actions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/Camera2Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenCameraRunnable"
.end annotation


# instance fields
.field private final mCameraId:Ljava/lang/String;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mLogger:Lcom/android/camera/debug/Logger;

.field private final mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/device/SingleDeviceOpenListener",
            "<",
            "Landroid/hardware/camera2/CameraDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/os/Handler;Lcom/android/camera/device/SingleDeviceOpenListener;Lcom/android/camera/debug/Logger;)V
    .locals 0
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p5, "logger"    # Lcom/android/camera/debug/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraManager;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lcom/android/camera/device/SingleDeviceOpenListener",
            "<",
            "Landroid/hardware/camera2/CameraDevice;",
            ">;",
            "Lcom/android/camera/debug/Logger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p4, "openListener":Lcom/android/camera/device/SingleDeviceOpenListener;, "Lcom/android/camera/device/SingleDeviceOpenListener<Landroid/hardware/camera2/CameraDevice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 97
    iput-object p2, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;->mCameraId:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;->mHandler:Landroid/os/Handler;

    .line 99
    iput-object p4, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    .line 100
    iput-object p5, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    .line 101
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraManager.openCamera(id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;->mCameraId:Ljava/lang/String;

    new-instance v3, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;

    iget-object v4, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    iget-object v5, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/device/Camera2Actions$OpenCameraStateCallback;-><init>(Lcom/android/camera/device/SingleDeviceOpenListener;Lcom/android/camera/debug/Logger;)V

    iget-object v4, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There was a problem opening camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    iget-object v1, p0, Lcom/android/camera/device/Camera2Actions$OpenCameraRunnable;->mOpenListener:Lcom/android/camera/device/SingleDeviceOpenListener;

    invoke-interface {v1, v0}, Lcom/android/camera/device/SingleDeviceOpenListener;->onDeviceOpenException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
