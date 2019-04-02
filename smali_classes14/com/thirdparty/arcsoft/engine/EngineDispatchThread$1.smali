.class Lcom/thirdparty/arcsoft/engine/EngineDispatchThread$1;
.super Ljava/lang/Object;
.source "EngineDispatchThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;


# direct methods
.method constructor <init>(Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread$1;->this$0:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread$1;->this$0:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread$1;->this$0:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
