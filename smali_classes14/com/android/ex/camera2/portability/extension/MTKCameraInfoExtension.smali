.class public Lcom/android/ex/camera2/portability/extension/MTKCameraInfoExtension;
.super Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;
.source "MTKCameraInfoExtension.java"


# instance fields
.field private mFirstBackCameraId:I

.field private mFirstFrontCameraId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;-><init>()V

    .line 13
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraInfoExtension;->mFirstFrontCameraId:I

    .line 14
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraInfoExtension;->mFirstBackCameraId:I

    return-void
.end method


# virtual methods
.method public getDualCameraId()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    return v0
.end method

.method public getFirstBackCameraId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraInfoExtension;->mFirstBackCameraId:I

    return v0
.end method

.method public getFirstFrontCameraId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraInfoExtension;->mFirstFrontCameraId:I

    return v0
.end method

.method public getSlaveBackCameraId()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    return v0
.end method

.method public init(I[Landroid/hardware/Camera$CameraInfo;)V
    .locals 3
    .param p1, "numberOfCameras"    # I
    .param p2, "infos"    # [Landroid/hardware/Camera$CameraInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    if-gtz p1, :cond_1

    .line 25
    :cond_0
    return-void

    .line 18
    :cond_1
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 19
    aget-object v1, p2, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_3

    .line 20
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraInfoExtension;->mFirstBackCameraId:I

    .line 18
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 21
    :cond_3
    aget-object v1, p2, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 22
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraInfoExtension;->mFirstFrontCameraId:I

    goto :goto_1
.end method
