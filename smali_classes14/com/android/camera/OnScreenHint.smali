.class public Lcom/android/camera/OnScreenHint;
.super Ljava/lang/Object;
.source "OnScreenHint.java"


# static fields
.field static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mShow:Ljava/lang/Runnable;

.field mView:Landroid/view/View;

.field private final mWM:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "OnScreenHint"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/OnScreenHint;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, -0x2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/android/camera/OnScreenHint$1;

    invoke-direct {v0, p0}, Lcom/android/camera/OnScreenHint$1;-><init>(Lcom/android/camera/OnScreenHint;)V

    iput-object v0, p0, Lcom/android/camera/OnScreenHint;->mShow:Ljava/lang/Runnable;

    .line 174
    new-instance v0, Lcom/android/camera/OnScreenHint$2;

    invoke-direct {v0, p0}, Lcom/android/camera/OnScreenHint$2;-><init>(Lcom/android/camera/OnScreenHint;)V

    iput-object v0, p0, Lcom/android/camera/OnScreenHint;->mHide:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/android/camera/OnScreenHint;->mActivity:Landroid/app/Activity;

    .line 67
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    .line 69
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 70
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 71
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 73
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 74
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x7f0a00ad

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 75
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 76
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OnScreenHint"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/OnScreenHint;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/OnScreenHint;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/OnScreenHint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/OnScreenHint;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/camera/OnScreenHint;->handleShow()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/OnScreenHint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/OnScreenHint;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/camera/OnScreenHint;->handleHide()V

    return-void
.end method

.method private declared-synchronized handleHide()V
    .locals 2

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 162
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleShow()V
    .locals 3

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mNextView:Landroid/view/View;

    if-eq v0, v1, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/android/camera/OnScreenHint;->handleHide()V

    .line 145
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mNextView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_1
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 110
    new-instance v1, Lcom/android/camera/OnScreenHint;

    invoke-direct {v1, p0}, Lcom/android/camera/OnScreenHint;-><init>(Landroid/app/Activity;)V

    .line 112
    .local v1, "result":Lcom/android/camera/OnScreenHint;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 114
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v4, 0x7f040071

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 115
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f0f009a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 116
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iput-object v3, v1, Lcom/android/camera/OnScreenHint;->mNextView:Landroid/view/View;

    .line 120
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mNextView:Landroid/view/View;

    const v2, 0x7f0f009a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    .local v0, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 135
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
