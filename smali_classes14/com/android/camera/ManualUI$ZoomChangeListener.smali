.class Lcom/android/camera/ManualUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "ManualUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/ManualUI;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/camera/ManualUI$ZoomChangeListener;->this$0:Lcom/android/camera/ManualUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ManualUI;Lcom/android/camera/ManualUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ManualUI;
    .param p2, "x1"    # Lcom/android/camera/ManualUI$1;

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/android/camera/ManualUI$ZoomChangeListener;-><init>(Lcom/android/camera/ManualUI;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/camera/ManualUI$ZoomChangeListener;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0}, Lcom/android/camera/ManualUI;->access$700(Lcom/android/camera/ManualUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/camera/ManualUI$ZoomChangeListener;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0}, Lcom/android/camera/ManualUI;->access$700(Lcom/android/camera/ManualUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 788
    :cond_0
    return-void
.end method

.method public onZoomIconClick()V
    .locals 0

    .prologue
    .line 793
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/camera/ManualUI$ZoomChangeListener;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0}, Lcom/android/camera/ManualUI;->access$700(Lcom/android/camera/ManualUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/camera/ManualUI$ZoomChangeListener;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0}, Lcom/android/camera/ManualUI;->access$700(Lcom/android/camera/ManualUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 781
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/camera/ManualUI$ZoomChangeListener;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0}, Lcom/android/camera/ManualUI;->access$000(Lcom/android/camera/ManualUI;)Lcom/android/camera/ManualController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/ManualController;->onZoomChanged(F)V

    .line 774
    return-void
.end method
