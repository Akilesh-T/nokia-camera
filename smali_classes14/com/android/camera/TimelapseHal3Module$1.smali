.class Lcom/android/camera/TimelapseHal3Module$1;
.super Ljava/lang/Object;
.source "TimelapseHal3Module.java"

# interfaces
.implements Lcom/android/camera/TimelapseHal3ModuleUI$VideoModuleUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/TimelapseHal3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TimelapseHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/TimelapseHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module$1;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomClick()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public onZoomRatioChanged(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$1;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0, p1}, Lcom/android/camera/TimelapseHal3Module;->access$002(Lcom/android/camera/TimelapseHal3Module;F)F

    .line 200
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$1;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$1;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera;->setZoom(F)V

    .line 203
    :cond_0
    return-void
.end method
