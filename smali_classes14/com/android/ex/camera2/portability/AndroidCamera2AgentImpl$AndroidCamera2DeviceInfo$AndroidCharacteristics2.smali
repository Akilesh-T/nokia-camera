.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;
.super Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidCharacteristics2"
.end annotation


# instance fields
.field private mCameraInfo:Landroid/hardware/camera2/CameraCharacteristics;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0
    .param p1, "cameraInfo"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 1407
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;-><init>()V

    .line 1408
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->mCameraInfo:Landroid/hardware/camera2/CameraCharacteristics;

    .line 1409
    return-void
.end method

.method private static convertRectToPoly(Landroid/graphics/RectF;)[F
    .locals 3
    .param p0, "rf"    # Landroid/graphics/RectF;

    .prologue
    .line 1457
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    return-object v0
.end method

.method private static rotate([FI)[F
    .locals 4
    .param p0, "arr"    # [F
    .param p1, "times"    # I

    .prologue
    .line 1462
    if-gez p1, :cond_0

    .line 1463
    array-length v2, p0

    rem-int v2, p1, v2

    array-length v3, p0

    add-int p1, v2, v3

    .line 1466
    :cond_0
    array-length v2, p0

    new-array v1, v2, [F

    .line 1467
    .local v1, "res":[F
    const/4 v0, 0x0

    .local v0, "offset":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1468
    add-int v2, p1, v0

    array-length v3, p0

    rem-int/2addr v2, v3

    aget v2, p0, v2

    aput v2, v1, v0

    .line 1467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1470
    :cond_1
    return-object v1
.end method


# virtual methods
.method public canDisableShutterSound()Z
    .locals 1

    .prologue
    .line 1453
    const/4 v0, 0x1

    return v0
.end method

.method public getPreviewTransform(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 6
    .param p1, "currentDisplayOrientation"    # I
    .param p2, "surfaceDimensions"    # Landroid/graphics/RectF;
    .param p3, "desiredBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v2, 0x0

    .line 1432
    invoke-static {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->orientationIsValid(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1433
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1448
    :goto_0
    return-object v0

    .line 1440
    :cond_0
    invoke-static {p2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->convertRectToPoly(Landroid/graphics/RectF;)[F

    move-result-object v4

    mul-int/lit8 v5, p1, 0x2

    div-int/lit8 v5, v5, 0x5a

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->rotate([FI)[F

    move-result-object v1

    .line 1442
    .local v1, "surfacePolygon":[F
    invoke-static {p3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->convertRectToPoly(Landroid/graphics/RectF;)[F

    move-result-object v3

    .line 1444
    .local v3, "desiredPolygon":[F
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1447
    .local v0, "transform":Landroid/graphics/Matrix;
    const/4 v5, 0x4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    goto :goto_0
.end method

.method public getSensorOrientation()I
    .locals 2

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->mCameraInfo:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isFacingBack()Z
    .locals 2

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->mCameraInfo:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 1414
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1413
    return v0
.end method

.method public isFacingFront()Z
    .locals 2

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->mCameraInfo:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 1420
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1419
    return v0
.end method
