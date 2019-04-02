.class Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$5;
.super Ljava/lang/Object;
.source "PostProcessImageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;


# direct methods
.method constructor <init>(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$5;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$5;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$5;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .line 282
    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$5;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .line 283
    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$5;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$900(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 286
    :cond_1
    return-void
.end method
