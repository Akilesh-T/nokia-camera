.class public Lcom/android/camera/microvideo/MotionUtils;
.super Ljava/lang/Object;
.source "MotionUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MotionUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreviewSize()Lcom/android/camera/util/Size;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static pickPreviewSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 4
    .param p0, "pictureSize"    # Lcom/android/camera/util/Size;

    .prologue
    const/16 v3, 0x280

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 16
    .local v0, "ratio":F
    const/high16 v1, 0x3f100000    # 0.5625f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 18
    const-string v1, "MotionUtils"

    const-string v2, "pickPreviewSize: 640x360"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0x168

    invoke-direct {v1, v3, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 25
    :goto_0
    return-object v1

    .line 24
    :cond_0
    const-string v1, "MotionUtils"

    const-string v2, "pickPreviewSize: 640x480"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0x1e0

    invoke-direct {v1, v3, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    goto :goto_0
.end method
