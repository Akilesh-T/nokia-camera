.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AFCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

.field private final mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .param p3, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    .prologue
    .line 2074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2075
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;->mHandler:Landroid/os/Handler;

    .line 2076
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 2077
    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    .line 2078
    return-void
.end method

.method static synthetic access$1000(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    return-object v0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    .prologue
    .line 2067
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2068
    :cond_0
    const/4 v0, 0x0

    .line 2070
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "b"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward$1;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2088
    return-void
.end method
