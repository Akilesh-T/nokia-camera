.class public Lcom/android/camera/async/AndroidPriorityThread;
.super Ljava/lang/Thread;
.source "AndroidPriorityThread.java"


# instance fields
.field private final mAndroidThreadPriority:I


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 0
    .param p1, "androidThreadPriority"    # I
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 19
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 20
    iput p1, p0, Lcom/android/camera/async/AndroidPriorityThread;->mAndroidThreadPriority:I

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/android/camera/async/AndroidPriorityThread;->mAndroidThreadPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 26
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 27
    return-void
.end method
