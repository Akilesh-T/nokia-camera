.class public abstract Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
.super Ljava/lang/Object;
.source "CameraAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CameraProxy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract abortCapture()V
.end method

.method public addCallbackBuffer([B)V
    .locals 3
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 714
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$10;

    invoke-direct {v2, p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$10;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;[B)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_0
    return-void

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public abstract applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z
.end method

.method public abstract applySettingsAndStartBurst(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;)V
    .param p1    # Lcom/android/ex/camera2/portability/CameraSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract applySettingsAndStartPanorama(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V
    .param p1    # Lcom/android/ex/camera2/portability/CameraSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract applySettingsAndTakePicture(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZIZZ)V
    .param p1    # Lcom/android/ex/camera2/portability/CameraSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected applySettingsHelper(Lcom/android/ex/camera2/portability/CameraSettings;I)Z
    .locals 5
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p2, "statesToAwait"    # I

    .prologue
    const/4 v2, 0x0

    .line 983
    if-nez p1, :cond_0

    .line 984
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraAgent;->access$200()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v3

    const-string v4, "null argument in applySettings()"

    invoke-static {v3, v4}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1009
    :goto_0
    return v2

    .line 987
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 988
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraAgent;->access$200()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v3

    const-string v4, "Unsupported settings in applySettings()"

    invoke-static {v3, v4}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->copy()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    .line 994
    .local v0, "copyOfSettings":Lcom/android/ex/camera2/portability/CameraSettings;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v2

    new-instance v3, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$15;

    invoke-direct {v3, p0, p2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$15;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;ILcom/android/ex/camera2/portability/CameraSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1006
    :catch_0
    move-exception v1

    .line 1007
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public abstract autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V
.end method

.method public cancelAutoFocus()V
    .locals 3

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    .line 747
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 746
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 748
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x131

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 749
    return-void
.end method

.method public abstract dumpDeviceSettings()Ljava/lang/String;
.end method

.method public enableShutterSound(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1047
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$17;

    invoke-direct {v2, p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$17;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :goto_0
    return-void

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public abstract getAgent()Lcom/android/ex/camera2/portability/CameraAgent;
.end method

.method public abstract getCamera()Landroid/hardware/Camera;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCameraHandler()Landroid/os/Handler;
.end method

.method public abstract getCameraId()I
.end method

.method public abstract getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;
.end method

.method public abstract getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;
.end method

.method public abstract getCharacteristics()Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
.end method

.method public abstract getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;
.end method

.method public abstract getParameters()Landroid/hardware/Camera$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSettings()Lcom/android/ex/camera2/portability/CameraSettings;
.end method

.method public lock()V
    .locals 3

    .prologue
    .line 522
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$3;

    invoke-direct {v2, p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$3;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public reconnect(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .prologue
    .line 481
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$1;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public refreshSettings()V
    .locals 3

    .prologue
    .line 1029
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$16;

    invoke-direct {v2, p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$16;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :goto_0
    return-void

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public abstract setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 850
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(IZ)V

    .line 851
    return-void
.end method

.method public setDisplayOrientation(IZ)V
    .locals 3
    .param p1, "degrees"    # I
    .param p2, "capture"    # Z

    .prologue
    .line 865
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$11;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$11;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;IZ)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :goto_0
    return-void

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public abstract setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V
.end method

.method public setJpegOrientation(I)V
    .locals 3
    .param p1, "degrees"    # I

    .prologue
    .line 880
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$12;

    invoke-direct {v2, p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$12;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;I)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :goto_0
    return-void

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public abstract setMetadataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V
.end method

.method public abstract setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
.end method

.method public abstract setParameters(Landroid/hardware/Camera$Parameters;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setPreviewDataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
.end method

.method public abstract setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 608
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$6;

    invoke-direct {v2, p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$6;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/view/SurfaceHolder;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 555
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$4;

    invoke-direct {v2, p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$4;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setPreviewTextureSync(Landroid/graphics/SurfaceTexture;)V
    .locals 8
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    :goto_0
    return-void

    .line 586
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;-><init>()V

    .line 588
    .local v0, "bundle":Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$5;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/graphics/SurfaceTexture;Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;)V

    iget-object v3, v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0xdac

    const-string v6, "set preview texture"

    invoke-virtual/range {v1 .. v6}, Lcom/android/ex/camera2/portability/DispatchThread;->runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v7

    .line 597
    .local v7, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public abstract setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
.end method

.method public startFaceDetection()V
    .locals 3

    .prologue
    .line 922
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$13;

    invoke-direct {v2, p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$13;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    :goto_0
    return-void

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public startPreview()V
    .locals 3

    .prologue
    .line 625
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$7;

    invoke-direct {v2, p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$7;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    .prologue
    .line 642
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$8;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$8;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public abstract stopBurst()V
.end method

.method public stopFaceDetection()V
    .locals 3

    .prologue
    .line 937
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$14;

    invoke-direct {v2, p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$14;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :goto_0
    return-void

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public abstract stopPanorama()V
.end method

.method public stopPreview()V
    .locals 8

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    :goto_0
    return-void

    .line 664
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;-><init>()V

    .line 666
    .local v0, "bundle":Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$9;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$9;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;)V

    iget-object v3, v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0xdac

    const-string v6, "stop preview"

    invoke-virtual/range {v1 .. v6}, Lcom/android/ex/camera2/portability/DispatchThread;->runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 672
    :catch_0
    move-exception v7

    .line 673
    .local v7, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public abstract takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V
.end method

.method public unlock()V
    .locals 8

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    :goto_0
    return-void

    .line 502
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;-><init>()V

    .line 504
    .local v0, "bundle":Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$2;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$2;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;)V

    iget-object v3, v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0xdac

    const-string v6, "camera unlock"

    invoke-virtual/range {v1 .. v6}, Lcom/android/ex/camera2/portability/DispatchThread;->runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v7

    .line 512
    .local v7, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
