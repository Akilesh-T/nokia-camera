.class Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "AndroidCameraDeviceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidCaptureSessionStateCallback"
.end annotation


# instance fields
.field private final mIsConstrainedHighSpeedSession:Z

.field private final mIsReprocessable:Z

.field private final mStateCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;ZZ)V
    .locals 0
    .param p1, "stateCallback"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;
    .param p2, "isReprocessable"    # Z
    .param p3, "isConstrainedHighSpeedSession"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mStateCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;

    .line 46
    iput-boolean p2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mIsReprocessable:Z

    .line 47
    iput-boolean p3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mIsConstrainedHighSpeedSession:Z

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;ZZLcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$1;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;ZZ)V

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mStateCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;

    iget-boolean v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mIsReprocessable:Z

    iget-boolean v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mIsConstrainedHighSpeedSession:Z

    invoke-direct {v1, p1, v2, v3}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;-><init>(Landroid/hardware/camera2/CameraCaptureSession;ZZ)V

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;->onActive(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V

    .line 68
    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mStateCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;

    iget-boolean v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mIsReprocessable:Z

    iget-boolean v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mIsConstrainedHighSpeedSession:Z

    invoke-direct {v1, p1, v2, v3}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;-><init>(Landroid/hardware/camera2/CameraCaptureSession;ZZ)V

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;->onClosed(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V

    .line 73
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mStateCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;

    iget-boolean v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mIsReprocessable:Z

    iget-boolean v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mIsConstrainedHighSpeedSession:Z

    invoke-direct {v1, p1, v2, v3}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;-><init>(Landroid/hardware/camera2/CameraCaptureSession;ZZ)V

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;->onConfigureFailed(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V

    .line 58
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mStateCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;

    iget-boolean v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mIsReprocessable:Z

    iget-boolean v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mIsConstrainedHighSpeedSession:Z

    invoke-direct {v1, p1, v2, v3}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;-><init>(Landroid/hardware/camera2/CameraCaptureSession;ZZ)V

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;->onConfigured(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V

    .line 53
    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mStateCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;

    iget-boolean v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mIsReprocessable:Z

    iget-boolean v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mIsConstrainedHighSpeedSession:Z

    invoke-direct {v1, p1, v2, v3}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;-><init>(Landroid/hardware/camera2/CameraCaptureSession;ZZ)V

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;->onReady(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V

    .line 63
    return-void
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mStateCallback:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;

    iget-boolean v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mIsReprocessable:Z

    iget-boolean v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy$AndroidCaptureSessionStateCallback;->mIsConstrainedHighSpeedSession:Z

    invoke-direct {v1, p1, v2, v3}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;-><init>(Landroid/hardware/camera2/CameraCaptureSession;ZZ)V

    invoke-interface {v0, v1, p2}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;->onSurfacePrepared(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;)V

    .line 78
    return-void
.end method
