.class Lcom/android/camera/BeautyHal3Module$1;
.super Ljava/lang/Object;
.source "BeautyHal3Module.java"

# interfaces
.implements Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyHal3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module$1;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekbarChangeEnd()V
    .locals 2

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$1;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$200(Lcom/android/camera/BeautyHal3Module;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$1;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 207
    .local v0, "activeStates":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/OneCamera$AutoFocusState;>;"
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$1;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$300(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$1;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;->onTouchExposureEnd()V

    goto :goto_0
.end method

.method public onSeekbarChangeStart()V
    .locals 2

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$1;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$200(Lcom/android/camera/BeautyHal3Module;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$1;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 194
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 195
    .local v0, "activeStates":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/OneCamera$AutoFocusState;>;"
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$1;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$300(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera$AutoFocusState;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$1;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;->onTouchExposureStart()V

    goto :goto_0
.end method

.method public onZoomClick()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onZoomRatioChanged(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$1;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0, p1}, Lcom/android/camera/BeautyHal3Module;->access$002(Lcom/android/camera/BeautyHal3Module;F)F

    .line 180
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$1;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$1;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera;->setZoom(F)V

    .line 183
    :cond_0
    return-void
.end method
