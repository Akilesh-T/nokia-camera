.class Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;
.super Ljava/lang/Object;
.source "CameraLivingView.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;


# direct methods
.method constructor <init>(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 3

    .prologue
    .line 186
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-static {v1}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->access$000(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)I

    move-result v0

    .line 187
    .local v0, "result":I
    if-nez v0, :cond_2

    .line 188
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-static {v1}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->access$100(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)Lcom/laifeng/sopcastsdk/ui/CameraLivingView$LivingStartListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-static {v1}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->access$200(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    move-result-object v1

    new-instance v2, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1$1;

    invoke-direct {v2, p0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1$1;-><init>(Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;)V

    invoke-virtual {v1, v2}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->post(Ljava/lang/Runnable;)Z

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-static {v1}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->access$300(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)V

    .line 197
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-static {v1}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->access$400(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)V

    .line 198
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-static {v1}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->access$500(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)Lcom/laifeng/sopcastsdk/controller/StreamController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->start()V

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-static {v1}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->access$100(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)Lcom/laifeng/sopcastsdk/ui/CameraLivingView$LivingStartListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-static {v1}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->access$200(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    move-result-object v1

    new-instance v2, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1$2;

    invoke-direct {v2, p0, v0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1$2;-><init>(Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;I)V

    invoke-virtual {v1, v2}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
