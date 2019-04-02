.class Lcom/android/camera/BokehHal3Module$1;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehHal3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$1;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekbarChangeEnd()V
    .locals 2

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$1;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$200(Lcom/android/camera/BokehHal3Module;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$1;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$100(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 224
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 225
    .local v0, "activeStates":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/OneCamera$AutoFocusState;>;"
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$1;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$300(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$1;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$100(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;->onTouchExposureEnd()V

    goto :goto_0
.end method

.method public onSeekbarChangeStart()V
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$1;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$200(Lcom/android/camera/BokehHal3Module;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$1;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$100(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 213
    .local v0, "activeStates":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/OneCamera$AutoFocusState;>;"
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$1;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$300(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$1;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$100(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;->onTouchExposureStart()V

    goto :goto_0
.end method

.method public onZoomClick()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onZoomRatioChanged(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$1;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0, p1}, Lcom/android/camera/BokehHal3Module;->access$002(Lcom/android/camera/BokehHal3Module;F)F

    .line 198
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$1;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$100(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$1;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$100(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera;->setZoom(F)V

    .line 201
    :cond_0
    return-void
.end method
