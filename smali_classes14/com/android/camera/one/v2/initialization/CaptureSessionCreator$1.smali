.class Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;
.super Ljava/lang/Object;
.source "CaptureSessionCreator.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->createCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Ljava/util/List;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/burst/BurstFacade;)Lcom/google/common/util/concurrent/SettableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;

.field final synthetic val$burstFacade:Lcom/android/camera/burst/BurstFacade;

.field final synthetic val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field final synthetic val$sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$slaveInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

.field final synthetic val$slaveSurfaces:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;Lcom/google/common/util/concurrent/SettableFuture;Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/burst/BurstFacade;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;

    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$slaveInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    iput-object p4, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$slaveSurfaces:Ljava/util/List;

    iput-object p5, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    iput-object p6, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$burstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V
    .locals 3
    .param p1, "session"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    .prologue
    .line 73
    sget-object v0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onClosed(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V
    .locals 3
    .param p1, "session"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    .prologue
    .line 236
    sget-object v0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClosed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    .line 238
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->close()V

    .line 239
    return-void
.end method

.method public onConfigureFailed(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V
    .locals 3
    .param p1, "session"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    .prologue
    .line 79
    sget-object v0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigureFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    .line 81
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->close()V

    .line 82
    return-void
.end method

.method public onConfigured(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V
    .locals 7
    .param p1, "session"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    .prologue
    .line 86
    sget-object v2, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isReprocessable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->isReprocessable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isConstrainedHighSpeedSession = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->isConstrainedHighSpeedSession()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;

    invoke-static {v2}, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->access$000(Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;)Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 90
    :try_start_0
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->isReprocessable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$slaveInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    if-eqz v2, :cond_1

    .line 91
    sget-object v2, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "create ReprocessableCaptureSession for slave"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;

    invoke-static {v2}, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->access$000(Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;)Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$slaveInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v4, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$slaveSurfaces:Ljava/util/List;

    new-instance v5, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1$1;

    invoke-direct {v5, p0, p1}, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1$1;-><init>(Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V

    iget-object v6, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;

    .line 135
    invoke-static {v6}, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->access$100(Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;)Landroid/os/Handler;

    move-result-object v6

    .line 92
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    sget-object v2, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "create CaptureSession for slave"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;

    invoke-static {v2}, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->access$000(Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;)Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$slaveSurfaces:Ljava/util/List;

    new-instance v4, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1$2;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1$2;-><init>(Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V

    iget-object v5, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->this$0:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;

    .line 181
    invoke-static {v5}, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->access$100(Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;)Landroid/os/Handler;

    move-result-object v5

    .line 138
    invoke-interface {v2, v3, v4, v5}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->createCaptureSession(Ljava/util/List;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v2, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCaptureSession for slave device fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->close()V

    .line 186
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v2, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 189
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    const/4 v1, 0x0

    .line 190
    .local v1, "valueSet":Z
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->prepareSlowMotionSurface()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isConstrainedHighSpeedSessionNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 192
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$burstFacade:Lcom/android/camera/burst/BurstFacade;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$burstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 193
    sget-object v2, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "session prepare surface in slowmotion!"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$burstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->prepare(Landroid/view/Surface;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 195
    const/4 v1, 0x1

    .line 208
    :cond_3
    :goto_1
    if-nez v1, :cond_0

    .line 211
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->close()V

    goto :goto_0

    .line 197
    :catch_1
    move-exception v0

    .line 198
    .restart local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_1

    .line 199
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_2
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 201
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 205
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v3, Landroid/support/v4/util/Pair;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1
.end method

.method public onReady(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V
    .locals 3
    .param p1, "session"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    .prologue
    .line 218
    sget-object v0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReady : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public onSurfacePrepared(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;)V
    .locals 4
    .param p1, "session"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 224
    sget-object v1, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfacePrepared : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v2, Landroid/support/v4/util/Pair;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    .line 227
    .local v0, "valueSet":Z
    if-nez v0, :cond_0

    .line 230
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->close()V

    .line 232
    :cond_0
    return-void
.end method
