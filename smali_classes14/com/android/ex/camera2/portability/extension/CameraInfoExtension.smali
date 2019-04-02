.class public abstract Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;
.super Ljava/lang/Object;
.source "CameraInfoExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public abstract getDualCameraId()I
.end method

.method public abstract getFirstBackCameraId()I
.end method

.method public abstract getFirstFrontCameraId()I
.end method

.method public abstract getSlaveBackCameraId()I
.end method

.method public abstract init(I[Landroid/hardware/Camera$CameraInfo;)V
    .param p2    # [Landroid/hardware/Camera$CameraInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
