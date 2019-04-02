.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;
.super Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$jpeg:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

.field final synthetic val$shutter:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->val$shutter:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->val$jpeg:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$1;)V

    return-void
.end method


# virtual methods
.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->val$shutter:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$1;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1155
    :cond_0
    return-void
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 7
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 1159
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1

    .local v1, "image":Landroid/media/Image;
    const/4 v4, 0x0

    .line 1160
    :try_start_0
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->val$jpeg:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    if-eqz v3, :cond_0

    .line 1161
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1162
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v2, v3, [B

    .line 1163
    .local v2, "pixels":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1164
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$2;

    invoke-direct {v5, p0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$2;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;[B)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1170
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "pixels":[B
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v4, :cond_2

    :try_start_1
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1171
    :cond_1
    :goto_0
    return-void

    .line 1170
    :catch_0
    move-exception v3

    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 1159
    :catch_1
    move-exception v3

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1170
    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_1
    if-eqz v1, :cond_3

    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v3

    :catch_2
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto :goto_2

    :catchall_1
    move-exception v3

    goto :goto_1
.end method
