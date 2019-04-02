.class public abstract Lcom/android/camera/util/QuickActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "QuickActivity.java"


# static fields
.field private static final ON_RESUME_DELAY_NON_SECURE_MILLIS:J = 0xfL

.field private static final ON_RESUME_DELAY_SECURE_MILLIS:J = 0x1eL

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field protected mExecutionStartNanoTime:J

.field private mKeyguardManager:Landroid/app/KeyguardManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private final mOnResumeTasks:Ljava/lang/Runnable;

.field private mSkippedFirstOnResume:Z

.field protected mStartupOnCreate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "QuickActivity"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/QuickActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 75
    iput-boolean v2, p0, Lcom/android/camera/util/QuickActivity;->mSkippedFirstOnResume:Z

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/util/QuickActivity;->mExecutionStartNanoTime:J

    .line 80
    iput-boolean v2, p0, Lcom/android/camera/util/QuickActivity;->mStartupOnCreate:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/util/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 89
    new-instance v0, Lcom/android/camera/util/QuickActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/util/QuickActivity$1;-><init>(Lcom/android/camera/util/QuickActivity;)V

    iput-object v0, p0, Lcom/android/camera/util/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/util/QuickActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/util/QuickActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/camera/util/QuickActivity;->mSkippedFirstOnResume:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/util/QuickActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/util/QuickActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/camera/util/QuickActivity;->mSkippedFirstOnResume:Z

    return p1
.end method

.method static synthetic access$100()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/camera/util/QuickActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method private logLifecycle(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "start"    # Z

    .prologue
    .line 213
    if-eqz p2, :cond_0

    const-string v0, "START"

    .line 214
    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/android/camera/util/QuickActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    return-void

    .line 213
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    const-string v0, "END"

    goto :goto_0
.end method


# virtual methods
.method protected isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/camera/util/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 219
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/AndroidServices;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/camera/util/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/camera/util/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 224
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/camera/util/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 229
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/AndroidServices;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/camera/util/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/camera/util/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    .line 234
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/util/QuickActivity;->mExecutionStartNanoTime:J

    .line 116
    const-string v0, "onCreate"

    invoke-direct {p0, v0, v3}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 117
    iput-boolean v3, p0, Lcom/android/camera/util/QuickActivity;->mStartupOnCreate:Z

    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "setDisablePreviewScreenshots"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v2}, Lcom/android/camera/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/util/QuickActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/util/QuickActivity;->mMainHandler:Landroid/os/Handler;

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/camera/util/QuickActivity;->onCreateTasks(Landroid/os/Bundle;)V

    .line 125
    const-string v0, "onCreate"

    invoke-direct {p0, v0, v4}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 126
    return-void
.end method

.method protected onCreateTasks(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 247
    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "onDestroy"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 207
    invoke-virtual {p0}, Lcom/android/camera/util/QuickActivity;->onDestroyTasks()V

    .line 208
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 209
    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 210
    return-void
.end method

.method protected onDestroyTasks()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    const-string v0, "onNewIntent"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 104
    sget-object v0, Lcom/android/camera/util/QuickActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent Action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/camera/util/QuickActivity;->setIntent(Landroid/content/Intent;)V

    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/camera/util/QuickActivity;->onNewIntentTasks(Landroid/content/Intent;)V

    .line 108
    const-string v0, "onNewIntent"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 109
    return-void
.end method

.method protected onNewIntentTasks(Landroid/content/Intent;)V
    .locals 0
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 241
    return-void
.end method

.method protected final onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    const-string v0, "onPause"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 171
    iget-object v0, p0, Lcom/android/camera/util/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/util/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    iget-boolean v0, p0, Lcom/android/camera/util/QuickActivity;->mSkippedFirstOnResume:Z

    if-nez v0, :cond_0

    .line 177
    sget-object v0, Lcom/android/camera/util/QuickActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onPause --> onPauseTasks()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/camera/util/QuickActivity;->onPauseTasks()V

    .line 180
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 181
    iput-boolean v2, p0, Lcom/android/camera/util/QuickActivity;->mStartupOnCreate:Z

    .line 182
    const-string v0, "onPause"

    invoke-direct {p0, v0, v2}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 183
    return-void
.end method

.method protected onPauseTasks()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method protected final onRestart()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "onRestart"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 199
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 201
    const-string v0, "onRestart"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 202
    return-void
.end method

.method protected final onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 138
    const-string v2, "onResume"

    invoke-direct {p0, v2, v6}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 149
    sget-object v2, Lcom/android/camera/util/QuickActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume(): isKeyguardLocked() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/util/QuickActivity;->isKeyguardLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/android/camera/util/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/util/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/camera/util/QuickActivity;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/util/QuickActivity;->mSkippedFirstOnResume:Z

    if-nez v2, :cond_1

    .line 153
    iput-boolean v6, p0, Lcom/android/camera/util/QuickActivity;->mSkippedFirstOnResume:Z

    .line 154
    invoke-virtual {p0}, Lcom/android/camera/util/QuickActivity;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x1e

    .line 156
    .local v0, "delay":J
    :goto_0
    sget-object v2, Lcom/android/camera/util/QuickActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume() --> postDelayed(mOnResumeTasks,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/android/camera/util/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/util/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    .end local v0    # "delay":J
    :goto_1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 165
    const-string v2, "onResume"

    invoke-direct {p0, v2, v5}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 166
    return-void

    .line 154
    :cond_0
    const-wide/16 v0, 0xf

    goto :goto_0

    .line 159
    :cond_1
    sget-object v2, Lcom/android/camera/util/QuickActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onResume --> onResumeTasks()"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    iput-boolean v5, p0, Lcom/android/camera/util/QuickActivity;->mSkippedFirstOnResume:Z

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/util/QuickActivity;->onResumeTasks()V

    goto :goto_1
.end method

.method protected onResumeTasks()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method protected final onStart()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "onStart"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/util/QuickActivity;->onStartTasks()V

    .line 132
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 133
    const-string v0, "onStart"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 134
    return-void
.end method

.method protected onStartTasks()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method protected final onStop()V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/camera/util/QuickActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/android/camera/util/QuickActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "changing configurations"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    :cond_0
    const-string v0, "onStop"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 191
    invoke-virtual {p0}, Lcom/android/camera/util/QuickActivity;->onStopTasks()V

    .line 192
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 193
    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 194
    return-void
.end method

.method protected onStopTasks()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method
