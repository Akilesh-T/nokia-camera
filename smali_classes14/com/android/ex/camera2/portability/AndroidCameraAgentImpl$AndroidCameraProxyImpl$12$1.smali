.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    .prologue
    .line 1467
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$700(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget-object v1, v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget-object v3, v3, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$shutter:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    .line 1471
    invoke-static {v1, v2, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget-object v3, v3, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget-object v4, v4, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$raw:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    .line 1473
    invoke-static {v2, v3, v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget-object v3, v3, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget-object v4, v4, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget-object v5, v5, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$postview:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    .line 1475
    invoke-static {v3, v4, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget-object v4, v4, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$jpegCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget v5, v5, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$jpegRotation:I

    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget-boolean v6, v6, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$isUsePostProcess:Z

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget-boolean v7, v7, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$isCameraFrontFacing:Z

    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget-object v8, v8, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$notSupportCallbackWrap:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    .line 1470
    invoke-virtual/range {v0 .. v8}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->requestTakeHDRPicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;IZZLcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;)V

    .line 1482
    return-void
.end method
