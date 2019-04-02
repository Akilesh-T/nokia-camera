.class public Lcom/android/camera/stats/Camera2FaceProxy;
.super Ljava/lang/Object;
.source "Camera2FaceProxy.java"


# instance fields
.field private final mFaceRect:Landroid/graphics/Rect;

.field private final mScore:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "faceRect"    # Landroid/graphics/Rect;
    .param p2, "score"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/stats/Camera2FaceProxy;->mFaceRect:Landroid/graphics/Rect;

    .line 32
    iput p2, p0, Lcom/android/camera/stats/Camera2FaceProxy;->mScore:I

    .line 33
    return-void
.end method

.method public static from(Landroid/hardware/camera2/params/Face;)Lcom/android/camera/stats/Camera2FaceProxy;
    .locals 3
    .param p0, "face"    # Landroid/hardware/camera2/params/Face;

    .prologue
    .line 36
    new-instance v0, Lcom/android/camera/stats/Camera2FaceProxy;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/stats/Camera2FaceProxy;-><init>(Landroid/graphics/Rect;I)V

    .line 37
    .local v0, "convertedFace":Lcom/android/camera/stats/Camera2FaceProxy;
    return-object v0
.end method


# virtual methods
.method public getFaceRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/stats/Camera2FaceProxy;->mFaceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/stats/Camera2FaceProxy;->mScore:I

    return v0
.end method
