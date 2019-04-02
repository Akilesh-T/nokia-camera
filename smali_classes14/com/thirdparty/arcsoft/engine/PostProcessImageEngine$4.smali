.class Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$4;
.super Ljava/lang/Object;
.source "PostProcessImageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->abort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

.field final synthetic val$bundle:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;


# direct methods
.method constructor <init>(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$4;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iput-object p2, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$4;->val$bundle:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$4;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "ImageProcess - abort"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$4;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$900(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 264
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$4;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$900(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$4;->val$bundle:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;

    iget-object v1, v1, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;->mUnlockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->post(Ljava/lang/Runnable;)Z

    .line 265
    return-void
.end method
