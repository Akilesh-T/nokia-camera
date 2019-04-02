.class public Lcom/android/camera/one/v2/photo/extension/mtk/MTKVideoUtilExtension;
.super Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;
.source "MTKVideoUtilExtension.java"


# static fields
.field private static final HSR_VIDEO_CODEC:I = 0x2

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "QCVideoUtilExtension"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKVideoUtilExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;-><init>()V

    return-void
.end method

.method private isHighSpeedVideoSupportedByEncoder(Lcom/android/camera/util/Size;I)Z
    .locals 1
    .param p1, "videoSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "videoFps"    # I

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getCamcorderProfile(Lcom/android/camera/device/CameraId;I)Landroid/media/CamcorderProfile;
    .locals 4
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "quality"    # I

    .prologue
    const/4 v3, 0x2

    .line 40
    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    invoke-static {v1, p2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 41
    .local v0, "profile":Landroid/media/CamcorderProfile;
    iget v1, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    if-eq v1, v3, :cond_0

    .line 42
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/mtk/MTKVideoUtilExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "video codec not default as : 2, reset it."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    iput v3, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 45
    :cond_0
    return-object v0
.end method

.method public isHSRQualitySupByCamcorder(Lcom/android/camera/device/CameraId;Lcom/android/camera/util/Size;I)I
    .locals 3
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "videoSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "videoFps"    # I

    .prologue
    const/4 v1, -0x1

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/one/v2/photo/extension/mtk/MTKVideoUtilExtension;->getHSRQuality(Lcom/android/camera/device/CameraId;Lcom/android/camera/util/Size;I)I

    move-result v0

    .line 28
    .local v0, "quality":I
    if-ne v0, v1, :cond_1

    move v0, v1

    .line 34
    .end local v0    # "quality":I
    :cond_0
    :goto_0
    return v0

    .line 31
    .restart local v0    # "quality":I
    :cond_1
    const/16 v2, 0x7d0

    if-ge v0, v2, :cond_0

    .line 32
    invoke-direct {p0, p2, p3}, Lcom/android/camera/one/v2/photo/extension/mtk/MTKVideoUtilExtension;->isHighSpeedVideoSupportedByEncoder(Lcom/android/camera/util/Size;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
