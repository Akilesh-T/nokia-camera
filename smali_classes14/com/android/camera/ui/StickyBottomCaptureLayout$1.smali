.class Lcom/android/camera/ui/StickyBottomCaptureLayout$1;
.super Ljava/lang/Object;
.source "StickyBottomCaptureLayout.java"

# interfaces
.implements Lcom/android/camera/widget/ModeOptions$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/StickyBottomCaptureLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/StickyBottomCaptureLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/StickyBottomCaptureLayout;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$1;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginToHideModeOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 67
    iget-object v2, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$1;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    iget-object v3, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$1;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    .line 68
    invoke-static {v3}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->access$500(Lcom/android/camera/ui/StickyBottomCaptureLayout;)Lcom/android/camera/CaptureLayoutHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CaptureLayoutHelper;->getUncoveredPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$1;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    .line 70
    invoke-static {v4}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->access$100(Lcom/android/camera/ui/StickyBottomCaptureLayout;)Lcom/android/camera/widget/ModeOptionsOverlay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/widget/ModeOptionsOverlay;->getModeOptionsToggleWidth()F

    move-result v4

    .line 67
    invoke-static {v2, v3, v5, v4}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->access$200(Lcom/android/camera/ui/StickyBottomCaptureLayout;Landroid/graphics/RectF;ZF)Landroid/graphics/PointF;

    move-result-object v1

    .line 71
    .local v1, "thumbnailViewPosition":Landroid/graphics/PointF;
    iget-object v2, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$1;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 72
    .local v0, "orientation":I
    if-ne v0, v5, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$1;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->access$300(Lcom/android/camera/ui/StickyBottomCaptureLayout;F)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$1;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->access$400(Lcom/android/camera/ui/StickyBottomCaptureLayout;F)V

    goto :goto_0
.end method

.method public onBeginToShowModeOptions()V
    .locals 6

    .prologue
    .line 53
    iget-object v2, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$1;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    iget-object v3, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$1;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    .line 54
    invoke-static {v3}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->access$000(Lcom/android/camera/ui/StickyBottomCaptureLayout;)Lcom/android/camera/CaptureLayoutHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CaptureLayoutHelper;->getUncoveredPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$1;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    .line 56
    invoke-static {v5}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->access$100(Lcom/android/camera/ui/StickyBottomCaptureLayout;)Lcom/android/camera/widget/ModeOptionsOverlay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/widget/ModeOptionsOverlay;->getModeOptionsToggleWidth()F

    move-result v5

    .line 53
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->access$200(Lcom/android/camera/ui/StickyBottomCaptureLayout;Landroid/graphics/RectF;ZF)Landroid/graphics/PointF;

    move-result-object v1

    .line 57
    .local v1, "thumbnailViewPosition":Landroid/graphics/PointF;
    iget-object v2, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$1;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 58
    .local v0, "orientation":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$1;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->access$300(Lcom/android/camera/ui/StickyBottomCaptureLayout;F)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$1;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->access$400(Lcom/android/camera/ui/StickyBottomCaptureLayout;F)V

    goto :goto_0
.end method
