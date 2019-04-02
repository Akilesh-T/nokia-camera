.class Lcom/laifeng/sopcastsdk/ui/CameraLivingView$2;
.super Ljava/lang/Object;
.source "CameraLivingView.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/camera/CameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/ui/CameraLivingView;
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
    .line 313
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$2;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public onOpenFail(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$2;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->access$600(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)Lcom/laifeng/sopcastsdk/camera/CameraListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$2;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->access$600(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)Lcom/laifeng/sopcastsdk/camera/CameraListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/laifeng/sopcastsdk/camera/CameraListener;->onOpenFail(I)V

    .line 327
    :cond_0
    return-void
.end method

.method public onOpenSuccess()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$2;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->changeFocusModeUI()V

    .line 317
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$2;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->access$600(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)Lcom/laifeng/sopcastsdk/camera/CameraListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$2;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->access$600(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)Lcom/laifeng/sopcastsdk/camera/CameraListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/camera/CameraListener;->onOpenSuccess()V

    .line 320
    :cond_0
    return-void
.end method
