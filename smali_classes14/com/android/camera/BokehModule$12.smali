.class Lcom/android/camera/BokehModule$12;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehModule;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 2410
    iput-object p1, p0, Lcom/android/camera/BokehModule$12;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .prologue
    .line 2413
    iget-object v0, p0, Lcom/android/camera/BokehModule$12;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$4100(Lcom/android/camera/BokehModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 2414
    iget-object v0, p0, Lcom/android/camera/BokehModule$12;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$4400(Lcom/android/camera/BokehModule;)V

    .line 2415
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/SessionStatsCollector;->previewActive(Z)V

    .line 2417
    iget-object v0, p0, Lcom/android/camera/BokehModule$12;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$4500(Lcom/android/camera/BokehModule;)V

    .line 2418
    iget-object v0, p0, Lcom/android/camera/BokehModule$12;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$4600(Lcom/android/camera/BokehModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/android/camera/BokehModule$12;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$3100(Lcom/android/camera/BokehModule;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BokehModule$12;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v1}, Lcom/android/camera/BokehModule;->access$4700(Lcom/android/camera/BokehModule;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2421
    :cond_0
    return-void
.end method
