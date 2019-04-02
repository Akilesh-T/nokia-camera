.class Lcom/thirdparty/arcsoft/engine/ImageEngine$2;
.super Ljava/lang/Object;
.source "ImageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V
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
    .line 48
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$2;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$2;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$2;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$100(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->requestInitEngine()V

    goto :goto_0
.end method
