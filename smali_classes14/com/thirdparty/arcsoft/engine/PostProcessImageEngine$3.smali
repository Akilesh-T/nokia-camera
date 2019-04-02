.class Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$3;
.super Ljava/lang/Object;
.source "PostProcessImageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->addFrame(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;I[BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

.field final synthetic val$data:[B

.field final synthetic val$frameNum:I

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;I[BZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$3;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iput p2, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$3;->val$frameNum:I

    iput-object p3, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$3;->val$data:[B

    iput-boolean p4, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$3;->val$sync:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$3;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$3;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$900(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;

    move-result-object v0

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$3;->val$frameNum:I

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$3;->val$data:[B

    iget-boolean v3, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$3;->val$sync:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->requestAddFrame(I[BZ)V

    goto :goto_0
.end method
