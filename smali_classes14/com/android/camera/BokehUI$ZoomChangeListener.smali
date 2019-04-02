.class Lcom/android/camera/BokehUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "BokehUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/BokehUI;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/camera/BokehUI$ZoomChangeListener;->this$0:Lcom/android/camera/BokehUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/camera/BokehUI$ZoomChangeListener;->this$0:Lcom/android/camera/BokehUI;

    invoke-static {v0}, Lcom/android/camera/BokehUI;->access$100(Lcom/android/camera/BokehUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/camera/BokehUI$ZoomChangeListener;->this$0:Lcom/android/camera/BokehUI;

    invoke-static {v0}, Lcom/android/camera/BokehUI;->access$100(Lcom/android/camera/BokehUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    :cond_0
    return-void
.end method

.method public onZoomIconClick()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/camera/BokehUI$ZoomChangeListener;->this$0:Lcom/android/camera/BokehUI;

    invoke-static {v0}, Lcom/android/camera/BokehUI;->access$100(Lcom/android/camera/BokehUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/camera/BokehUI$ZoomChangeListener;->this$0:Lcom/android/camera/BokehUI;

    invoke-static {v0}, Lcom/android/camera/BokehUI;->access$100(Lcom/android/camera/BokehUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/camera/BokehUI$ZoomChangeListener;->this$0:Lcom/android/camera/BokehUI;

    invoke-static {v0}, Lcom/android/camera/BokehUI;->access$000(Lcom/android/camera/BokehUI;)Lcom/android/camera/BokehController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/BokehController;->onZoomChanged(F)V

    .line 346
    return-void
.end method
