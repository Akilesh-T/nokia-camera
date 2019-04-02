.class Lcom/laifeng/sopcastsdk/video/MyRenderer$2;
.super Ljava/lang/Object;
.source "MyRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laifeng/sopcastsdk/video/MyRenderer;->postOpenCameraError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/video/MyRenderer;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/laifeng/sopcastsdk/video/MyRenderer;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/video/MyRenderer;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer$2;->this$0:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    iput p2, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer$2;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer$2;->this$0:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->access$000(Lcom/laifeng/sopcastsdk/video/MyRenderer;)Lcom/laifeng/sopcastsdk/camera/CameraListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer$2;->this$0:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->access$000(Lcom/laifeng/sopcastsdk/video/MyRenderer;)Lcom/laifeng/sopcastsdk/camera/CameraListener;

    move-result-object v0

    iget v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer$2;->val$error:I

    invoke-interface {v0, v1}, Lcom/laifeng/sopcastsdk/camera/CameraListener;->onOpenFail(I)V

    .line 211
    :cond_0
    return-void
.end method
