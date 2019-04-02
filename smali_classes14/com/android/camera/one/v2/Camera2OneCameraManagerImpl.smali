.class public Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;
.super Ljava/lang/Object;
.source "Camera2OneCameraManagerImpl.java"

# interfaces
.implements Lcom/android/camera/one/OneCameraManager;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mOneCameraManagerExtention:Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Camera2OneCamMgr"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraManager;)V
    .locals 1
    .param p1, "cameraManger"    # Landroid/hardware/camera2/CameraManager;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 74
    invoke-static {}, Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtCreator;->create()Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mOneCameraManagerExtention:Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;

    .line 75
    return-void
.end method

.method public static create()Lcom/google/common/base/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    sget-boolean v3, Lcom/android/camera/util/ApiHelper;->HAS_CAMERA_2_API:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/camera/product_utils/ProductUtil;->USE_CAPTURE_MODULE:Z

    if-nez v3, :cond_1

    .line 55
    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v3

    .line 66
    :goto_0
    return-object v3

    .line 59
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/AndroidServices;->provideCameraManager()Landroid/hardware/camera2/CameraManager;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    .local v0, "cameraManager":Landroid/hardware/camera2/CameraManager;
    new-instance v2, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;-><init>(Landroid/hardware/camera2/CameraManager;)V

    .line 66
    .local v2, "hardwareManager":Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;
    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    goto :goto_0

    .line 60
    .end local v0    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    .end local v2    # "hardwareManager":Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "ex":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "camera2.CameraManager is not available."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v3

    goto :goto_0
.end method

.method private findCameraId(Lcom/android/camera/one/OneCamera$Facing;)Ljava/lang/String;
    .locals 1
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 152
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->findFirstFrontCameraId()Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->findFirstBackCameraId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private findFirstBackCameraId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    sget-object v1, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Getting First BACK Camera"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->findFirstCameraIdFacing(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "cameraId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 164
    sget-object v1, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "No back-facing camera found."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    :cond_0
    return-object v0
.end method

.method private findFirstCameraIdFacing(I)Ljava/lang/String;
    .locals 7
    .param p1, "facing"    # I

    .prologue
    .line 183
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "cameraIds":[Ljava/lang/String;
    array-length v6, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 185
    .local v0, "cameraId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 186
    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 187
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, p1, :cond_0

    .line 194
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "cameraIds":[Ljava/lang/String;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :goto_1
    return-object v0

    .line 184
    .restart local v0    # "cameraId":Ljava/lang/String;
    .restart local v1    # "cameraIds":[Ljava/lang/String;
    .restart local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 191
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "cameraIds":[Ljava/lang/String;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_0
    move-exception v3

    .line 192
    .local v3, "ex":Landroid/hardware/camera2/CameraAccessException;
    sget-object v4, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Unable to get camera ID"

    invoke-static {v4, v5, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .end local v3    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findFirstFrontCameraId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    sget-object v1, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Getting First FRONT Camera"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 172
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->findFirstCameraIdFacing(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "cameraId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 174
    sget-object v1, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "No front-facing camera found."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    :cond_0
    return-object v0
.end method


# virtual methods
.method public findFirstCamera()Lcom/android/camera/device/CameraId;
    .locals 4

    .prologue
    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "ids":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 98
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 104
    .end local v1    # "ids":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    sget-object v2, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Unable to read camera list."

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .end local v0    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;
    .locals 2
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->findCameraId(Lcom/android/camera/one/OneCamera$Facing;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "cameraId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCameraCharacteristics(Lcom/android/camera/device/CameraId;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 3
    .param p1, "key"    # Lcom/android/camera/device/CameraId;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Lcom/android/camera/one/OneCameraAccessException;

    const-string v2, "Unable to get camera characteristics"

    invoke-direct {v1, v2, v0}, Lcom/android/camera/one/OneCameraAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLogicCameraId(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;
    .locals 2
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mOneCameraManagerExtention:Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;

    iget-object v1, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;->getLogicCameraId(Landroid/hardware/camera2/CameraManager;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    return-object v0
.end method

.method public getMonoCameraId()Lcom/android/camera/device/CameraId;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mOneCameraManagerExtention:Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;

    iget-object v1, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;->getMonoCameraId(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfCameras()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "ids":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 202
    array-length v2, v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1    # "ids":[Ljava/lang/String;
    :goto_0
    return v2

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    sget-object v2, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Unable to get camera ID"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .end local v0    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 2
    .param p1, "key"    # Lcom/android/camera/device/CameraId;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->getCameraCharacteristics(Lcom/android/camera/device/CameraId;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;-><init>(Lcom/android/camera/device/CameraId;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-object v0
.end method

.method public getSecondBackCameraId()Lcom/android/camera/device/CameraId;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mOneCameraManagerExtention:Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;

    iget-object v1, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;->getSecondBackCameraId(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    return-object v0
.end method

.method public getUltraWideCameraId()Lcom/android/camera/device/CameraId;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mOneCameraManagerExtention:Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;

    iget-object v1, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;->getUltraWideCameraId(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    return-object v0
.end method

.method public hasCamera()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "ids":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 84
    .end local v1    # "ids":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    sget-object v3, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Unable to read camera list."

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public hasCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 1
    .param p1, "direction"    # Lcom/android/camera/one/OneCamera$Facing;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->findCameraId(Lcom/android/camera/one/OneCamera$Facing;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBackFacingCamera(Lcom/android/camera/device/CameraId;)Z
    .locals 3
    .param p1, "id"    # Lcom/android/camera/device/CameraId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->getCameraCharacteristics(Lcom/android/camera/device/CameraId;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrontFacingCamera(Lcom/android/camera/device/CameraId;)Z
    .locals 2
    .param p1, "id"    # Lcom/android/camera/device/CameraId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->getCameraCharacteristics(Lcom/android/camera/device/CameraId;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
