.class Lcom/android/camera/ManualProModeUI$3;
.super Ljava/lang/Object;
.source "ManualProModeUI.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualProModeUI;->initManualModeLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualProModeUI;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualProModeUI;Landroid/view/ViewTreeObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/camera/ManualProModeUI$3;->this$0:Lcom/android/camera/ManualProModeUI;

    iput-object p2, p0, Lcom/android/camera/ManualProModeUI$3;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$3;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 313
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$3;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$300(Lcom/android/camera/ManualProModeUI;)Landroid/widget/FrameLayout;

    move-result-object v1

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setY(F)V

    .line 314
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$3;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 315
    return-void
.end method
