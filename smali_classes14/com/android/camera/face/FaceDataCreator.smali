.class public Lcom/android/camera/face/FaceDataCreator;
.super Ljava/lang/Object;
.source "FaceDataCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create([Landroid/hardware/Camera$Face;)[Lcom/android/camera/face/FaceData;
    .locals 4
    .param p0, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 11
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 16
    :cond_1
    return-object v1

    .line 12
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Lcom/android/camera/face/FaceData;

    .line 13
    .local v1, "oneFaces":[Lcom/android/camera/face/FaceData;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 14
    new-instance v2, Lcom/android/camera/face/FaceData;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Lcom/android/camera/face/FaceData;-><init>(Landroid/hardware/Camera$Face;)V

    aput-object v2, v1, v0

    .line 13
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
