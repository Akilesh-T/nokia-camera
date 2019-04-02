.class Lcom/android/camera/WatermarkManager$4;
.super Ljava/lang/Object;
.source "WatermarkManager.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WatermarkManager;->registerWatermark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WatermarkManager;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/WatermarkManager;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/camera/WatermarkManager$4;->this$0:Lcom/android/camera/WatermarkManager;

    iput-object p2, p0, Lcom/android/camera/WatermarkManager$4;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resid"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 319
    const/4 v0, 0x6

    .line 320
    .local v0, "watermark_root_layout_index":I
    const/4 v1, 0x6

    invoke-virtual {p3, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 321
    iget-object v1, p0, Lcom/android/camera/WatermarkManager$4;->this$0:Lcom/android/camera/WatermarkManager;

    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {v1, p1}, Lcom/android/camera/WatermarkManager;->access$1502(Lcom/android/camera/WatermarkManager;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 322
    iget-object v1, p0, Lcom/android/camera/WatermarkManager$4;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v1}, Lcom/android/camera/WatermarkManager;->access$1600(Lcom/android/camera/WatermarkManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/camera/WatermarkManager$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
