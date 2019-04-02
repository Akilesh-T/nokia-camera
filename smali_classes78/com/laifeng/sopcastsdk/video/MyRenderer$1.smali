.class Lcom/laifeng/sopcastsdk/video/MyRenderer$1;
.super Ljava/lang/Object;
.source "MyRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laifeng/sopcastsdk/video/MyRenderer;->startCameraPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/video/MyRenderer;


# direct methods
.method constructor <init>(Lcom/laifeng/sopcastsdk/video/MyRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/video/MyRenderer;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer$1;->this$0:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer$1;->this$0:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->access$000(Lcom/laifeng/sopcastsdk/video/MyRenderer;)Lcom/laifeng/sopcastsdk/camera/CameraListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/camera/CameraListener;->onOpenSuccess()V

    .line 189
    return-void
.end method
