.class Lcom/thirdparty/arcsoft/engine/ImageEngine$6;
.super Ljava/lang/Object;
.source "ImageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thirdparty/arcsoft/engine/ImageEngine;->abort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

.field final synthetic val$bundle:Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;


# direct methods
.method constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngine;Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/thirdparty/arcsoft/engine/ImageEngine;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$6;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iput-object p2, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$6;->val$bundle:Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$6;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$100(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 338
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$6;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$100(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$6;->val$bundle:Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;

    iget-object v1, v1, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;->mUnlockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->post(Ljava/lang/Runnable;)Z

    .line 339
    return-void
.end method
