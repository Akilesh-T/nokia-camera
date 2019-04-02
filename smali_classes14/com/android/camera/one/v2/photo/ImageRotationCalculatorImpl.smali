.class public Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;
.super Ljava/lang/Object;
.source "ImageRotationCalculatorImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageRotationCalculator;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final mFrontFacing:Z

.field private final mOrientationManager:Lcom/android/camera/app/OrientationManager;

.field private final mSensorOrientationDegrees:I


# direct methods
.method public constructor <init>(Lcom/android/camera/app/OrientationManager;IZ)V
    .locals 0
    .param p1, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p2, "sensorOrientationDegrees"    # I
    .param p3, "frontFacing"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->mSensorOrientationDegrees:I

    .line 51
    iput-boolean p3, p0, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->mFrontFacing:Z

    .line 52
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    .line 53
    return-void
.end method

.method public static from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .locals 4
    .param p0, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p1, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    .line 60
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v1

    .line 61
    .local v1, "sensorOrientation":I
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    .line 62
    .local v0, "lensDirection":Lcom/android/camera/one/OneCamera$Facing;
    new-instance v3, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {v3, p0, v1, v2}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;-><init>(Lcom/android/camera/app/OrientationManager;IZ)V

    return-object v3

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getOrientationManager()Lcom/android/camera/app/OrientationManager;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    return-object v0
.end method

.method public getSupplier()Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl$1;-><init>(Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;)V

    return-object v0
.end method

.method public toImageRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 4

    .prologue
    .line 68
    iget v1, p0, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->mSensorOrientationDegrees:I

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    .line 69
    invoke-interface {v2}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->mFrontFacing:Z

    .line 68
    invoke-static {v1, v2, v3}, Lcom/android/camera/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v0

    .line 70
    .local v0, "imageRotation":I
    invoke-static {v0}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->from(I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    return-object v1
.end method
