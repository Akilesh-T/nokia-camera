.class Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle$1;
.super Ljava/lang/Object;
.source "ImageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;


# direct methods
.method constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle$1;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle$1;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;

    iget-object v1, v0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle$1;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;

    iget-object v0, v0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 213
    monitor-exit v1

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
