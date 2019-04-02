.class Lcom/android/camera/BeautyUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "BeautyUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/BeautyUI;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/camera/BeautyUI$ZoomChangeListener;->this$0:Lcom/android/camera/BeautyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BeautyUI;Lcom/android/camera/BeautyUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BeautyUI;
    .param p2, "x1"    # Lcom/android/camera/BeautyUI$1;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/android/camera/BeautyUI$ZoomChangeListener;-><init>(Lcom/android/camera/BeautyUI;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/camera/BeautyUI$ZoomChangeListener;->this$0:Lcom/android/camera/BeautyUI;

    invoke-static {v0}, Lcom/android/camera/BeautyUI;->access$200(Lcom/android/camera/BeautyUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/camera/BeautyUI$ZoomChangeListener;->this$0:Lcom/android/camera/BeautyUI;

    invoke-static {v0}, Lcom/android/camera/BeautyUI;->access$200(Lcom/android/camera/BeautyUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_0
    return-void
.end method

.method public onZoomIconClick()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/camera/BeautyUI$ZoomChangeListener;->this$0:Lcom/android/camera/BeautyUI;

    invoke-static {v0}, Lcom/android/camera/BeautyUI;->access$200(Lcom/android/camera/BeautyUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/camera/BeautyUI$ZoomChangeListener;->this$0:Lcom/android/camera/BeautyUI;

    invoke-static {v0}, Lcom/android/camera/BeautyUI;->access$200(Lcom/android/camera/BeautyUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/camera/BeautyUI$ZoomChangeListener;->this$0:Lcom/android/camera/BeautyUI;

    invoke-static {v0}, Lcom/android/camera/BeautyUI;->access$000(Lcom/android/camera/BeautyUI;)Lcom/android/camera/BeautyController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/BeautyController;->onZoomChanged(F)V

    .line 338
    return-void
.end method
