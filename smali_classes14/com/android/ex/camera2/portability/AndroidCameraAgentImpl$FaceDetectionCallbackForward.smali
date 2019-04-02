.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FaceDetectionCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;

.field private final mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .param p3, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;

    .prologue
    .line 2288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2289
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;->mHandler:Landroid/os/Handler;

    .line 2290
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 2291
    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;

    .line 2292
    return-void
.end method

.method static synthetic access$2000(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;

    return-object v0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;

    .prologue
    .line 2281
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2282
    :cond_0
    const/4 v0, 0x0

    .line 2284
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 2
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward$1;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;[Landroid/hardware/Camera$Face;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2303
    return-void
.end method
