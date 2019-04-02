.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->applySettingsAndTakePicture(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

.field final synthetic val$bokehCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isCameraFrontFacing:Z

.field final synthetic val$isLongExposureTime:Z

.field final synthetic val$isUsePostProcess:Z

.field final synthetic val$isoValue:I

.field final synthetic val$jpegCallback:Landroid/hardware/Camera$PictureCallback;

.field final synthetic val$jpegRotation:I

.field final synthetic val$notSupportCallbackWrap:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

.field final synthetic val$postview:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

.field final synthetic val$raw:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

.field final synthetic val$settings:Lcom/android/ex/camera2/portability/CameraSettings;

.field final synthetic val$shutter:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Landroid/hardware/Camera$PictureCallback;IZZLcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZLcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$settings:Lcom/android/ex/camera2/portability/CameraSettings;

    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$shutter:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    iput-object p5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$raw:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    iput-object p6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$postview:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    iput-object p7, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$jpegCallback:Landroid/hardware/Camera$PictureCallback;

    iput p8, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$jpegRotation:I

    iput-boolean p9, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$isUsePostProcess:Z

    iput-boolean p10, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$isCameraFrontFacing:Z

    iput-object p11, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$notSupportCallbackWrap:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    iput p12, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$isoValue:I

    iput-boolean p13, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$isLongExposureTime:Z

    iput-object p14, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$bokehCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1572
    :goto_0
    return-void

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->waitForStates(I)Z

    .line 1465
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v1, :cond_1

    .line 1467
    new-instance v11, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;

    invoke-direct {v11, p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;)V

    .line 1485
    .local v11, "hdrRunnable":Ljava/lang/Runnable;
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1486
    .end local v11    # "hdrRunnable":Ljava/lang/Runnable;
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v1, :cond_2

    .line 1487
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$700(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$shutter:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    .line 1488
    invoke-static {v1, v2, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$raw:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    .line 1490
    invoke-static {v2, v3, v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$postview:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    .line 1492
    invoke-static {v3, v4, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$jpegCallback:Landroid/hardware/Camera$PictureCallback;

    iget v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$jpegRotation:I

    iget-boolean v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$isUsePostProcess:Z

    iget v7, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$isoValue:I

    iget-boolean v8, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$isCameraFrontFacing:Z

    iget-object v9, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$notSupportCallbackWrap:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    iget-boolean v10, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$isLongExposureTime:Z

    .line 1487
    invoke-virtual/range {v0 .. v10}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->requestTakeDenoisePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;IZIZLcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;Z)V

    goto :goto_0

    .line 1501
    :cond_2
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v1, :cond_6

    .line 1502
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->isLongShotSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1503
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$2;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$2;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1512
    :cond_3
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->isLongShotEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v13, 0x1

    .line 1514
    .local v13, "needRestartPreviewForLongShot":Z
    :goto_1
    new-instance v12, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$3;

    invoke-direct {v12, p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$3;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;)V

    .line 1533
    .local v12, "lowlightRunnable":Ljava/lang/Runnable;
    if-eqz v13, :cond_5

    .line 1534
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$4;

    invoke-direct {v2, p0, v12}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$4;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto/16 :goto_0

    .line 1512
    .end local v12    # "lowlightRunnable":Ljava/lang/Runnable;
    .end local v13    # "needRestartPreviewForLongShot":Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    .line 1542
    .restart local v12    # "lowlightRunnable":Ljava/lang/Runnable;
    .restart local v13    # "needRestartPreviewForLongShot":Z
    :cond_5
    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 1544
    .end local v12    # "lowlightRunnable":Ljava/lang/Runnable;
    .end local v13    # "needRestartPreviewForLongShot":Z
    :cond_6
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->BEAUTY:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v1, :cond_7

    .line 1545
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$700(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$shutter:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    .line 1546
    invoke-static {v1, v2, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$raw:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    .line 1548
    invoke-static {v2, v3, v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$postview:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    .line 1550
    invoke-static {v3, v4, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$jpegCallback:Landroid/hardware/Camera$PictureCallback;

    iget v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$jpegRotation:I

    iget-boolean v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$isUsePostProcess:Z

    iget-boolean v7, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$isCameraFrontFacing:Z

    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$notSupportCallbackWrap:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    .line 1545
    invoke-virtual/range {v0 .. v8}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->requestTakeBeautyPicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;IZZLcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;)V

    goto/16 :goto_0

    .line 1557
    :cond_7
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->BOKEH:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v1, :cond_8

    .line 1558
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$700(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$shutter:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    .line 1559
    invoke-static {v1, v2, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$raw:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    .line 1561
    invoke-static {v2, v3, v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$postview:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    .line 1563
    invoke-static {v3, v4, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$bokehCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;

    iget v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$jpegRotation:I

    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$notSupportCallbackWrap:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    .line 1558
    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->requestTakeBokehPicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;ILcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;)V

    goto/16 :goto_0

    .line 1570
    :cond_8
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->access$900(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;)Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknow CaptureIntent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto/16 :goto_0
.end method
