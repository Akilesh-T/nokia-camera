.class Lcom/android/camera/device/LegacyCameraActions$CloseCameraRunnable;
.super Ljava/lang/Object;
.source "LegacyCameraActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/LegacyCameraActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseCameraRunnable"
.end annotation


# instance fields
.field private final mCameraDevice:Landroid/hardware/Camera;

.field private final mCameraId:I

.field private final mCloseListener:Lcom/android/camera/device/SingleDeviceCloseListener;

.field private final mLogger:Lcom/android/camera/debug/Logger;


# direct methods
.method public constructor <init>(Lcom/android/camera/device/SingleDeviceCloseListener;Landroid/hardware/Camera;ILcom/android/camera/debug/Logger;)V
    .locals 0
    .param p1, "closeListener"    # Lcom/android/camera/device/SingleDeviceCloseListener;
    .param p2, "cameraDevice"    # Landroid/hardware/Camera;
    .param p3, "cameraId"    # I
    .param p4, "logger"    # Lcom/android/camera/debug/Logger;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/android/camera/device/LegacyCameraActions$CloseCameraRunnable;->mCameraDevice:Landroid/hardware/Camera;

    .line 125
    iput-object p1, p0, Lcom/android/camera/device/LegacyCameraActions$CloseCameraRunnable;->mCloseListener:Lcom/android/camera/device/SingleDeviceCloseListener;

    .line 126
    iput p3, p0, Lcom/android/camera/device/LegacyCameraActions$CloseCameraRunnable;->mCameraId:I

    .line 127
    iput-object p4, p0, Lcom/android/camera/device/LegacyCameraActions$CloseCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    .line 128
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/device/LegacyCameraActions$CloseCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera.release(id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/device/LegacyCameraActions$CloseCameraRunnable;->mCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/android/camera/device/LegacyCameraActions$CloseCameraRunnable;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 135
    iget-object v1, p0, Lcom/android/camera/device/LegacyCameraActions$CloseCameraRunnable;->mCloseListener:Lcom/android/camera/device/SingleDeviceCloseListener;

    invoke-interface {v1}, Lcom/android/camera/device/SingleDeviceCloseListener;->onDeviceClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/camera/device/LegacyCameraActions$CloseCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v2, "Closing the camera produced an exception!"

    invoke-interface {v1, v2, v0}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    iget-object v1, p0, Lcom/android/camera/device/LegacyCameraActions$CloseCameraRunnable;->mCloseListener:Lcom/android/camera/device/SingleDeviceCloseListener;

    invoke-interface {v1, v0}, Lcom/android/camera/device/SingleDeviceCloseListener;->onDeviceClosingException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
