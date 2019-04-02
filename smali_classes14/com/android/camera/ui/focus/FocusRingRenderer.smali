.class abstract Lcom/android/camera/ui/focus/FocusRingRenderer;
.super Ljava/lang/Object;
.source "FocusRingRenderer.java"

# interfaces
.implements Lcom/android/camera/ui/motion/DynamicAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field protected final mEnterDurationMillis:F

.field protected final mEnterOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

.field protected mEnterStartMillis:J

.field protected final mExitDurationMillis:F

.field protected final mExitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

.field protected mExitStartMillis:J

.field protected mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

.field protected final mHardExitDurationMillis:F

.field protected final mHardExitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

.field protected mHardExitStartMillis:J

.field protected final mInvalidator:Lcom/android/camera/ui/motion/Invalidator;

.field protected final mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FocusRingRenderer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/ui/motion/Invalidator;FF)V
    .locals 4
    .param p1, "invalidator"    # Lcom/android/camera/ui/motion/Invalidator;
    .param p2, "enterDurationMillis"    # F
    .param p3, "exitDurationMillis"    # F

    .prologue
    const-wide/16 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/high16 v0, 0x42800000    # 64.0f

    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mHardExitDurationMillis:F

    .line 59
    iput-wide v2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mEnterStartMillis:J

    .line 60
    iput-wide v2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mExitStartMillis:J

    .line 61
    iput-wide v2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mHardExitStartMillis:J

    .line 63
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 77
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mInvalidator:Lcom/android/camera/ui/motion/Invalidator;

    .line 78
    iput p2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mEnterDurationMillis:F

    .line 79
    iput p3, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mExitDurationMillis:F

    .line 81
    sget-object v0, Lcom/android/camera/ui/motion/UnitCurves;->FAST_OUT_SLOW_IN:Lcom/android/camera/ui/motion/UnitCurve;

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mEnterOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    .line 82
    sget-object v0, Lcom/android/camera/ui/motion/UnitCurves;->FAST_OUT_LINEAR_IN:Lcom/android/camera/ui/motion/UnitCurve;

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mExitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    .line 83
    sget-object v0, Lcom/android/camera/ui/motion/UnitCurves;->FAST_OUT_LINEAR_IN:Lcom/android/camera/ui/motion/UnitCurve;

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mHardExitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    .line 85
    new-instance v0, Lcom/android/camera/ui/motion/DampedSpring;

    invoke-direct {v0}, Lcom/android/camera/ui/motion/DampedSpring;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    .line 86
    return-void
.end method

.method private computeEnterStartTimeMillis(JF)J
    .locals 5
    .param p1, "tMillis"    # J
    .param p3, "enterDuration"    # F

    .prologue
    .line 226
    iget-wide v2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mExitStartMillis:J

    long-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mExitDurationMillis:F

    add-float/2addr v2, v3

    long-to-float v3, p1

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 239
    .end local p1    # "tMillis":J
    :goto_0
    return-wide p1

    .line 231
    .restart local p1    # "tMillis":J
    :cond_0
    iget-wide v2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mExitStartMillis:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mExitDurationMillis:F

    div-float v1, v2, v3

    .line 234
    .local v1, "exitT":F
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mExitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    iget-object v3, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mEnterOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    invoke-static {v2, v3, v1}, Lcom/android/camera/ui/motion/UnitCurves;->mapEnterCurveToExitCurveAtT(Lcom/android/camera/ui/motion/UnitCurve;Lcom/android/camera/ui/motion/UnitCurve;F)F

    move-result v0

    .line 239
    .local v0, "enterT":F
    mul-float v2, v0, p3

    float-to-long v2, v2

    sub-long/2addr p1, v2

    goto :goto_0
.end method

.method private computeExitStartTimeMs(JF)J
    .locals 5
    .param p1, "tMillis"    # J
    .param p3, "exitDuration"    # F

    .prologue
    .line 209
    iget-wide v2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mEnterStartMillis:J

    long-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mEnterDurationMillis:F

    add-float/2addr v2, v3

    long-to-float v3, p1

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 222
    .end local p1    # "tMillis":J
    :goto_0
    return-wide p1

    .line 214
    .restart local p1    # "tMillis":J
    :cond_0
    iget-wide v2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mEnterStartMillis:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mEnterDurationMillis:F

    div-float v0, v2, v3

    .line 217
    .local v0, "enterT":F
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mEnterOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    iget-object v3, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mExitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    invoke-static {v2, v3, v0}, Lcom/android/camera/ui/motion/UnitCurves;->mapEnterCurveToExitCurveAtT(Lcom/android/camera/ui/motion/UnitCurve;Lcom/android/camera/ui/motion/UnitCurve;F)F

    move-result v1

    .line 222
    .local v1, "exitT":F
    mul-float v2, v1, p3

    float-to-long v2, v2

    sub-long/2addr p1, v2

    goto :goto_0
.end method


# virtual methods
.method public exit(J)V
    .locals 3
    .param p1, "t"    # J

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->stop()V

    .line 187
    :cond_0
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 188
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mExitDurationMillis:F

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/focus/FocusRingRenderer;->computeExitStartTimeMs(JF)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mExitStartMillis:J

    .line 189
    return-void
.end method

.method protected getCenterX()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mCenterX:I

    return v0
.end method

.method protected getCenterY()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mCenterY:I

    return v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEntering()Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExiting()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_HARD_STOP:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHolding()Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE_HOLD:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public setCenterX(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mCenterX:I

    .line 95
    return-void
.end method

.method public setCenterY(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mCenterY:I

    .line 108
    return-void
.end method

.method public setRadius(JF)V
    .locals 5
    .param p1, "tMs"    # J
    .param p3, "value"    # F

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    .line 121
    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->getTarget()F

    move-result v0

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 122
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FOCUS STATE ENTER VIA setRadius("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 124
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mEnterDurationMillis:F

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/focus/FocusRingRenderer;->computeEnterStartTimeMillis(JF)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mEnterStartMillis:J

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0, p3}, Lcom/android/camera/ui/motion/DampedSpring;->setTarget(F)V

    .line 128
    return-void
.end method

.method public start(JFF)V
    .locals 3
    .param p1, "startMs"    # J
    .param p3, "initialRadius"    # F
    .param p4, "targetRadius"    # F

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-eq v0, v1, :cond_0

    .line 163
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "start() called while the ring was still focusing!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->stop()V

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0, p3}, Lcom/android/camera/ui/motion/DampedSpring;->setValue(F)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0, p4}, Lcom/android/camera/ui/motion/DampedSpring;->setTarget(F)V

    .line 168
    iput-wide p1, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mEnterStartMillis:J

    .line 170
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mInvalidator:Lcom/android/camera/ui/motion/Invalidator;

    invoke-interface {v0}, Lcom/android/camera/ui/motion/Invalidator;->invalidate()V

    .line 172
    return-void
.end method

.method public stop(J)V
    .locals 3
    .param p1, "tMillis"    # J

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->stop()V

    .line 204
    :cond_0
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_HARD_STOP:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 205
    const/high16 v0, 0x42800000    # 64.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/focus/FocusRingRenderer;->computeExitStartTimeMs(JF)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->mHardExitStartMillis:J

    .line 206
    return-void
.end method
