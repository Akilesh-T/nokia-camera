.class public Lcom/android/camera/ui/motion/DampedSpring;
.super Ljava/lang/Object;
.source "DampedSpring.java"


# static fields
.field public static final DEFAULT_SPRING_STIFFNESS:F = 3.75f

.field public static final DEFAULT_TIME_TO_90_PERCENT_MILLIS:F = 200.0f

.field public static final EPSILON:F = 0.01f


# instance fields
.field private final mSpringStiffness:F

.field private mTarget:F

.field private final mTimeTo90PercentMs:F

.field private mValue:F

.field private mVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    const/high16 v0, 0x43480000    # 200.0f

    const/high16 v1, 0x40700000    # 3.75f

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/motion/DampedSpring;-><init>(FF)V

    .line 38
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "timeTo90PercentMs"    # F

    .prologue
    .line 41
    const/high16 v0, 0x40700000    # 3.75f

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/motion/DampedSpring;-><init>(FF)V

    .line 42
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2
    .param p1, "timeTo90PercentMs"    # F
    .param p2, "springStiffness"    # F

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/android/camera/ui/motion/DampedSpring;->mTarget:F

    .line 33
    iput v0, p0, Lcom/android/camera/ui/motion/DampedSpring;->mVelocity:F

    .line 34
    iput v0, p0, Lcom/android/camera/ui/motion/DampedSpring;->mValue:F

    .line 48
    iput p1, p0, Lcom/android/camera/ui/motion/DampedSpring;->mTimeTo90PercentMs:F

    .line 49
    iput p2, p0, Lcom/android/camera/ui/motion/DampedSpring;->mSpringStiffness:F

    .line 51
    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Creating a spring value with excessive stiffness will oscillate endlessly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public getTarget()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/camera/ui/motion/DampedSpring;->mTarget:F

    return v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/ui/motion/DampedSpring;->mValue:F

    return v0
.end method

.method public isActive()Z
    .locals 7

    .prologue
    const v6, 0x3c23d70a    # 0.01f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    iget v4, p0, Lcom/android/camera/ui/motion/DampedSpring;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_2

    move v1, v2

    .line 133
    .local v1, "hasVelocity":Z
    :goto_0
    iget v4, p0, Lcom/android/camera/ui/motion/DampedSpring;->mTarget:F

    iget v5, p0, Lcom/android/camera/ui/motion/DampedSpring;->mValue:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_3

    move v0, v2

    .line 134
    .local v0, "atTarget":Z
    :goto_1
    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0    # "atTarget":Z
    .end local v1    # "hasVelocity":Z
    :cond_2
    move v1, v3

    .line 132
    goto :goto_0

    .restart local v1    # "hasVelocity":Z
    :cond_3
    move v0, v3

    .line 133
    goto :goto_1
.end method

.method public setTarget(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 85
    iput p1, p0, Lcom/android/camera/ui/motion/DampedSpring;->mTarget:F

    .line 86
    return-void
.end method

.method public setValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 68
    iput p1, p0, Lcom/android/camera/ui/motion/DampedSpring;->mValue:F

    .line 69
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/camera/ui/motion/DampedSpring;->mValue:F

    iput v0, p0, Lcom/android/camera/ui/motion/DampedSpring;->mTarget:F

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/motion/DampedSpring;->mVelocity:F

    .line 144
    return-void
.end method

.method public update(F)F
    .locals 6
    .param p1, "dtMs"    # F

    .prologue
    .line 100
    iget v4, p0, Lcom/android/camera/ui/motion/DampedSpring;->mTimeTo90PercentMs:F

    div-float v1, p1, v4

    .line 101
    .local v1, "dt":F
    iget v4, p0, Lcom/android/camera/ui/motion/DampedSpring;->mSpringStiffness:F

    mul-float v2, v1, v4

    .line 108
    .local v2, "dts":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/motion/DampedSpring;->stop()V

    .line 110
    iget v4, p0, Lcom/android/camera/ui/motion/DampedSpring;->mValue:F

    .line 125
    :goto_0
    return v4

    .line 113
    :cond_1
    iget v4, p0, Lcom/android/camera/ui/motion/DampedSpring;->mTarget:F

    iget v5, p0, Lcom/android/camera/ui/motion/DampedSpring;->mValue:F

    sub-float v0, v4, v5

    .line 114
    .local v0, "delta":F
    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lcom/android/camera/ui/motion/DampedSpring;->mVelocity:F

    mul-float/2addr v4, v5

    sub-float v3, v0, v4

    .line 116
    .local v3, "force":F
    iget v4, p0, Lcom/android/camera/ui/motion/DampedSpring;->mVelocity:F

    mul-float v5, v3, v2

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/ui/motion/DampedSpring;->mVelocity:F

    .line 117
    iget v4, p0, Lcom/android/camera/ui/motion/DampedSpring;->mValue:F

    iget v5, p0, Lcom/android/camera/ui/motion/DampedSpring;->mVelocity:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/ui/motion/DampedSpring;->mValue:F

    .line 121
    invoke-virtual {p0}, Lcom/android/camera/ui/motion/DampedSpring;->isActive()Z

    move-result v4

    if-nez v4, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/motion/DampedSpring;->stop()V

    .line 125
    :cond_2
    iget v4, p0, Lcom/android/camera/ui/motion/DampedSpring;->mValue:F

    goto :goto_0
.end method
