.class Lcom/android/camera/ui/focus/AutoFocusRing;
.super Lcom/android/camera/ui/focus/FocusRingRenderer;
.source "AutoFocusRing.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "AutoFocusRing"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/focus/AutoFocusRing;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;Lcom/android/camera/ui/motion/Invalidator;FF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "focusStateProvider"    # Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "invalidator"    # Lcom/android/camera/ui/motion/Invalidator;
    .param p4, "enterDurationMillis"    # F
    .param p5, "exitDurationMillis"    # F

    .prologue
    .line 50
    invoke-direct {p0, p3, p4, p5}, Lcom/android/camera/ui/focus/FocusRingRenderer;-><init>(Lcom/android/camera/ui/motion/Invalidator;FF)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    .line 51
    iput-object p1, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    .line 53
    return-void
.end method

.method private processStates(J)V
    .locals 5
    .param p1, "t"    # J

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v0, v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v0, v1, :cond_2

    long-to-float v0, p1

    iget-wide v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mEnterStartMillis:J

    long-to-float v1, v2

    iget v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mEnterDurationMillis:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 99
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    iput-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->isActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    iput-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 104
    iput-wide p1, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mExitStartMillis:J

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v0, v1, :cond_4

    long-to-float v0, p1

    iget-wide v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mExitStartMillis:J

    long-to-float v1, v2

    iget v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mExitDurationMillis:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 108
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    iput-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_HARD_STOP:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v0, v1, :cond_0

    long-to-float v0, p1

    iget-wide v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mHardExitStartMillis:J

    long-to-float v1, v2

    const/high16 v2, 0x42800000    # 64.0f

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 113
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    iput-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    goto :goto_0
.end method


# virtual methods
.method public draw(JJLandroid/graphics/Canvas;)V
    .locals 9
    .param p1, "t"    # J
    .param p3, "dt"    # J
    .param p5, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x437f0000    # 255.0f

    const/4 v6, 0x0

    .line 57
    iget-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    long-to-float v4, p3

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/motion/DampedSpring;->update(F)F

    move-result v2

    .line 58
    .local v2, "ringRadius":F
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/focus/AutoFocusRing;->processStates(J)V

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/ui/focus/AutoFocusRing;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v3, :cond_2

    .line 65
    iget-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02018e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 68
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mInvalidator:Lcom/android/camera/ui/motion/Invalidator;

    invoke-interface {v3}, Lcom/android/camera/ui/motion/Invalidator;->invalidate()V

    .line 69
    const/16 v1, 0xff

    .line 71
    .local v1, "ringAlpha":I
    iget-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v4, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v3, v4, :cond_4

    .line 72
    const/16 v1, 0xff

    .line 86
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/focus/AutoFocusRing;->getCenterX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/focus/AutoFocusRing;->getCenterY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/android/camera/ui/focus/AutoFocusRing;->getCenterX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/android/camera/ui/focus/AutoFocusRing;->getCenterY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v2

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 88
    iget-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 89
    iget-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, p5}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 73
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v4, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v3, v4, :cond_5

    .line 74
    iget-wide v4, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mExitStartMillis:J

    iget v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mExitDurationMillis:F

    invoke-static {p1, p2, v4, v5, v3}, Lcom/android/camera/ui/motion/InterpolateUtils;->unitRatio(JJF)F

    move-result v0

    .line 75
    .local v0, "rFade":F
    iget-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mExitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    .line 76
    invoke-interface {v3, v0}, Lcom/android/camera/ui/motion/UnitCurve;->valueAt(F)F

    move-result v3

    invoke-static {v7, v6, v3}, Lcom/android/camera/ui/motion/InterpolateUtils;->lerp(FFF)F

    move-result v3

    float-to-int v1, v3

    .line 77
    goto :goto_1

    .end local v0    # "rFade":F
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v4, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_HARD_STOP:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v3, v4, :cond_6

    .line 78
    iget-wide v4, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mHardExitStartMillis:J

    const/high16 v3, 0x42800000    # 64.0f

    .line 79
    invoke-static {p1, p2, v4, v5, v3}, Lcom/android/camera/ui/motion/InterpolateUtils;->unitRatio(JJF)F

    move-result v0

    .line 80
    .restart local v0    # "rFade":F
    iget-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mExitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    .line 81
    invoke-interface {v3, v0}, Lcom/android/camera/ui/motion/UnitCurve;->valueAt(F)F

    move-result v3

    invoke-static {v7, v6, v3}, Lcom/android/camera/ui/motion/InterpolateUtils;->lerp(FFF)F

    move-result v3

    float-to-int v1, v3

    .line 82
    goto :goto_1

    .end local v0    # "rFade":F
    :cond_6
    iget-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v4, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v3, v4, :cond_3

    .line 83
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public recycle()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-super {p0}, Lcom/android/camera/ui/focus/FocusRingRenderer;->recycle()V

    .line 120
    iput-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mContext:Landroid/content/Context;

    .line 121
    iput-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 122
    iput-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    .line 123
    return-void
.end method
