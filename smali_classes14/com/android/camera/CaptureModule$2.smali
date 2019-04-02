.class Lcom/android/camera/CaptureModule$2;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlBarUpdate(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 253
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onControlBarUpdate level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 255
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v1, "default_scope"

    const-string v2, "pref_beauty_level_key"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    return-void
.end method

.method public onZoomClick()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isSupportWideAndUltraWideMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v3, :cond_0

    .line 244
    iget-object v3, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v0, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$300(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/camera/CaptureModule;->access$302(Lcom/android/camera/CaptureModule;Z)Z

    .line 245
    iget-object v0, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v3, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$500(Lcom/android/camera/CaptureModule;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$402(Lcom/android/camera/CaptureModule;Z)Z

    .line 246
    iget-object v0, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v1, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$300(Lcom/android/camera/CaptureModule;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$600(Lcom/android/camera/CaptureModule;Z)V

    .line 247
    iget-object v0, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0, v2}, Lcom/android/camera/CaptureModule;->access$700(Lcom/android/camera/CaptureModule;Z)V

    .line 249
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 244
    goto :goto_0

    :cond_2
    move v1, v2

    .line 245
    goto :goto_1
.end method

.method public onZoomRatioChanged(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0, p1}, Lcom/android/camera/CaptureModule;->access$002(Lcom/android/camera/CaptureModule;F)F

    .line 233
    iget-object v0, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/camera/CaptureModule$2;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera;->setZoom(F)V

    .line 236
    :cond_0
    return-void
.end method
