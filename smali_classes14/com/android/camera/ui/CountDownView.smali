.class public Lcom/android/camera/ui/CountDownView;
.super Lcom/android/camera/ui/RotateLayout;
.source "CountDownView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CountDownView$MainHandler;,
        Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_MS:J = 0x320L

.field private static final SET_TIMER_TEXT:I = 0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

.field private final mPreviewArea:Landroid/graphics/RectF;

.field private mRemainingSecondsView:Landroid/widget/TextView;

.field private mRemainingSecs:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CountDownView"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/CountDownView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CountDownView;->mPreviewArea:Landroid/graphics/RectF;

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/CountDownView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CountDownView;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/CountDownView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/CountDownView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CountDownView;->remainingSecondsChanged(I)V

    return-void
.end method

.method private remainingSecondsChanged(I)V
    .locals 7
    .param p1, "newVal"    # I

    .prologue
    const/4 v6, 0x1

    .line 86
    iput p1, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    .line 87
    iget-object v2, p0, Lcom/android/camera/ui/CountDownView;->mListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/android/camera/ui/CountDownView;->mListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    iget v3, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    invoke-interface {v2, v3}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onRemainingSecondsChanged(I)V

    .line 91
    :cond_0
    if-nez p1, :cond_2

    .line 93
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/CountDownView;->setVisibility(I)V

    .line 94
    iget-object v2, p0, Lcom/android/camera/ui/CountDownView;->mListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/android/camera/ui/CountDownView;->mListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v2}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onCountDownFinished()V

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/CountDownView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 99
    .local v0, "locale":Ljava/util/Locale;
    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "localizedValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/ui/CountDownView;->startFadeOutAnimation()V

    .line 104
    iget-object v2, p0, Lcom/android/camera/ui/CountDownView;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_3

    .line 105
    new-instance v2, Lcom/android/camera/ui/CountDownView$MainHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/ui/CountDownView$MainHandler;-><init>(Lcom/android/camera/ui/CountDownView;Lcom/android/camera/ui/CountDownView$1;)V

    iput-object v2, p0, Lcom/android/camera/ui/CountDownView;->mHandler:Landroid/os/Handler;

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/CountDownView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    if-lez v0, :cond_1

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/android/camera/ui/CountDownView$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/CountDownView$MainHandler;-><init>(Lcom/android/camera/ui/CountDownView;Lcom/android/camera/ui/CountDownView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/CountDownView;->mHandler:Landroid/os/Handler;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->setVisibility(I)V

    .line 168
    :cond_1
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/camera/ui/RotateLayout;->onFinishInflate()V

    .line 129
    const v0, 0x7f0f00a9

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    .line 130
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 83
    return-void
.end method

.method public setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/camera/ui/CountDownView;->mListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .line 137
    return-void
.end method

.method public startCountDown(I)V
    .locals 3
    .param p1, "sec"    # I

    .prologue
    .line 145
    if-gtz p1, :cond_0

    .line 146
    sget-object v0, Lcom/android/camera/ui/CountDownView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input for countdown timer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 152
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->setVisibility(I)V

    .line 153
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CountDownView;->remainingSecondsChanged(I)V

    goto :goto_0
.end method

.method protected startFadeOutAnimation()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 112
    iget-object v3, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 113
    .local v2, "textWidth":I
    iget-object v3, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 114
    .local v1, "textHeight":I
    iget-object v3, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setScaleX(F)V

    .line 115
    iget-object v3, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setScaleY(F)V

    .line 116
    iget-object v3, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/CountDownView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 117
    iget-object v3, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/CountDownView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 118
    iget-object v3, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPivotX(F)V

    .line 119
    iget-object v3, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPivotY(F)V

    .line 120
    iget-object v3, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 121
    const/high16 v0, 0x40200000    # 2.5f

    .line 122
    .local v0, "endScale":F
    iget-object v3, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    .line 123
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x320

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 124
    return-void
.end method
