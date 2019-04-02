.class Lcom/android/camera/device/Camera2Actions$CloseCameraRunnable;
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
    name = "CloseCameraRunnable"
.end annotation


# instance fields
.field private final mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final mCloseListener:Lcom/android/camera/device/SingleDeviceCloseListener;

.field private final mLogger:Lcom/android/camera/debug/Logger;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;Lcom/android/camera/device/SingleDeviceCloseListener;Lcom/android/camera/debug/Logger;)V
    .locals 0
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "closeListener"    # Lcom/android/camera/device/SingleDeviceCloseListener;
    .param p3, "logger"    # Lcom/android/camera/debug/Logger;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/camera/device/Camera2Actions$CloseCameraRunnable;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 128
    iput-object p2, p0, Lcom/android/camera/device/Camera2Actions$CloseCameraRunnable;->mCloseListener:Lcom/android/camera/device/SingleDeviceCloseListener;

    .line 129
    iput-object p3, p0, Lcom/android/camera/device/Camera2Actions$CloseCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    .line 130
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/device/Camera2Actions$CloseCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraDevice.close(id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/device/Camera2Actions$CloseCameraRunnable;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/android/camera/device/Camera2Actions$CloseCameraRunnable;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 137
    iget-object v1, p0, Lcom/android/camera/device/Camera2Actions$CloseCameraRunnable;->mCloseListener:Lcom/android/camera/device/SingleDeviceCloseListener;

    invoke-interface {v1}, Lcom/android/camera/device/SingleDeviceCloseListener;->onDeviceClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/camera/device/Camera2Actions$CloseCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v2, "Closing the camera produced an exception!"

    invoke-interface {v1, v2, v0}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    iget-object v1, p0, Lcom/android/camera/device/Camera2Actions$CloseCameraRunnable;->mCloseListener:Lcom/android/camera/device/SingleDeviceCloseListener;

    invoke-interface {v1, v0}, Lcom/android/camera/device/SingleDeviceCloseListener;->onDeviceClosingException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
