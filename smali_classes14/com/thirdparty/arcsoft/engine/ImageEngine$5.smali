.class Lcom/thirdparty/arcsoft/engine/ImageEngine$5;
.super Ljava/lang/Object;
.source "ImageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thirdparty/arcsoft/engine/ImageEngine;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;


# direct methods
.method constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/thirdparty/arcsoft/engine/ImageEngine;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$5;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$5;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$5;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$100(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->requestProcessResult()V

    goto :goto_0
.end method
