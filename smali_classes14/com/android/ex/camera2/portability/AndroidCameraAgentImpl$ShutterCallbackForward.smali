.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShutterCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

.field private final mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .param p3, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    .prologue
    .line 2160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2161
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mHandler:Landroid/os/Handler;

    .line 2162
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 2163
    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    .line 2164
    return-void
.end method

.method static synthetic access$1400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    return-object v0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    .prologue
    .line 2153
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2154
    :cond_0
    const/4 v0, 0x0

    .line 2156
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 2168
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward$1;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2174
    return-void
.end method
