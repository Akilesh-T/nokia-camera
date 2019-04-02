.class Lcom/android/camera/device/LegacyCameraActions$OpenCameraRunnable;
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
    name = "OpenCameraRunnable"
.end annotation


# instance fields
.field private final mCameraId:I

.field private final mLogger:Lcom/android/camera/debug/Logger;

.field private final mResults:Lcom/android/camera/device/SingleDeviceOpenListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/device/SingleDeviceOpenListener",
            "<",
            "Landroid/hardware/Camera;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/device/SingleDeviceOpenListener;ILcom/android/camera/debug/Logger;)V
    .locals 0
    .param p2, "cameraId"    # I
    .param p3, "logger"    # Lcom/android/camera/debug/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/SingleDeviceOpenListener",
            "<",
            "Landroid/hardware/Camera;",
            ">;I",
            "Lcom/android/camera/debug/Logger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "results":Lcom/android/camera/device/SingleDeviceOpenListener;, "Lcom/android/camera/device/SingleDeviceOpenListener<Landroid/hardware/Camera;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p2, p0, Lcom/android/camera/device/LegacyCameraActions$OpenCameraRunnable;->mCameraId:I

    .line 94
    iput-object p1, p0, Lcom/android/camera/device/LegacyCameraActions$OpenCameraRunnable;->mResults:Lcom/android/camera/device/SingleDeviceOpenListener;

    .line 95
    iput-object p3, p0, Lcom/android/camera/device/LegacyCameraActions$OpenCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    .line 96
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/device/LegacyCameraActions$OpenCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera.open(id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/device/LegacyCameraActions$OpenCameraRunnable;->mCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 102
    iget v2, p0, Lcom/android/camera/device/LegacyCameraActions$OpenCameraRunnable;->mCameraId:I

    invoke-static {v2}, Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 103
    .local v0, "device":Landroid/hardware/Camera;
    iget-object v2, p0, Lcom/android/camera/device/LegacyCameraActions$OpenCameraRunnable;->mResults:Lcom/android/camera/device/SingleDeviceOpenListener;

    invoke-interface {v2, v0}, Lcom/android/camera/device/SingleDeviceOpenListener;->onDeviceOpened(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "device":Landroid/hardware/Camera;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/camera/device/LegacyCameraActions$OpenCameraRunnable;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v3, "Opening the camera produced an exception!"

    invoke-interface {v2, v3, v1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    iget-object v2, p0, Lcom/android/camera/device/LegacyCameraActions$OpenCameraRunnable;->mResults:Lcom/android/camera/device/SingleDeviceOpenListener;

    invoke-interface {v2, v1}, Lcom/android/camera/device/SingleDeviceOpenListener;->onDeviceOpenException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
