.class Lcom/android/camera/VideoUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoUI;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoUI;Lcom/android/camera/VideoUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/VideoUI;
    .param p2, "x1"    # Lcom/android/camera/VideoUI$1;

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/android/camera/VideoUI$ZoomChangeListener;-><init>(Lcom/android/camera/VideoUI;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$200(Lcom/android/camera/VideoUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$200(Lcom/android/camera/VideoUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :cond_0
    return-void
.end method

.method public onZoomIconClick()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$000(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/VideoController;->onZoomClick()V

    .line 427
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$200(Lcom/android/camera/VideoUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$200(Lcom/android/camera/VideoUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$000(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/VideoController;->onZoomChanged(F)V

    .line 408
    return-void
.end method
