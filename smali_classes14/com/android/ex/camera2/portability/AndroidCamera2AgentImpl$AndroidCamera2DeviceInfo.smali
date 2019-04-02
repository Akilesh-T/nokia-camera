.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;
.super Ljava/lang/Object;
.source "AndroidCamera2AgentImpl.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraDeviceInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidCamera2DeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;
    }
.end annotation


# instance fields
.field private final mCameraIds:[Ljava/lang/String;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mFirstBackCameraId:I

.field private final mFirstFrontCameraId:I

.field private final mNumberOfCameras:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;I)V
    .locals 9
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "cameraIds"    # [Ljava/lang/String;
    .param p3, "numberOfCameras"    # I

    .prologue
    const/4 v8, -0x1

    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1342
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 1343
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mCameraIds:[Ljava/lang/String;

    .line 1344
    iput p3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mNumberOfCameras:I

    .line 1346
    const/4 v1, -0x1

    .line 1347
    .local v1, "firstBackId":I
    const/4 v2, -0x1

    .line 1348
    .local v2, "firstFrontId":I
    const/4 v3, 0x0

    .local v3, "id":I
    :goto_0
    array-length v5, p2

    if-ge v3, v5, :cond_2

    .line 1350
    :try_start_0
    aget-object v5, p2, v3

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1351
    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1352
    .local v4, "lensDirection":I
    if-ne v1, v8, :cond_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1354
    move v1, v3

    .line 1356
    :cond_0
    if-ne v2, v8, :cond_1

    if-nez v4, :cond_1

    .line 1358
    move v2, v3

    .line 1348
    .end local v4    # "lensDirection":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t get characteristics of camera \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1364
    .end local v0    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    iput v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mFirstBackCameraId:I

    .line 1365
    iput v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mFirstFrontCameraId:I

    .line 1366
    return-void
.end method


# virtual methods
.method public getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    .line 1370
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mCameraIds:[Ljava/lang/String;

    aget-object v0, v3, p1

    .line 1372
    .local v0, "actualId":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v3, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 1373
    .local v2, "info":Landroid/hardware/camera2/CameraCharacteristics;
    new-instance v3, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;

    invoke-direct {v3, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1375
    .end local v2    # "info":Landroid/hardware/camera2/CameraCharacteristics;
    :goto_0
    return-object v3

    .line 1374
    :catch_0
    move-exception v1

    .line 1375
    .local v1, "ex":Landroid/hardware/camera2/CameraAccessException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getDaulCameraBackId()I
    .locals 1

    .prologue
    .line 1401
    const/4 v0, -0x1

    return v0
.end method

.method public getFirstBackCameraId()I
    .locals 1

    .prologue
    .line 1386
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mFirstBackCameraId:I

    return v0
.end method

.method public getFirstFrontCameraId()I
    .locals 1

    .prologue
    .line 1391
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mFirstFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 1381
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mNumberOfCameras:I

    return v0
.end method

.method public getSecondBackCameraId()I
    .locals 1

    .prologue
    .line 1396
    const/4 v0, -0x1

    return v0
.end method
