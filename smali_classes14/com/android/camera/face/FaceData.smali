.class public Lcom/android/camera/face/FaceData;
.super Ljava/lang/Object;
.source "FaceData.java"


# static fields
.field public static final SCORE_MAX:I = 0x64


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public final mId:I

.field public final mLeftEye:Landroid/graphics/Point;

.field public final mMouth:Landroid/graphics/Point;

.field public final mRightEye:Landroid/graphics/Point;

.field public final mScore:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "score"    # I
    .param p3, "id"    # I
    .param p4, "leftEye"    # Landroid/graphics/Point;
    .param p5, "rightEye"    # Landroid/graphics/Point;
    .param p6, "mouth"    # Landroid/graphics/Point;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/face/FaceData;->mBounds:Landroid/graphics/Rect;

    .line 34
    iput p2, p0, Lcom/android/camera/face/FaceData;->mScore:I

    .line 35
    iput p3, p0, Lcom/android/camera/face/FaceData;->mId:I

    .line 36
    iput-object p4, p0, Lcom/android/camera/face/FaceData;->mLeftEye:Landroid/graphics/Point;

    .line 37
    iput-object p5, p0, Lcom/android/camera/face/FaceData;->mRightEye:Landroid/graphics/Point;

    .line 38
    iput-object p6, p0, Lcom/android/camera/face/FaceData;->mMouth:Landroid/graphics/Point;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Face;)V
    .locals 1
    .param p1, "face"    # Landroid/hardware/Camera$Face;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-object v0, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/camera/face/FaceData;->mBounds:Landroid/graphics/Rect;

    .line 25
    iget v0, p1, Landroid/hardware/Camera$Face;->score:I

    iput v0, p0, Lcom/android/camera/face/FaceData;->mScore:I

    .line 26
    iget v0, p1, Landroid/hardware/Camera$Face;->id:I

    iput v0, p0, Lcom/android/camera/face/FaceData;->mId:I

    .line 27
    iget-object v0, p1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/camera/face/FaceData;->mLeftEye:Landroid/graphics/Point;

    .line 28
    iget-object v0, p1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/camera/face/FaceData;->mRightEye:Landroid/graphics/Point;

    .line 29
    iget-object v0, p1, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/camera/face/FaceData;->mMouth:Landroid/graphics/Point;

    .line 30
    return-void
.end method
