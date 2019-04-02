.class public final Lcom/android/camera/device/CameraId;
.super Ljava/lang/Object;
.source "CameraId.java"


# instance fields
.field private final mCameraId:Ljava/lang/String;

.field private final mLegacyCameraId:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "legacyCameraId"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/camera/device/CameraId;->mCameraId:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/android/camera/device/CameraId;->mLegacyCameraId:Ljava/lang/Integer;

    .line 63
    return-void
.end method

.method private static computeCameraIdFromLegacyId(I)Ljava/lang/String;
    .locals 1
    .param p0, "camera1Id"    # I

    .prologue
    .line 57
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static computeLegacyIdFromCamera2Id(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "camera2Id"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 44
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;
    .locals 2
    .param p0, "camera2Id"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 34
    new-instance v0, Lcom/android/camera/device/CameraId;

    invoke-static {p0}, Lcom/android/camera/device/CameraId;->computeLegacyIdFromCamera2Id(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/device/CameraId;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static fromLegacyId(I)Lcom/android/camera/device/CameraId;
    .locals 3
    .param p0, "camera1Id"    # I

    .prologue
    .line 30
    new-instance v0, Lcom/android/camera/device/CameraId;

    invoke-static {p0}, Lcom/android/camera/device/CameraId;->computeCameraIdFromLegacyId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/device/CameraId;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 95
    if-ne p0, p1, :cond_0

    .line 96
    const/4 v1, 0x1

    .line 107
    :goto_0
    return v1

    .line 98
    :cond_0
    instance-of v1, p1, Lcom/android/camera/device/CameraId;

    if-nez v1, :cond_1

    .line 99
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 102
    check-cast v0, Lcom/android/camera/device/CameraId;

    .line 107
    .local v0, "otherCameraId":Lcom/android/camera/device/CameraId;
    iget-object v1, p0, Lcom/android/camera/device/CameraId;->mCameraId:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/camera/device/CameraId;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getLegacyValue()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/device/CameraId;->mLegacyCameraId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to access a camera id that is not supported on legacy camera API\'s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/device/CameraId;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/camera/device/CameraId;->mLegacyCameraId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/device/CameraId;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public hasLeagcyValue()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/device/CameraId;->mLegacyCameraId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/device/CameraId;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraId{Api2=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/device/CameraId;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',Api1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/device/CameraId;->mLegacyCameraId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
