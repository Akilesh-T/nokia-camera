.class public Lcom/android/camera/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# static fields
.field public static final FLASH_ALPHA_END:F = 0.0f

.field public static final FLASH_ALPHA_START:F = 0.3f

.field public static final FLASH_DURATION:I = 0x12c

.field public static final HOLD_DURATION:I = 0x9c4

.field public static final SHRINK_DURATION:I = 0x190

.field public static final SLIDE_DURATION:I = 0x44c


# instance fields
.field private mCaptureAnimator:Landroid/animation/AnimatorSet;

.field private mFlashAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/AnimationManager;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AnimationManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/AnimationManager;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/AnimationManager;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/AnimationManager;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AnimationManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/AnimationManager;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/AnimationManager;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method


# virtual methods
.method public cancelAnimations()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 181
    :cond_1
    return-void
.end method

.method public startCaptureAnimation(Landroid/view/View;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 46
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 47
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->cancel()V

    .line 49
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 50
    .local v4, "parentView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v9, v11

    .line 52
    .local v9, "slideDistance":F
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v6, v11, v12

    .line 53
    .local v6, "scaleX":F
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v7, v11, v12

    .line 54
    .local v7, "scaleY":F
    cmpl-float v11, v6, v7

    if-lez v11, :cond_1

    move v5, v6

    .line 56
    .local v5, "scale":F
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int v2, v11, v12

    .line 57
    .local v2, "centerX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int v3, v11, v12

    .line 59
    .local v3, "centerY":I
    const-string v11, "translationX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v9, v12, v13

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-wide/16 v12, 0x44c

    .line 60
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 61
    .local v8, "slide":Landroid/animation/ObjectAnimator;
    const-wide/16 v12, 0xb54

    invoke-virtual {v8, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 63
    const-string v11, "translationY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    .line 64
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v14, v3

    int-to-float v14, v14

    aput v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 63
    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-wide/16 v12, 0x190

    .line 65
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 66
    .local v10, "translateY":Landroid/animation/ObjectAnimator;
    new-instance v11, Lcom/android/camera/AnimationManager$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lcom/android/camera/AnimationManager$1;-><init>(Lcom/android/camera/AnimationManager;Landroid/view/View;)V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 88
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    .line 89
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    const/4 v12, 0x5

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    const-string v14, "scaleX"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v5, v15, v16

    const/16 v16, 0x1

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v15, v16

    .line 90
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-wide/16 v16, 0x190

    .line 91
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "scaleY"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v5, v15, v16

    const/16 v16, 0x1

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v15, v16

    .line 92
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-wide/16 v16, 0x190

    .line 93
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "translationX"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    .line 95
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    sub-int v17, v17, v2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 94
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-wide/16 v16, 0x190

    .line 96
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aput-object v10, v12, v13

    const/4 v13, 0x4

    aput-object v8, v12, v13

    .line 89
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    new-instance v12, Lcom/android/camera/AnimationManager$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lcom/android/camera/AnimationManager$2;-><init>(Lcom/android/camera/AnimationManager;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/AnimationManager;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    .line 128
    return-void

    .end local v2    # "centerX":I
    .end local v3    # "centerY":I
    .end local v5    # "scale":F
    .end local v8    # "slide":Landroid/animation/ObjectAnimator;
    .end local v10    # "translateY":Landroid/animation/ObjectAnimator;
    :cond_1
    move v5, v7

    .line 54
    goto/16 :goto_0
.end method

.method public startFlashAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "flashOverlay"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 140
    :cond_0
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    .line 142
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 143
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/camera/AnimationManager$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/AnimationManager$3;-><init>(Lcom/android/camera/AnimationManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/AnimationManager;->mFlashAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 168
    return-void

    .line 140
    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x0
    .end array-data
.end method
