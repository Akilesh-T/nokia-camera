.class public Lcom/android/camera/one/v2/photo/extension/mtk/MTKOneCameraManagerExtention;
.super Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;
.source "MTKOneCameraManagerExtention.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "MTKCam2OneCamMgr"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKOneCameraManagerExtention;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogicCameraId(Landroid/hardware/camera2/CameraManager;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;
    .locals 9
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 46
    sget-object v4, Lcom/android/camera/one/v2/photo/extension/mtk/MTKOneCameraManagerExtention;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Getting Logic Camera For CaptureMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    invoke-static {p2}, Lcom/android/camera/util/ProductModelUtil;->getLogicCameraIdForCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    .line 48
    .local v2, "captureModeLogicCameraId":Lcom/android/camera/device/CameraId;
    sget-object v4, Lcom/android/camera/one/v2/photo/extension/mtk/MTKOneCameraManagerExtention;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "desire LogicCameraId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    if-eqz v2, :cond_1

    .line 51
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "cameraIds":[Ljava/lang/String;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 54
    .local v0, "cameraId":Ljava/lang/String;
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/mtk/MTKOneCameraManagerExtention;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cameraId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 62
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "cameraIds":[Ljava/lang/String;
    .end local v2    # "captureModeLogicCameraId":Lcom/android/camera/device/CameraId;
    :goto_1
    return-object v2

    .line 53
    .restart local v0    # "cameraId":Ljava/lang/String;
    .restart local v1    # "cameraIds":[Ljava/lang/String;
    .restart local v2    # "captureModeLogicCameraId":Lcom/android/camera/device/CameraId;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "cameraIds":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 58
    .local v3, "ex":Landroid/hardware/camera2/CameraAccessException;
    sget-object v4, Lcom/android/camera/one/v2/photo/extension/mtk/MTKOneCameraManagerExtention;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get Logic Camera For CaptureMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    .end local v3    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :cond_1
    sget-object v4, Lcom/android/camera/one/v2/photo/extension/mtk/MTKOneCameraManagerExtention;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "desire LogicCameraId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMonoCameraId(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/device/CameraId;
    .locals 1
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecondBackCameraId(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/device/CameraId;
    .locals 9
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    sget-object v5, Lcom/android/camera/one/v2/photo/extension/mtk/MTKOneCameraManagerExtention;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Getting Second BACK Camera"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 25
    const/4 v4, 0x0

    .line 26
    .local v4, "firstBackCameraId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "cameraIds":[Ljava/lang/String;
    array-length v7, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v0, v1, v6

    .line 29
    .local v0, "cameraId":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 30
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 31
    if-eqz v4, :cond_0

    .line 32
    invoke-static {v0}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 41
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "cameraIds":[Ljava/lang/String;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :goto_1
    return-object v5

    .line 34
    .restart local v0    # "cameraId":Ljava/lang/String;
    .restart local v1    # "cameraIds":[Ljava/lang/String;
    .restart local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_0
    move-object v4, v0

    .line 27
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 38
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "cameraIds":[Ljava/lang/String;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_0
    move-exception v3

    .line 39
    .local v3, "ex":Landroid/hardware/camera2/CameraAccessException;
    sget-object v5, Lcom/android/camera/one/v2/photo/extension/mtk/MTKOneCameraManagerExtention;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Unable to get Second BACK Camera ID"

    invoke-static {v5, v6, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .end local v3    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getUltraWideCameraId(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/device/CameraId;
    .locals 1
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method
