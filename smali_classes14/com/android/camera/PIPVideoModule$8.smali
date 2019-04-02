.class Lcom/android/camera/PIPVideoModule$8;
.super Ljava/lang/Object;
.source "PIPVideoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PIPVideoModule;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 1525
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule$8;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$8;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-boolean v0, v0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1537
    :goto_0
    return-void

    .line 1529
    :cond_0
    invoke-static {}, Lcom/android/camera/PIPVideoModule;->access$1100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "sub camera onPreviewStarted start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1533
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$8;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$1900(Lcom/android/camera/PIPVideoModule;)V

    .line 1534
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/SessionStatsCollector;->previewActive(Z)V

    .line 1536
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$8;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$2000(Lcom/android/camera/PIPVideoModule;)V

    goto :goto_0
.end method
