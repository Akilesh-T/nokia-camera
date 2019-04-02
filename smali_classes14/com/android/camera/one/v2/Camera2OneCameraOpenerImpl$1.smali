.class Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "Camera2OneCameraOpenerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->open(Lcom/android/camera/device/CameraId;Landroid/os/Handler;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/SoundPlayer;Lcom/android/camera/one/OneCamera$OpenCallback;Lcom/android/camera/FatalErrorHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFirstCallback:Z

.field final synthetic this$0:Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;

.field final synthetic val$fatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

.field final synthetic val$imageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

.field final synthetic val$mainThread:Lcom/android/camera/async/MainThread;

.field final synthetic val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;Lcom/android/camera/one/OneCamera$OpenCallback;Lcom/android/camera/FatalErrorHandler;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->this$0:Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    iput-object p3, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->val$fatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    iput-object p4, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->val$mainThread:Lcom/android/camera/async/MainThread;

    iput-object p5, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->val$imageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->isFirstCallback:Z

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->isFirstCallback:Z

    .line 141
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraClosed()V

    .line 143
    :cond_0
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->isFirstCallback:Z

    .line 132
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 133
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraClosed()V

    .line 135
    :cond_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1
    .param p1, "device"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->isFirstCallback:Z

    .line 149
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 150
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->val$fatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 13
    .param p1, "device"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->isFirstCallback:Z

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->this$0:Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->access$000(Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 167
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->this$0:Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;

    .line 172
    invoke-static {v0}, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->access$100(Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;)Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->this$0:Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;

    .line 173
    invoke-static {v0}, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->access$200(Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;)Landroid/util/DisplayMetrics;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->this$0:Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;

    .line 174
    invoke-static {v0}, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->access$300(Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->val$mainThread:Lcom/android/camera/async/MainThread;

    iget-object v8, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->val$imageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->val$fatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    move-object v0, p1

    .line 167
    invoke-static/range {v0 .. v10}, Lcom/android/camera/one/v2/OneCameraCreator;->create(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera/one/config/OneCameraFeatureConfig;Landroid/util/DisplayMetrics;Landroid/content/Context;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/FatalErrorHandler;)Lcom/android/camera/one/OneCamera;

    move-result-object v12

    .line 180
    .local v12, "oneCamera":Lcom/android/camera/one/OneCamera;
    if-eqz v12, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0, v12}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V

    .line 194
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v12    # "oneCamera":Lcom/android/camera/one/OneCamera;
    :cond_0
    :goto_0
    return-void

    .line 183
    .restart local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v12    # "oneCamera":Lcom/android/camera/one/OneCamera;
    :cond_1
    invoke-static {}, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not construct a OneCamera object!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 186
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v12    # "oneCamera":Lcom/android/camera/one/OneCamera;
    :catch_0
    move-exception v11

    .line 187
    .local v11, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-static {}, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not get camera characteristics"

    invoke-static {v0, v1, v11}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    goto :goto_0

    .line 189
    .end local v11    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v11

    .line 190
    .local v11, "e":Lcom/android/camera/one/OneCameraAccessException;
    invoke-static {}, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not create OneCamera"

    invoke-static {v0, v1, v11}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    goto :goto_0
.end method
