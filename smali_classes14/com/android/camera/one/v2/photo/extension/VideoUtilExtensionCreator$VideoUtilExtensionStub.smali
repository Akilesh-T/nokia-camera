.class public Lcom/android/camera/one/v2/photo/extension/VideoUtilExtensionCreator$VideoUtilExtensionStub;
.super Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;
.source "VideoUtilExtensionCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/extension/VideoUtilExtensionCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoUtilExtensionStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public getCamcorderProfile(Lcom/android/camera/device/CameraId;I)Landroid/media/CamcorderProfile;
    .locals 1
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "quality"    # I

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v0

    invoke-static {v0, p2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method

.method public isHSRQualitySupByCamcorder(Lcom/android/camera/device/CameraId;Lcom/android/camera/util/Size;I)I
    .locals 1
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "videoSize"    # Lcom/android/camera/util/Size;
    .param p3, "videoFps"    # I

    .prologue
    .line 37
    const/4 v0, -0x1

    return v0
.end method
