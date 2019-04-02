.class Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView$2;
.super Ljava/lang/Object;
.source "RenderSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->setEffect(Lcom/laifeng/sopcastsdk/video/effect/Effect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

.field final synthetic val$effect:Lcom/laifeng/sopcastsdk/video/effect/Effect;


# direct methods
.method constructor <init>(Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;Lcom/laifeng/sopcastsdk/video/effect/Effect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView$2;->this$0:Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

    iput-object p2, p0, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView$2;->val$effect:Lcom/laifeng/sopcastsdk/video/effect/Effect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView$2;->this$0:Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->access$000(Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;)Lcom/laifeng/sopcastsdk/video/MyRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView$2;->this$0:Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->access$000(Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;)Lcom/laifeng/sopcastsdk/video/MyRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView$2;->val$effect:Lcom/laifeng/sopcastsdk/video/effect/Effect;

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->setEffect(Lcom/laifeng/sopcastsdk/video/effect/Effect;)V

    .line 79
    :cond_0
    return-void
.end method
