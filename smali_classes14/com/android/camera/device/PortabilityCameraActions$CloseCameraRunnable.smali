.class Lcom/android/camera/device/PortabilityCameraActions$CloseCameraRunnable;
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
    name = "CloseCameraRunnable"
.end annotation


# instance fields
.field private final mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private final mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private final mCloseListener:Lcom/android/camera/device/SingleDeviceCloseListener;

.field private final mLogger:Lcom/android/camera/debug/Logger;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/camera/device/SingleDeviceCloseListener;Lcom/android/camera/debug/Logger;)V
    .locals 0
    .param p1, "cameraDevice"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .param p2, "cameraAgent"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p3, "closeListener"    # Lcom/android/camera/device/SingleDeviceCloseListener;
    .param p4, "logger"    # Lcom/android/camera/debug/Logger;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/android/camera/device/PortabilityCameraActions$CloseCameraRunnable;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 161
    iput-object p2, p0, Lcom/android/camera/device/PortabilityCameraActions$CloseCameraRunnable;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 162
    iput-object p3, p0, Lcom/android/camera/device/PortabilityCameraActions$CloseCameraRunnable;->mCloseListener:Lcom/android/camera/device/SingleDeviceCloseListener;

    .line 163
    iput-object p4, p0, Lcom/android/camera/device/PortabilityCameraActions$CloseCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    .line 164
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/device/PortabilityCameraActions$CloseCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraAgent.closeCamera(id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/device/PortabilityCameraActions$CloseCameraRunnable;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/android/camera/device/PortabilityCameraActions$CloseCameraRunnable;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v2, p0, Lcom/android/camera/device/PortabilityCameraActions$CloseCameraRunnable;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    .line 171
    iget-object v1, p0, Lcom/android/camera/device/PortabilityCameraActions$CloseCameraRunnable;->mCloseListener:Lcom/android/camera/device/SingleDeviceCloseListener;

    invoke-interface {v1}, Lcom/android/camera/device/SingleDeviceCloseListener;->onDeviceClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/camera/device/PortabilityCameraActions$CloseCameraRunnable;->mCloseListener:Lcom/android/camera/device/SingleDeviceCloseListener;

    invoke-interface {v1, v0}, Lcom/android/camera/device/SingleDeviceCloseListener;->onDeviceClosingException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
