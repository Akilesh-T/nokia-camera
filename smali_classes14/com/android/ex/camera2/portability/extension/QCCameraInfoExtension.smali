.class public Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;
.super Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;
.source "QCCameraInfoExtension.java"


# instance fields
.field private mDualCameraId:I

.field private mFirstBackCameraId:I

.field private mFirstFrontCameraId:I

.field private mSlaveBackCameraId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 13
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;-><init>()V

    .line 14
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;->mFirstFrontCameraId:I

    .line 15
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;->mFirstBackCameraId:I

    .line 16
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;->mSlaveBackCameraId:I

    .line 17
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;->mDualCameraId:I

    return-void
.end method


# virtual methods
.method public getDualCameraId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;->mDualCameraId:I

    return v0
.end method

.method public getFirstBackCameraId()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;->mFirstBackCameraId:I

    return v0
.end method

.method public getFirstFrontCameraId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;->mFirstFrontCameraId:I

    return v0
.end method

.method public getSlaveBackCameraId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;->mSlaveBackCameraId:I

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
    .line 20
    if-gtz p1, :cond_1

    .line 57
    :cond_0
    return-void

    .line 21
    :cond_1
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 22
    aget-object v1, p2, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_3

    .line 23
    packed-switch p1, :pswitch_data_0

    .line 50
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;->mFirstBackCameraId:I

    .line 21
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 25
    :pswitch_0
    packed-switch v0, :pswitch_data_1

    .line 35
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;->mFirstBackCameraId:I

    goto :goto_1

    .line 28
    :pswitch_1
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;->mDualCameraId:I

    goto :goto_1

    .line 32
    :pswitch_2
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;->mSlaveBackCameraId:I

    goto :goto_1

    .line 40
    :pswitch_3
    packed-switch v0, :pswitch_data_2

    .line 45
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;->mFirstBackCameraId:I

    goto :goto_1

    .line 42
    :pswitch_4
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;->mSlaveBackCameraId:I

    goto :goto_1

    .line 53
    :cond_3
    aget-object v1, p2, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 54
    iput v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;->mFirstFrontCameraId:I

    goto :goto_1

    .line 23
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 25
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 40
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method
