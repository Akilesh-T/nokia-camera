.class Lcom/android/camera/ui/PreviewOverlay$3;
.super Ljava/lang/Object;
.source "PreviewOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PreviewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PreviewOverlay;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PreviewOverlay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay$3;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 529
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$3;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$500(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$3;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 532
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 533
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$3;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$1700(Lcom/android/camera/ui/PreviewOverlay;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 534
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$3;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->access$800(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$3;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewOverlay;->access$900(Lcom/android/camera/ui/PreviewOverlay;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 535
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$3;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$3;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewOverlay;->access$900(Lcom/android/camera/ui/PreviewOverlay;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->setZoom(F)V

    .line 536
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$3;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 537
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$3;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$3;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewOverlay;->access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->access$800(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;)F

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomValueChanged(F)V

    .line 539
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$3;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    const-wide/16 v4, 0x10

    add-long/2addr v4, v0

    invoke-static {v2, v4, v5}, Lcom/android/camera/ui/PreviewOverlay;->access$1702(Lcom/android/camera/ui/PreviewOverlay;J)J

    .line 543
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$3;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$500(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$3;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$3;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewOverlay;->access$1000(Lcom/android/camera/ui/PreviewOverlay;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/PreviewOverlay;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
