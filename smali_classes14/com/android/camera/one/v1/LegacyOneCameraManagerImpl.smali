.class public Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;
.super Ljava/lang/Object;
.source "LegacyOneCameraManagerImpl.java"

# interfaces
.implements Lcom/android/camera/one/OneCameraManager;


# static fields
.field private static final CAMERA_ACCESS_TIMEOUT_MILLIS:J = 0x2eeL

.field private static INSTANCE:Lcom/google/common/base/Optional; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_DEVICE:I = -0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mBackCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

.field private final mFirstBackCameraId:Lcom/android/camera/device/CameraId;

.field private final mFirstFrontCameraId:Lcom/android/camera/device/CameraId;

.field private mFrontCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "LegacyHM"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;[Landroid/hardware/Camera$CameraInfo;)V
    .locals 0
    .param p1, "firstBackCameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "firstFrontCameraId"    # Lcom/android/camera/device/CameraId;
    .param p3, "info"    # [Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mFirstBackCameraId:Lcom/android/camera/device/CameraId;

    .line 101
    iput-object p2, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mFirstFrontCameraId:Lcom/android/camera/device/CameraId;

    .line 103
    iput-object p3, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    .line 104
    return-void
.end method

.method public static instance()Lcom/google/common/base/Optional;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 53
    sget-object v9, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->INSTANCE:Lcom/google/common/base/Optional;

    if-eqz v9, :cond_0

    .line 54
    sget-object v9, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->INSTANCE:Lcom/google/common/base/Optional;

    .line 90
    .local v8, "numberOfCameras":I
    :goto_0
    return-object v9

    .line 60
    .end local v8    # "numberOfCameras":I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v8

    .line 61
    .restart local v8    # "numberOfCameras":I
    new-array v1, v8, [Landroid/hardware/Camera$CameraInfo;

    .line 62
    .local v1, "cameraInfos":[Landroid/hardware/Camera$CameraInfo;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 63
    new-instance v9, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v9}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v9, v1, v7

    .line 64
    aget-object v9, v1, v7

    invoke-static {v7, v9}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "cameraInfos":[Landroid/hardware/Camera$CameraInfo;
    .end local v7    # "i":I
    :catch_0
    move-exception v3

    .line 67
    .local v3, "ex":Ljava/lang/RuntimeException;
    sget-object v9, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v10, "Exception while creating CameraDeviceInfo"

    invoke-static {v9, v10, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v9

    goto :goto_0

    .line 71
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "cameraInfos":[Landroid/hardware/Camera$CameraInfo;
    .restart local v7    # "i":I
    :cond_1
    const/4 v5, -0x1

    .line 72
    .local v5, "firstFront":I
    const/4 v4, -0x1

    .line 74
    .local v4, "firstBack":I
    add-int/lit8 v7, v8, -0x1

    :goto_2
    if-ltz v7, :cond_4

    .line 75
    aget-object v9, v1, v7

    iget v9, v9, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v9, :cond_3

    .line 76
    move v4, v7

    .line 74
    :cond_2
    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 78
    :cond_3
    aget-object v9, v1, v7

    iget v9, v9, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 79
    move v5, v7

    goto :goto_3

    .line 84
    :cond_4
    if-ltz v5, :cond_6

    invoke-static {v5}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v6

    .line 85
    .local v6, "frontCameraId":Lcom/android/camera/device/CameraId;
    :goto_4
    if-ltz v4, :cond_5

    invoke-static {v4}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 87
    .local v0, "backCameraId":Lcom/android/camera/device/CameraId;
    :cond_5
    new-instance v2, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;

    invoke-direct {v2, v0, v6, v1}, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;-><init>(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;[Landroid/hardware/Camera$CameraInfo;)V

    .line 89
    .local v2, "cameraManager":Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;
    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v9

    sput-object v9, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->INSTANCE:Lcom/google/common/base/Optional;

    .line 90
    sget-object v9, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->INSTANCE:Lcom/google/common/base/Optional;

    goto :goto_0

    .end local v0    # "backCameraId":Lcom/android/camera/device/CameraId;
    .end local v2    # "cameraManager":Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;
    .end local v6    # "frontCameraId":Lcom/android/camera/device/CameraId;
    :cond_6
    move-object v6, v0

    .line 84
    goto :goto_4
.end method


# virtual methods
.method public computeCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 5
    .param p1, "key"    # Lcom/android/camera/device/CameraId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "camera":Landroid/hardware/Camera;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 192
    .local v1, "cameraParameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 193
    sget-object v3, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Camera object returned null parameters!"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    new-instance v3, Lcom/android/camera/one/OneCameraAccessException;

    const-string v4, "API1 Camera.getParameters() returned null"

    invoke-direct {v3, v4}, Lcom/android/camera/one/OneCameraAccessException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v1    # "cameraParameters":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    :cond_0
    throw v3

    .line 196
    .restart local v1    # "cameraParameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;

    iget-object v3, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    .line 197
    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {v2, p1, v3, v1}, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;-><init>(Lcom/android/camera/device/CameraId;Landroid/hardware/Camera$CameraInfo;Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    .local v2, "characteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    if-eqz v0, :cond_2

    .line 200
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 204
    :cond_2
    return-object v2
.end method

.method public findFirstCamera()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mFirstBackCameraId:Lcom/android/camera/device/CameraId;

    return-object v0
.end method

.method public findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;
    .locals 1
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 143
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mFirstBackCameraId:Lcom/android/camera/device/CameraId;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mFirstBackCameraId:Lcom/android/camera/device/CameraId;

    .line 148
    :goto_0
    return-object v0

    .line 145
    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mFirstFrontCameraId:Lcom/android/camera/device/CameraId;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mFirstFrontCameraId:Lcom/android/camera/device/CameraId;

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogicCameraId(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;
    .locals 1
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMonoCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumberOfCameras()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 3
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mFirstBackCameraId:Lcom/android/camera/device/CameraId;

    invoke-virtual {p1, v0}, Lcom/android/camera/device/CameraId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mBackCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: Computing potentially long running device access!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->computeCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mBackCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 162
    :cond_0
    sget-object v0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning camera characteristics for back camera."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mBackCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 182
    :goto_0
    return-object v0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mFirstFrontCameraId:Lcom/android/camera/device/CameraId;

    invoke-virtual {p1, v0}, Lcom/android/camera/device/CameraId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mFrontCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-nez v0, :cond_2

    .line 168
    sget-object v0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: Computing potentially long running device access!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->computeCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mFrontCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 173
    :cond_2
    sget-object v0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning camera characteristics for front camera."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mFrontCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    goto :goto_0

    .line 178
    :cond_3
    sget-object v1, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackCamera: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mFirstBackCameraId:Lcom/android/camera/device/CameraId;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",  ==? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mFirstBackCameraId:Lcom/android/camera/device/CameraId;

    if-ne v0, p1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FrontCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mFirstFrontCameraId:Lcom/android/camera/device/CameraId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching camera id for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 178
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSecondBackCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUltraWideCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasCamera()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public hasCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 1
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

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
    const/4 v0, 0x0

    .line 220
    iget-object v1, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    if-nez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v2

    aget-object v1, v1, v2

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFrontFacingCamera(Lcom/android/camera/device/CameraId;)Z
    .locals 4
    .param p1, "id"    # Lcom/android/camera/device/CameraId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 214
    iget-object v2, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    if-nez v2, :cond_0

    .line 215
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
