.class Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;
.super Ljava/lang/Object;
.source "ImageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thirdparty/arcsoft/engine/ImageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitDoneBundle"
.end annotation


# instance fields
.field public final mUnlockRunnable:Ljava/lang/Runnable;

.field public final mWaitLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    .line 208
    new-instance v0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle$1;

    invoke-direct {v0, p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle$1;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;->mUnlockRunnable:Ljava/lang/Runnable;

    .line 215
    return-void
.end method

.method static unblockSyncWaiters(Landroid/os/Message;)V
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 224
    if-nez p0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;

    if-eqz v1, :cond_0

    .line 227
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;

    .line 228
    .local v0, "bundle":Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;
    iget-object v1, v0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;->mUnlockRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
