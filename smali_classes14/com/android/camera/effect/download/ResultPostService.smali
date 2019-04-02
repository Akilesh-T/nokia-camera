.class public Lcom/android/camera/effect/download/ResultPostService;
.super Landroid/app/Service;
.source "ResultPostService.java"


# static fields
.field private static final POST_TIME:I = 0x16e3600

.field private static final TAG:Ljava/lang/String; = "ResultPostService"


# instance fields
.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private runTask()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/effect/download/ResultPostService$1;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/download/ResultPostService$1;-><init>(Lcom/android/camera/effect/download/ResultPostService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "ResultPostService"

    const-string v1, "onCreate."

    invoke-static {v0, v1}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "ResultPostService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 71
    const-string v0, "ResultPostService"

    const-string v1, "Starting in foreground."

    invoke-static {v0, v1}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/android/camera/effect/download/ResultPostService;->runTask()V

    .line 75
    const/4 v0, 0x1

    return v0
.end method
