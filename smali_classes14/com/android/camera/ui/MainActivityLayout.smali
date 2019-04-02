.class public Lcom/android/camera/ui/MainActivityLayout;
.super Landroid/widget/FrameLayout;
.source "MainActivityLayout.java"


# static fields
.field private static final SWIPE_TIME_OUT:I = 0x1f4


# instance fields
.field private final TAG:Lcom/android/camera/debug/Log$Tag;

.field private mCheckToIntercept:Z

.field private mDown:Landroid/view/MotionEvent;

.field private mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

.field private final mIsCaptureIntent:Z

.field private mModeListOperation:Lcom/android/camera/ui/operation/ModeListViewOperation;

.field private mNonDecorWindowSizeChangedListener:Lcom/android/camera/app/CameraAppUI$NonDecorWindowSizeChangedListener;

.field private mRequestToInterceptTouchEvents:Z

.field private final mSlop:I

.field private mSwipeEnabled:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mTouchReceiver:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v5, Lcom/android/camera/debug/Log$Tag;

    const-string v6, "MainActivityLayout"

    invoke-direct {v5, v6}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/camera/ui/MainActivityLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 48
    iput-boolean v3, p0, Lcom/android/camera/ui/MainActivityLayout;->mRequestToInterceptTouchEvents:Z

    .line 49
    iput-object v7, p0, Lcom/android/camera/ui/MainActivityLayout;->mTouchReceiver:Landroid/view/View;

    .line 51
    iput-object v7, p0, Lcom/android/camera/ui/MainActivityLayout;->mNonDecorWindowSizeChangedListener:Lcom/android/camera/app/CameraAppUI$NonDecorWindowSizeChangedListener;

    .line 54
    iput-boolean v4, p0, Lcom/android/camera/ui/MainActivityLayout;->mSwipeEnabled:Z

    .line 59
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/MainActivityLayout;->mSlop:I

    move-object v1, p1

    .line 61
    check-cast v1, Landroid/app/Activity;

    .line 62
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 63
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 65
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.media.action.VIDEO_CAPTURE"

    .line 66
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/ui/MainActivityLayout;->mIsCaptureIntent:Z

    .line 67
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_1

    .line 81
    iput-boolean v3, p0, Lcom/android/camera/ui/MainActivityLayout;->mCheckToIntercept:Z

    .line 82
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/MainActivityLayout;->mDown:Landroid/view/MotionEvent;

    .line 83
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/ui/MainActivityLayout;->mTouchReceiver:Landroid/view/View;

    .line 84
    iput-boolean v2, p0, Lcom/android/camera/ui/MainActivityLayout;->mRequestToInterceptTouchEvents:Z

    .line 123
    :cond_0
    :goto_0
    return v2

    .line 86
    :cond_1
    iget-boolean v4, p0, Lcom/android/camera/ui/MainActivityLayout;->mRequestToInterceptTouchEvents:Z

    if-eqz v4, :cond_2

    .line 87
    iput-boolean v2, p0, Lcom/android/camera/ui/MainActivityLayout;->mRequestToInterceptTouchEvents:Z

    .line 88
    iget-object v2, p0, Lcom/android/camera/ui/MainActivityLayout;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/MainActivityLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 92
    iput-boolean v2, p0, Lcom/android/camera/ui/MainActivityLayout;->mCheckToIntercept:Z

    goto :goto_0

    .line 96
    :cond_3
    iget-boolean v4, p0, Lcom/android/camera/ui/MainActivityLayout;->mCheckToIntercept:Z

    if-eqz v4, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 102
    iget-boolean v4, p0, Lcom/android/camera/ui/MainActivityLayout;->mIsCaptureIntent:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/ui/MainActivityLayout;->mSwipeEnabled:Z

    if-eqz v4, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/MainActivityLayout;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 106
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/MainActivityLayout;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 107
    .local v1, "deltaY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 108
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/MainActivityLayout;->mSlop:I

    if-le v4, v5, :cond_0

    .line 110
    iget-object v4, p0, Lcom/android/camera/ui/MainActivityLayout;->mModeListOperation:Lcom/android/camera/ui/operation/ModeListViewOperation;

    if-eqz v4, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-lt v0, v4, :cond_4

    .line 111
    iget-object v2, p0, Lcom/android/camera/ui/MainActivityLayout;->mModeListOperation:Lcom/android/camera/ui/operation/ModeListViewOperation;

    iput-object v2, p0, Lcom/android/camera/ui/MainActivityLayout;->mTouchReceiver:Landroid/view/View;

    .line 112
    iget-object v2, p0, Lcom/android/camera/ui/MainActivityLayout;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/MainActivityLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 113
    goto :goto_0

    .line 116
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/MainActivityLayout;->mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_0

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/camera/ui/MainActivityLayout;->mNonDecorWindowSizeChangedListener:Lcom/android/camera/app/CameraAppUI$NonDecorWindowSizeChangedListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/MainActivityLayout;->mNonDecorWindowSizeChangedListener:Lcom/android/camera/app/CameraAppUI$NonDecorWindowSizeChangedListener;

    .line 158
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/4 v3, 0x0

    .line 157
    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/app/CameraAppUI$NonDecorWindowSizeChangedListener;->onNonDecorWindowSizeChanged(III)V

    .line 161
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 162
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 128
    iget-object v1, p0, Lcom/android/camera/ui/MainActivityLayout;->mTouchReceiver:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/camera/ui/MainActivityLayout;->mTouchReceiver:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/MainActivityLayout;->mTouchReceiver:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 132
    :cond_0
    return v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 138
    instance-of v0, p1, Lcom/android/camera/widget/FilmstripLayout;

    if-eqz v0, :cond_1

    .line 139
    check-cast p1, Lcom/android/camera/widget/FilmstripLayout;

    .end local p1    # "child":Landroid/view/View;
    iput-object p1, p0, Lcom/android/camera/ui/MainActivityLayout;->mFilmstripLayout:Lcom/android/camera/widget/FilmstripLayout;

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    .restart local p1    # "child":Landroid/view/View;
    :cond_1
    instance-of v0, p1, Lcom/android/camera/ui/operation/ModeListViewOperation;

    if-eqz v0, :cond_0

    .line 141
    check-cast p1, Lcom/android/camera/ui/operation/ModeListViewOperation;

    .end local p1    # "child":Landroid/view/View;
    iput-object p1, p0, Lcom/android/camera/ui/MainActivityLayout;->mModeListOperation:Lcom/android/camera/ui/operation/ModeListViewOperation;

    goto :goto_0
