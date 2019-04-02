.class public Lcom/android/camera/one/v2/photo/extension/qualcomm/QCVideoUtilExtension;
.super Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;
.source "QCVideoUtilExtension.java"


# static fields
.field private static final HSR_VIDEO_CODEC:I = 0x2

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "QCVideoUtilExtension"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCVideoUtilExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;-><init>()V

    return-void
.end method

.method private isHighSpeedVideoSupportedByEncoder(Lcom/android/camera/util/Size;I)Z
    .locals 13
    .param p1, "videoSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "videoFps"    # I

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    mul-int v1, v10, p2

    .line 56
    .local v1, "expectedMBsPerSec":I
    :try_start_0
    const-string v10, "android.media.EncoderCapabilities"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getVideoEncoders"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 57
    .local v7, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 59
    .local v9, "videoEncoderCaps":Ljava/util/List;, "Ljava/util/List<Ljava/util/Objects;>;"
    if-eqz v9, :cond_1

    .line 60
    const-string v10, "android.media.EncoderCapabilities$VideoEncoderCap"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, "capClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "mCodec"

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 62
    .local v2, "field_Codec":Ljava/lang/reflect/Field;
    const-string v10, "mMaxFrameWidth"

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 63
    .local v5, "field_maxFrameWidth":Ljava/lang/reflect/Field;
    const-string v10, "mMaxFrameHeight"

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 64
    .local v3, "field_maxFrameHeight":Ljava/lang/reflect/Field;
    const-string v10, "mMaxFrameRate"

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 65
    .local v4, "field_maxFrameRate":Ljava/lang/reflect/Field;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 66
    .local v8, "object":Ljava/lang/Object;
    const/4 v12, 0x2

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v12, v10, :cond_0

    .line 67
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    mul-int/2addr v12, v10

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    mul-int v6, v12, v10

    .line 69
    .local v6, "maxMBsPerSec":I
    if-lt v6, v1, :cond_0

    .line 70
    const/4 v10, 0x1

    .line 77
    .end local v0    # "capClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field_Codec":Ljava/lang/reflect/Field;
    .end local v3    # "field_maxFrameHeight":Ljava/lang/reflect/Field;
    .end local v4    # "field_maxFrameRate":Ljava/lang/reflect/Field;
    .end local v5    # "field_maxFrameWidth":Ljava/lang/reflect/Field;
    .end local v6    # "maxMBsPerSec":I
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "object":Ljava/lang/Object;
    .end local v9    # "videoEncoderCaps":Ljava/util/List;, "Ljava/util/List<Ljava/util/Objects;>;"
    :goto_0
    return v10

    .line 75
    :catch_0
    move-exception v10

    .line 77
    :cond_1
    const/4 v10, 0x0

    goto :goto_0
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

    .line 44
    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    invoke-static {v1, p2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 45
    .local v0, "profile":Landroid/media/CamcorderProfile;
    iget v1, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    if-eq v1, v3, :cond_0

    .line 46
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCVideoUtilExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "video codec not default as : 2, reset it."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    iput v3, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 49
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

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCVideoUtilExtension;->getHSRQuality(Lcom/android/camera/device/CameraId;Lcom/android/camera/util/Size;I)I

    move-result v0

    .line 32
    .local v0, "quality":I
    if-ne v0, v1, :cond_1

    move v0, v1

    .line 38
    .end local v0    # "quality":I
    :cond_0
    :goto_0
    return v0

    .line 35
    .restart local v0    # "quality":I
    :cond_1
    const/16 v2, 0x7d0

    if-ge v0, v2, :cond_0

    .line 36
    invoke-direct {p0, p2, p3}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCVideoUtilExtension;->isHighSpeedVideoSupportedByEncoder(Lcom/android/camera/util/Size;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
