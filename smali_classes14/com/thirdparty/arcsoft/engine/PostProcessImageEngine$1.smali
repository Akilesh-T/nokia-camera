.class Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$1;
.super Ljava/lang/Object;
.source "PostProcessImageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;IZII)V
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
    .line 58
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Wait Frame Timeout!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    iget-object v0, v0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    const/4 v1, -0x5

    invoke-interface {v0, v1}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessError(I)V

    .line 63
    return-void
.end method
