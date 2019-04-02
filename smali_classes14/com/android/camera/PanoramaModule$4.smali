.class Lcom/android/camera/PanoramaModule$4;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$4;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$4;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$2100(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 1252
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$4;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$2300(Lcom/android/camera/PanoramaModule;)V

    .line 1253
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/SessionStatsCollector;->previewActive(Z)V

    .line 1256
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$4;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$2400(Lcom/android/camera/PanoramaModule;)V

    .line 1257
    return-void
.end method
