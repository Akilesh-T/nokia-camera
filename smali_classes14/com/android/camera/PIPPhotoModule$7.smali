.class Lcom/android/camera/PIPPhotoModule$7;
.super Ljava/lang/Object;
.source "PIPPhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PIPPhotoModule;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPPhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPPhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 1687
    iput-object p1, p0, Lcom/android/camera/PIPPhotoModule$7;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$7;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-boolean v0, v0, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1702
    :cond_0
    :goto_0
    return-void

    .line 1691
    :cond_1
    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "sub camera onPreviewStarted start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1695
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$7;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v0}, Lcom/android/camera/PIPPhotoModule;->access$2600(Lcom/android/camera/PIPPhotoModule;)V

    .line 1696
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/SessionStatsCollector;->previewActive(Z)V

    .line 1698
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$7;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v0}, Lcom/android/camera/PIPPhotoModule;->access$2700(Lcom/android/camera/PIPPhotoModule;)V

    .line 1699
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$7;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v0}, Lcom/android/camera/PIPPhotoModule;->access$2800(Lcom/android/camera/PIPPhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$7;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v0}, Lcom/android/camera/PIPPhotoModule;->access$2300(Lcom/android/camera/PIPPhotoModule;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$7;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v1}, Lcom/android/camera/PIPPhotoModule;->access$2900(Lcom/android/camera/PIPPhotoModule;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
