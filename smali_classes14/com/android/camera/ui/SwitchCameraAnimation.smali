.class public Lcom/android/camera/ui/SwitchCameraAnimation;
.super Landroid/view/animation/Animation;
.source "SwitchCameraAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SwitchCameraAnimation$UpdateAnimationListener;
    }
.end annotation


# static fields
.field public static final ROTATE_X_AXIS:Ljava/lang/Byte;

.field public static final ROTATE_Y_AXIS:Ljava/lang/Byte;

.field public static final ROTATE_Z_AXIS:Ljava/lang/Byte;


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCenterX:F

.field private mCenterY:F

.field private mCurrentDepth:F

.field private final mFromDegrees:F

.field private mMaxDepth:F

.field private final mReverse:Z

.field private mRotateAxis:Ljava/lang/Byte;

.field private final mToDegrees:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/SwitchCameraAnimation;->ROTATE_X_AXIS:Ljava/lang/Byte;

    .line 11
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/SwitchCameraAnimation;->ROTATE_Y_AXIS:Ljava/lang/Byte;

    .line 12
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/SwitchCameraAnimation;->ROTATE_Z_AXIS:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>(FFLjava/lang/Byte;Z)V
    .locals 2
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "rotateAxis"    # Ljava/lang/Byte;
    .param p4, "reverse"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 23
    iput p1, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mFromDegrees:F

    .line 24
    iput p2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mToDegrees:F

    .line 25
    iput-object p3, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mRotateAxis:Ljava/lang/Byte;

    .line 26
    iput-boolean p4, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mReverse:Z

    .line 27
    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/SwitchCameraAnimation;->setDuration(J)V

    .line 28
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v5, 0x0

    .line 52
    iget v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mFromDegrees:F

    iget v3, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mToDegrees:F

    iget v4, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mFromDegrees:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .line 53
    .local v0, "degrees":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 54
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 55
    iget-boolean v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mReverse:Z

    if-eqz v2, :cond_0

    .line 56
    iget v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mMaxDepth:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCurrentDepth:F

    .line 60
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCamera:Landroid/graphics/Camera;

    iget v3, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCurrentDepth:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v5, v5, v3}, Landroid/graphics/Camera;->translate(FFF)V

    .line 61
    iget-object v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCamera:Landroid/graphics/Camera;

    const/high16 v3, -0x3e600000    # -20.0f

    invoke-virtual {v2, v5, v5, v3}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 62
    sget-object v2, Lcom/android/camera/ui/SwitchCameraAnimation;->ROTATE_X_AXIS:Ljava/lang/Byte;

    iget-object v3, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mRotateAxis:Ljava/lang/Byte;

    invoke-virtual {v2, v3}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, v0}, Landroid/graphics/Camera;->rotateX(F)V

    .line 69
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 70
    iget-object v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 71
    iget v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCenterX:F

    neg-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCenterY:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 72
    iget v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCenterX:F

    iget v3, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCenterY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 73
    return-void

    .line 58
    :cond_0
    iget v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mMaxDepth:F

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCurrentDepth:F

    goto :goto_0

    .line 64
    :cond_1
    sget-object v2, Lcom/android/camera/ui/SwitchCameraAnimation;->ROTATE_Y_AXIS:Ljava/lang/Byte;

    iget-object v3, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mRotateAxis:Ljava/lang/Byte;

    invoke-virtual {v2, v3}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    iget-object v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, v0}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_1

    .line 67
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, v0}, Landroid/graphics/Camera;->rotateZ(F)V

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 47
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCamera:Landroid/graphics/Camera;

    .line 48
    return-void
.end method

.method public setCenter(FF)V
    .locals 2
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    .line 30
    iput p1, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCenterX:F

    .line 31
    iput p2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mCenterY:F

    .line 32
    sget-object v0, Lcom/android/camera/ui/SwitchCameraAnimation;->ROTATE_X_AXIS:Ljava/lang/Byte;

    iget-object v1, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mRotateAxis:Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iput p2, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mMaxDepth:F

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    sget-object v0, Lcom/android/camera/ui/SwitchCameraAnimation;->ROTATE_Y_AXIS:Ljava/lang/Byte;

    iget-object v1, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mRotateAxis:Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iput p1, p0, Lcom/android/camera/ui/SwitchCameraAnimation;->mMaxDepth:F

    goto :goto_0
.end method
