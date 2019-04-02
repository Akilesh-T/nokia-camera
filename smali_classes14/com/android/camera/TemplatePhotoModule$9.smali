.class Lcom/android/camera/TemplatePhotoModule$9;
.super Ljava/lang/Object;
.source "TemplatePhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TemplatePhotoModule;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TemplatePhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 1640
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule$9;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$9;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$3800(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 1644
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$9;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$4100(Lcom/android/camera/TemplatePhotoModule;)V

    .line 1645
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/SessionStatsCollector;->previewActive(Z)V

    .line 1647
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$9;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$4200(Lcom/android/camera/TemplatePhotoModule;)V

    .line 1648
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$9;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$4300(Lcom/android/camera/TemplatePhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$9;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$4500(Lcom/android/camera/TemplatePhotoModule;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule$9;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v1}, Lcom/android/camera/TemplatePhotoModule;->access$4400(Lcom/android/camera/TemplatePhotoModule;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1651
    :cond_0
    return-void
.end method
