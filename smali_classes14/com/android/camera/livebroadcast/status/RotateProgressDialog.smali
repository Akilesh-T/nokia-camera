.class public Lcom/android/camera/livebroadcast/status/RotateProgressDialog;
.super Ljava/lang/Object;
.source "RotateProgressDialog.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final ANIM_DURATION:J = 0x96L

.field private static final DISMISS_DELAY:I = 0xbb8

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mHandler:Landroid/os/Handler;

.field private mMessageView:Landroid/widget/TextView;

.field private mOrientation:I

.field private mProgressBar:Landroid/view/View;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mRotateLayout:Lcom/android/camera/ui/RotateLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "RDController"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orientation"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog$1;-><init>(Lcom/android/camera/livebroadcast/status/RotateProgressDialog;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mDismissRunnable:Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mActivity:Landroid/app/Activity;

    .line 42
    iput p2, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mOrientation:I

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method private fadeInDialog(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRootView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 122
    sget-object v0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fadeInDialog-mDialogRootLayout.getVisibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    :cond_0
    return-void
.end method

.method private fadeOutDialog()V
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRootView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRootView:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 114
    .local v0, "root":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 116
    sget-object v1, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fadeOutDialog-mDialogRootLayout.getVisibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private inflateDialog()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    .line 92
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 108
    :goto_0
    return-void

    .line 94
    :cond_0
    sget-object v3, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "inflateDialog()"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 96
    .local v1, "root":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 97
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04007f

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0f01ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRootView:Landroid/widget/FrameLayout;

    .line 100
    const v3, 0x7f0f01ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/RotateLayout;

    iput-object v3, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 101
    const v3, 0x7f0f01ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 102
    const v3, 0x7f0f01ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mProgressBar:Landroid/view/View;

    .line 104
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mActivity:Landroid/app/Activity;

    const/high16 v4, 0x10a0000

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 105
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mActivity:Landroid/app/Activity;

    const v4, 0x10a0001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 106
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 107
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->fadeOutDialog()V

    .line 85
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 48
    iput p1, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mOrientation:I

    .line 49
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRootView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0
.end method

.method public show(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->inflateDialog()V

    .line 56
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRotateLayout:Lcom/android/camera/ui/RotateLayout;

    iget v1, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->fadeInDialog(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public showInTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->inflateDialog()V

    .line 72
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRotateLayout:Lcom/android/camera/ui/RotateLayout;

    iget v1, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->fadeInDialog(Ljava/lang/Runnable;)V

    .line 78
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    return-void
.end method

.method public showWithAction(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->inflateDialog()V

    .line 64
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mRotateLayout:Lcom/android/camera/ui/RotateLayout;

    iget v1, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 67
    invoke-direct {p0, p2}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->fadeInDialog(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
