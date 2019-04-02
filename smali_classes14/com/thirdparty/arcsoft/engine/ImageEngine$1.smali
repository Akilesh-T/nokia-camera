.class Lcom/thirdparty/arcsoft/engine/ImageEngine$1;
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
    .line 41
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Wait Frame Timeout!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/ImageEngine;

    iget-object v0, v0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    const/4 v1, -0x5

    invoke-interface {v0, v1}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessError(I)V

    .line 46
    return-void
.end method
