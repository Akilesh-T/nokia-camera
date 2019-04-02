.class Lcom/android/camera/ManualHal3Module$1;
.super Ljava/lang/Object;
.source "ManualHal3Module.java"

# interfaces
.implements Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualHal3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module$1;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomClick()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onZoomRatioChanged(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$1;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0, p1}, Lcom/android/camera/ManualHal3Module;->access$002(Lcom/android/camera/ManualHal3Module;F)F

    .line 190
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$1;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$100(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$1;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$100(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera;->setZoom(F)V

    .line 193
    :cond_0
    return-void
.end method
