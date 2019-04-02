.class public Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;
.super Ljava/lang/Object;
.source "AndroidCameraDeviceProxy.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mCameraDevice:Landroid/hardware/camera2/CameraDevice;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 85
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 129
    return-void
.end method

.method public createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public createCaptureSession(Ljava/util/List;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 4
    .param p2, "stateCallback"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v3, v3, v2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;ZZLcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$1;)V

    invoke-virtual {v0, p1, v1, p3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 99
    return-void
.end method

.method public createConstrainedHighSpeedCaptureSession(Ljava/util/List;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 5
    .param p2, "stateCallback"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, p2, v2, v3, v4}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;ZZLcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$1;)V

    invoke-virtual {v0, p1, v1, p3}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 124
    return-void
.end method

.method public createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1
    .param p1, "inputResult"    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 5
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "stateCallback"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p3, v2, v3, v4}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;ZZLcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$1;)V

    invoke-virtual {v0, p1, p2, v1, p4}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 109
    return-void
.end method

.method public createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 5
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "stateCallback"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p3, v2, v3, v4}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;ZZLcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$1;)V

    invoke-virtual {v0, p1, p2, v1, p4}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 114
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
