.class Lcom/android/camera/ManualModule$10;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualModule;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 1924
    iput-object p1, p0, Lcom/android/camera/ManualModule$10;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/android/camera/ManualModule$10;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$2900(Lcom/android/camera/ManualModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 1928
    iget-object v0, p0, Lcom/android/camera/ManualModule$10;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$3200(Lcom/android/camera/ManualModule;)V

    .line 1929
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/SessionStatsCollector;->previewActive(Z)V

    .line 1931
    iget-object v0, p0, Lcom/android/camera/ManualModule$10;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$3300(Lcom/android/camera/ManualModule;)V

    .line 1934
    iget-object v0, p0, Lcom/android/camera/ManualModule$10;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$3500(Lcom/android/camera/ManualModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ManualModule$10$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualModule$10$1;-><init>(Lcom/android/camera/ManualModule$10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1940
    iget-object v0, p0, Lcom/android/camera/ManualModule$10;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$3600(Lcom/android/camera/ManualModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/android/camera/ManualModule$10;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$3500(Lcom/android/camera/ManualModule;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualModule$10;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1}, Lcom/android/camera/ManualModule;->access$3700(Lcom/android/camera/ManualModule;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1943
    :cond_0
    return-void
.end method
