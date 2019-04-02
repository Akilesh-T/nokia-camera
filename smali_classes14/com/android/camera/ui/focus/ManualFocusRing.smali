.class Lcom/android/camera/ui/focus/ManualFocusRing;
.super Lcom/android/camera/ui/focus/FocusRingRenderer;
.source "ManualFocusRing.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private mAlphaOffsetCount:I

.field private mAlphaOffsetIncrease:Z

.field private mBrightnessDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mBrightnessLinePaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

.field private mLastAlphaRatio:F

.field private mOrientation:I

.field private mPreviewArea:Landroid/graphics/RectF;

.field private mTouchExposureOffsetRatio:F

.field private mTouchExposureSupport:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;Lcom/android/camera/ui/motion/Invalidator;F)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "focusStateProvider"    # Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "invalidator"    # Lcom/android/camera/ui/motion/Invalidator;
    .param p4, "exitDurationMillis"    # F

    .prologue
    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, p4}, Lcom/android/camera/ui/focus/FocusRingRenderer;-><init>(Lcom/android/camera/ui/motion/Invalidator;FF)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mLastAlphaRatio:F

    .line 49
    iput-boolean v1, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mAlphaOffsetIncrease:Z

    .line 50
    iput v1, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mAlphaOffsetCount:I

    .line 52
    iput v1, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mOrientation:I

    .line 54
    iput-boolean v1, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mTouchExposureSupport:Z

    .line 55
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mTouchExposureOffsetRatio:F

    .line 72
    iput-object p1, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    .line 74
    return-void
.end method

