.class public Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;
.super Ljava/lang/Object;
.source "CameraAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitDoneBundle"
.end annotation


# instance fields
.field public final mUnlockRunnable:Ljava/lang/Runnable;

.field public final mWaitLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    .line 1091
    new-instance v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle$1;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle$1;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mUnlockRunnable:Ljava/lang/Runnable;

    .line 1098
    return-void
.end method

.method static unblockSyncWaiters(Landroid/os/Message;)V
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 1107
    if-nez p0, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    if-eqz v1, :cond_0

    .line 1110
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    .line 1111
    .local v0, "bundle":Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;
    iget-object v1, v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mUnlockRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