.end method

.method public redirectTouchEventsTo(Landroid/view/View;)V
    .locals 2
    .param p1, "touchReceiver"    # Landroid/view/View;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/MainActivityLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Cannot redirect touch to a null receiver."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/MainActivityLayout;->mTouchReceiver:Landroid/view/View;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/MainActivityLayout;->mRequestToInterceptTouchEvents:Z

    goto :goto_0
.end method

.method public setNonDecorWindowSizeChangedListener(Lcom/android/camera/app/CameraAppUI$NonDecorWindowSizeChangedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/camera/app/CameraAppUI$NonDecorWindowSizeChangedListener;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/camera/ui/MainActivityLayout;->mNonDecorWindowSizeChangedListener:Lcom/android/camera/app/CameraAppUI$NonDecorWindowSizeChangedListener;

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/MainActivityLayout;->mNonDecorWindowSizeChangedListener:Lcom/android/camera/app/CameraAppUI$NonDecorWindowSizeChangedListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/MainActivityLayout;->mNonDecorWindowSizeChangedListener:Lcom/android/camera/app/CameraAppUI$NonDecorWindowSizeChangedListener;

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/ui/MainActivityLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ui/MainActivityLayout;->getMeasuredHeight()I

    move-result v2

    .line 175
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    .line 173
    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/app/CameraAppUI$NonDecorWindowSizeChangedListener;->onNonDecorWindowSizeChanged(III)V

    .line 177
    :cond_0
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/camera/ui/MainActivityLayout;->mSwipeEnabled:Z

    .line 76
    return-void
.end method
