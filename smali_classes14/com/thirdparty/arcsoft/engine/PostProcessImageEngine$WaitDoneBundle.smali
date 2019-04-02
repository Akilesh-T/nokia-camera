.class Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;
.super Ljava/lang/Object;
.source "PostProcessImageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;
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
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    .line 173
    new-instance v0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle$1;

    invoke-direct {v0, p0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle$1;-><init>(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;->mUnlockRunnable:Ljava/lang/Runnable;

    .line 180
    return-void
.end method

.method static unblockSyncWaiters(Landroid/os/Message;)V
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 189
    if-nez p0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;

    if-eqz v1, :cond_0

    .line 192
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;

    .line 193
    .local v0, "bundle":Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;
    iget-object v1, v0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;->mUnlockRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
