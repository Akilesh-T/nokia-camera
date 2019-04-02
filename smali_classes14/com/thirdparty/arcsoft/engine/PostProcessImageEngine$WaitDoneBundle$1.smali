.class Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle$1;
.super Ljava/lang/Object;
.source "PostProcessImageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;


# direct methods
.method constructor <init>(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle$1;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle$1;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;

    iget-object v1, v0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle$1;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;

    iget-object v0, v0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 178
    monitor-exit v1

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