.method private processStates(J)V
    .locals 5
    .param p1, "t"    # J

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v0, v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v0, v1, :cond_2

    long-to-float v0, p1

    iget-wide v2, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mEnterStartMillis:J

    long-to-float v1, v2

    iget v2, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mEnterDurationMillis:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 239
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mTouchExposureOffsetRatio:F

    .line 240
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    iput-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->isActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;->getFocusState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 251
    :pswitch_0
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    iput-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 252
    iput-wide p1, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mExitStartMillis:J

    .line 257
    :cond_3
    :goto_1
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE_HOLD:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->isActive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 258
    iget-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;->getFocusState()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 262
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    iput-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 263
    iput-wide p1, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mExitStartMillis:J

    .line 268
    :cond_4
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v0, v1, :cond_5

    long-to-float v0, p1

    iget-wide v2, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mExitStartMillis:J

    long-to-float v1, v2

    iget v2, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mExitDurationMillis:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 269
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    iput-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    .line 272
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    sget-object v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_HARD_STOP:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    if-ne v0, v1, :cond_0

    long-to-float v0, p1

    iget-wide v2, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mHardExitStartMillis:J

    long-to-float v1, v2

    const/high16 v2, 0x42800000    # 64.0f

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 274
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    iput-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    goto :goto_0

    .line 248
    :pswitch_3
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE_HOLD:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    iput-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    goto :goto_1

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 258
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public configurePreviewDimensions(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mPreviewArea:Landroid/graphics/RectF;

    .line 289
    return-void
.end method

.method public draw(JJLandroid/graphics/Canvas;)V
    .locals 25
    .param p1, "t"    # J
    .param p3, "dt"    # J
    .param p5, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    move-object/from16 v20, v0

    move-wide/from16 v0, p3

    long-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/ui/motion/DampedSpring;->update(F)F

    move-result v19

    .line 79
    .local v19, "ringRadius":F
    invoke-direct/range {p0 .. p2}, Lcom/android/camera/ui/focus/ManualFocusRing;->processStates(J)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->isActive()Z

    move-result v20

    if-nez v20, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f02018e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    check-cast v20, Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 89
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mInvalidator:Lcom/android/camera/ui/motion/Invalidator;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/camera/ui/motion/Invalidator;->invalidate()V

    .line 90
    const/16 v18, 0xff

    .line 91
    .local v18, "ringAlpha":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 92
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/focus/ManualFocusRing;->mAlphaOffsetIncrease:Z

    .line 93
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/focus/ManualFocusRing;->mLastAlphaRatio:F

    .line 94
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/focus/ManualFocusRing;->mAlphaOffsetCount:I

    .line 118
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v21, v19

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v19

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterX()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v23, v23, v19

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v24, v24, v19

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE_HOLD:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mTouchExposureSupport:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mPreviewArea:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mBrightnessDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f02018f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    check-cast v20, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/focus/ManualFocusRing;->mBrightnessDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 129
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mBrightnessDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mBrightnessLinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    if-nez v20, :cond_6

    .line 132
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/focus/ManualFocusRing;->mBrightnessLinePaint:Landroid/graphics/Paint;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mBrightnessLinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mBrightnessLinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mBrightnessLinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mBrightnessLinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f09025b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mOrientation:I

    .line 142
    .local v15, "orientation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mTouchExposureOffsetRatio:F

    move/from16 v20, v0

    const/high16 v21, -0x40000000    # -2.0f

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_f

    const/high16 v20, 0x3fc00000    # 1.5f

    mul-float v20, v20, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mTouchExposureOffsetRatio:F

    move/from16 v21, v0

    mul-float v14, v20, v21

    .line 144
    .local v14, "offset":F
    :goto_2
    const/high16 v7, -0x40800000    # -1.0f

    .line 145
    .local v7, "brightness_bar_center_x":F
    const/high16 v8, -0x40800000    # -1.0f

    .line 146
    .local v8, "brightness_bar_center_y":F
    const/high16 v11, -0x40800000    # -1.0f

    .line 147
    .local v11, "brightness_icon_center_x":F
    const/high16 v12, -0x40800000    # -1.0f

    .line 148
    .local v12, "brightness_icon_center_y":F
    move/from16 v10, v19

    .line 149
    .local v10, "brightness_bar_width":F
    const/high16 v20, 0x40800000    # 4.0f

    mul-float v9, v19, v20

    .line 151
    .local v9, "brightness_bar_height":F
    sparse-switch v15, :sswitch_data_0

    .line 194
    :goto_3
    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v20, v7, v20

    if-eqz v20, :cond_0

    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v20, v8, v20

    if-eqz v20, :cond_0

    .line 196
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Canvas;->save()I

    .line 197
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 198
    .local v13, "clipPath":Landroid/graphics/Path;
    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v10, v20

    sget-object v21, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v11, v12, v0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 199
    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    .line 200
    sget-object v20, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 202
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 203
    .local v6, "brightnessDrawableBounds":Landroid/graphics/Rect;
    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    .line 204
    .local v16, "path":Landroid/graphics/Path;
    sparse-switch v15, :sswitch_data_1

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mTouchExposureOffsetRatio:F

    move/from16 v20, v0

    const/high16 v21, -0x40000000    # -2.0f

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_7

    .line 216
    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v9, v20

    sub-float v20, v8, v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 217
    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v9, v20

    add-float v20, v20, v8

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mBrightnessLinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 220
    :cond_7
    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v19, v20

    sub-float v20, v11, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v21, v19, v21

    sub-float v21, v12, v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v19, v22

    add-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v23, v19, v23

    add-float v23, v23, v12

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    :goto_4
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Canvas;->restore()V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mBrightnessDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mBrightnessDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mBrightnessDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 95
    .end local v6    # "brightnessDrawableBounds":Landroid/graphics/Rect;
    .end local v7    # "brightness_bar_center_x":F
    .end local v8    # "brightness_bar_center_y":F
    .end local v9    # "brightness_bar_height":F
    .end local v10    # "brightness_bar_width":F
    .end local v11    # "brightness_icon_center_x":F
    .end local v12    # "brightness_icon_center_y":F
    .end local v13    # "clipPath":Landroid/graphics/Path;
    .end local v14    # "offset":F
    .end local v15    # "orientation":I
    .end local v16    # "path":Landroid/graphics/Path;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mRingRadius:Lcom/android/camera/ui/motion/DampedSpring;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/motion/DampedSpring;->isActive()Z

    move-result v20

    if-nez v20, :cond_c

    .line 96
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mAlphaOffsetCount:I

    move/from16 v20, v0

    rem-int/lit8 v20, v20, 0x3

    if-nez v20, :cond_9

    .line 97
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mLastAlphaRatio:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mAlphaOffsetIncrease:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    const v20, 0x3e4ccccd    # 0.2f

    :goto_5
    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/focus/ManualFocusRing;->mLastAlphaRatio:F

    .line 98
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/focus/ManualFocusRing;->mAlphaOffsetCount:I

    .line 100
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mAlphaOffsetCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/focus/ManualFocusRing;->mAlphaOffsetCount:I

    .line 101
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mLastAlphaRatio:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 102
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mLastAlphaRatio:F

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_b

    .line 103
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/focus/ManualFocusRing;->mAlphaOffsetIncrease:Z

    goto/16 :goto_1

    .line 97
    :cond_a
    const v20, -0x41b33333    # -0.2f

    goto :goto_5

    .line 104
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mLastAlphaRatio:F

    move/from16 v20, v0

    const v21, 0x3ecccccd    # 0.4f

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_3

    .line 105
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/focus/ManualFocusRing;->mAlphaOffsetIncrease:Z

    goto/16 :goto_1

    .line 107
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 108
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mExitStartMillis:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mExitDurationMillis:F

    move/from16 v22, v0

    move-wide/from16 v0, p1

    move-wide/from16 v2, v20

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/motion/InterpolateUtils;->unitRatio(JJF)F

    move-result v17

    .line 109
    .local v17, "rFade":F
    const/high16 v20, 0x437f0000    # 255.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mExitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/camera/ui/motion/UnitCurve;->valueAt(F)F

    move-result v22

    invoke-static/range {v20 .. v22}, Lcom/android/camera/ui/motion/InterpolateUtils;->lerp(FFF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 110
    goto/16 :goto_1

    .end local v17    # "rFade":F
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_HARD_STOP:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 111
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mHardExitStartMillis:J

    move-wide/from16 v20, v0

    const/high16 v22, 0x42800000    # 64.0f

    move-wide/from16 v0, p1

    move-wide/from16 v2, v20

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/motion/InterpolateUtils;->unitRatio(JJF)F

    move-result v17

    .line 113
    .restart local v17    # "rFade":F
    const/high16 v20, 0x437f0000    # 255.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mExitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/camera/ui/motion/UnitCurve;->valueAt(F)F

    move-result v22

    invoke-static/range {v20 .. v22}, Lcom/android/camera/ui/motion/InterpolateUtils;->lerp(FFF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 114
    goto/16 :goto_1

    .end local v17    # "rFade":F
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusState:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE:Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 115
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 142
    .restart local v15    # "orientation":I
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 153
    .restart local v7    # "brightness_bar_center_x":F
    .restart local v8    # "brightness_bar_center_y":F
    .restart local v9    # "brightness_bar_height":F
    .restart local v10    # "brightness_bar_width":F
    .restart local v11    # "brightness_icon_center_x":F
    .restart local v12    # "brightness_icon_center_y":F
    .restart local v14    # "offset":F
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v7, v0

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterY()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3fcccccd    # 1.6f

    mul-float v21, v21, v19

    sub-float v8, v20, v21

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mPreviewArea:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    cmpg-float v20, v8, v20

    if-gez v20, :cond_10

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterY()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3fcccccd    # 1.6f

    mul-float v21, v21, v19

    add-float v8, v20, v21

    .line 159
    :cond_10
    sub-float v11, v7, v14

    .line 160
    move v12, v8

    .line 161
    goto/16 :goto_3

    .line 163
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v7, v0

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterY()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3fcccccd    # 1.6f

    mul-float v21, v21, v19

    add-float v8, v20, v21

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mPreviewArea:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    cmpl-float v20, v8, v20

    if-lez v20, :cond_11

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterY()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3fcccccd    # 1.6f

    mul-float v21, v21, v19

    sub-float v8, v20, v21

    .line 169
    :cond_11
    add-float v11, v7, v14

    .line 170
    move v12, v8

    .line 171
    goto/16 :goto_3

    .line 173
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3fcccccd    # 1.6f

    mul-float v21, v21, v19

    sub-float v7, v20, v21

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mPreviewArea:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    cmpg-float v20, v7, v20

    if-gez v20, :cond_12

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3fcccccd    # 1.6f

    mul-float v21, v21, v19

    add-float v7, v20, v21

    .line 177
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterY()I

    move-result v20

    move/from16 v0, v20

    int-to-float v8, v0

    .line 178
    move v11, v7

    .line 179
    add-float v12, v8, v14

    .line 180
    goto/16 :goto_3

    .line 182
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3fcccccd    # 1.6f

    mul-float v21, v21, v19

    add-float v7, v20, v21

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mPreviewArea:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    cmpl-float v20, v7, v20

    if-lez v20, :cond_13

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3fcccccd    # 1.6f

    mul-float v21, v21, v19

    sub-float v7, v20, v21

    .line 186
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/focus/ManualFocusRing;->getCenterY()I

    move-result v20

    move/from16 v0, v20

    int-to-float v8, v0

    .line 187
    move v11, v7

    .line 188
    sub-float v12, v8, v14

    .line 189
    goto/16 :goto_3

    .line 207
    .restart local v6    # "brightnessDrawableBounds":Landroid/graphics/Rect;
    .restart local v13    # "clipPath":Landroid/graphics/Path;
    .restart local v16    # "path":Landroid/graphics/Path;
    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mTouchExposureOffsetRatio:F

    move/from16 v20, v0

    const/high16 v21, -0x40000000    # -2.0f

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_14

    .line 208
    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v9, v20

    sub-float v20, v7, v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 209
    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v9, v20

    add-float v20, v20, v7

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/focus/ManualFocusRing;->mBrightnessLinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 212
    :cond_14
    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v19, v20

    sub-float v20, v11, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v21, v19, v21

    sub-float v21, v12, v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v19, v22

    add-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v23, v19, v23

    add-float v23, v23, v12

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_4

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 204
    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_4
        0x10e -> :sswitch_4
    .end sparse-switch
.end method

.method public recycle()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-super {p0}, Lcom/android/camera/ui/focus/FocusRingRenderer;->recycle()V

    .line 281
    iput-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mContext:Landroid/content/Context;

    .line 282
    iput-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 283
    iput-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    .line 284
    iput-object v0, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mBrightnessDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 285
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 59
    iput p1, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mOrientation:I

    .line 60
    return-void
.end method

.method public setTouchExposureOffsetRatio(F)V
    .locals 0
    .param p1, "offsetRatio"    # F

    .prologue
    .line 296
    iput p1, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mTouchExposureOffsetRatio:F

    .line 297
    return-void
.end method

.method public setTouchExposureSupport(Z)V
    .locals 0
    .param p1, "support"    # Z

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/android/camera/ui/focus/ManualFocusRing;->mTouchExposureSupport:Z

    .line 293
    return-void
.end method
