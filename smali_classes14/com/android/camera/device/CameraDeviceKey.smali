.class final Lcom/android/camera/device/CameraDeviceKey;
.super Ljava/lang/Object;
.source "CameraDeviceKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/device/CameraDeviceKey$ApiType;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mApiType:Lcom/android/camera/device/CameraDeviceKey$ApiType;

.field private final mCameraId:Lcom/android/camera/device/CameraId;


# direct methods
.method public constructor <init>(Lcom/android/camera/device/CameraDeviceKey$ApiType;Lcom/android/camera/device/CameraId;)V
    .locals 0
    .param p1, "apiType"    # Lcom/android/camera/device/CameraDeviceKey$ApiType;
    .param p2, "cameraId"    # Lcom/android/camera/device/CameraId;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceKey;->mApiType:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    .line 67
    iput-object p2, p0, Lcom/android/camera/device/CameraDeviceKey;->mCameraId:Lcom/android/camera/device/CameraId;

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 83
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 86
    check-cast v0, Lcom/android/camera/device/CameraDeviceKey;

    .line 88
    .local v0, "other":Lcom/android/camera/device/CameraDeviceKey;
    iget-object v3, p0, Lcom/android/camera/device/CameraDeviceKey;->mApiType:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    iget-object v4, v0, Lcom/android/camera/device/CameraDeviceKey;->mApiType:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 89
    goto :goto_0

    .line 91
    :cond_4
    iget-object v3, p0, Lcom/android/camera/device/CameraDeviceKey;->mCameraId:Lcom/android/camera/device/CameraId;

    iget-object v4, v0, Lcom/android/camera/device/CameraDeviceKey;->mCameraId:Lcom/android/camera/device/CameraId;

    invoke-virtual {v3, v4}, Lcom/android/camera/device/CameraId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 92
    goto :goto_0
.end method

.method public getApiType()Lcom/android/camera/device/CameraDeviceKey$ApiType;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceKey;->mApiType:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    return-object v0
.end method

.method public getCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceKey;->mCameraId:Lcom/android/camera/device/CameraId;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceKey;->mApiType:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceKey;->mCameraId:Lcom/android/camera/device/CameraId;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraDeviceKey{mApiType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceKey;->mApiType:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceKey;->mCameraId:Lcom/android/camera/device/CameraId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
