.class Lcom/android/camera/ManualHal3ProModuleUI$4;
.super Ljava/lang/Object;
.source "ManualHal3ProModuleUI.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualHal3ProModuleUI;->initManualModeLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualHal3ProModuleUI;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3ProModuleUI;Landroid/view/ViewTreeObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/camera/ManualHal3ProModuleUI$4;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iput-object p2, p0, Lcom/android/camera/ManualHal3ProModuleUI$4;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$4;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1600(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v0, v1

    .line 296
    .local v0, "height":F
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$4;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1700(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/FrameLayout;

    move-result-object v1

    neg-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setY(F)V

    .line 297
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$4;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 298
    return-void
.end method
