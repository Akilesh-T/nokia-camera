.class public abstract Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;
.super Ljava/lang/Object;
.source "VideoUtilExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCamcorderProfile(Lcom/android/camera/device/CameraId;I)Landroid/media/CamcorderProfile;
.end method

.method protected getHSRQuality(Lcom/android/camera/device/CameraId;Lcom/android/camera/util/Size;I)I
    .locals 4
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "size"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "videoFps"    # I

    .prologue
    const/16 v3, 0x64

    .line 19
    const/4 v0, -0x1

    .line 20
    .local v0, "quality":I
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 23
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0xf00

    if-ne v1, v2, :cond_0

    .line 24
    if-lt p3, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    const/16 v2, 0x7d5

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    const/16 v0, 0x7d5

    goto :goto_0

    .line 27
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 33
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x780

    if-ne v1, v2, :cond_0

    .line 35
    if-lt p3, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    const/16 v2, 0x7d4

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    const/16 v0, 0x7d4

    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 43
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x500

    if-ne v1, v2, :cond_0

    .line 45
    if-lt p3, v3, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    const/16 v2, 0x7d3

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    const/16 v0, 0x7d3

    goto :goto_0

    .line 48
    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    .line 53
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x2d0

    if-eq v1, v2, :cond_4

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x2c0

    if-eq v1, v2, :cond_4

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x280

    if-ne v1, v2, :cond_0

    .line 55
    :cond_4
    if-lt p3, v3, :cond_5

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    const/16 v2, 0x7d2

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    const/16 v0, 0x7d2

    goto :goto_0

    .line 58
    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    .line 20
    :sswitch_data_0
    .sparse-switch
        0x1e0 -> :sswitch_3
        0x2d0 -> :sswitch_2
        0x438 -> :sswitch_1
        0x440 -> :sswitch_1
        0x870 -> :sswitch_0
    .end sparse-switch
.end method

.method public abstract isHSRQualitySupByCamcorder(Lcom/android/camera/device/CameraId;Lcom/android/camera/util/Size;I)I
.end method
