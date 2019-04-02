.class Lcom/android/camera/PhotoModule$16;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 3489
    iput-object p1, p0, Lcom/android/camera/PhotoModule$16;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .prologue
    .line 3492
    iget-object v0, p0, Lcom/android/camera/PhotoModule$16;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$9600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3493
    iget-object v0, p0, Lcom/android/camera/PhotoModule$16;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$9600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "onPreviewStarted"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3495
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$16;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 3496
    iget-object v0, p0, Lcom/android/camera/PhotoModule$16;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$9700(Lcom/android/camera/PhotoModule;)V

    .line 3497
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/SessionStatsCollector;->previewActive(Z)V

    .line 3500
    iget-object v0, p0, Lcom/android/camera/PhotoModule$16;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$9800(Lcom/android/camera/PhotoModule;)V

    .line 3502
    iget-object v0, p0, Lcom/android/camera/PhotoModule$16;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$9000(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3503
    iget-object v0, p0, Lcom/android/camera/PhotoModule$16;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$16;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$9900(Lcom/android/camera/PhotoModule;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3505
    :cond_1
    return-void
.end method
