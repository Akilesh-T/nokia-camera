.class Lcom/android/camera/VideoHal3Module$2;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Lcom/android/camera/VideoHal3ModuleUI$VideoModuleUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoHal3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$2;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomClick()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public onZoomRatioChanged(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$2;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0, p1}, Lcom/android/camera/VideoHal3Module;->access$002(Lcom/android/camera/VideoHal3Module;F)F

    .line 255
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$2;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$2;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera;->setZoom(F)V

    .line 258
    :cond_0
    return-void
.end method
