.class Lcom/android/camera/BokehHal3ModuleUI$2;
.super Ljava/lang/Object;
.source "BokehHal3ModuleUI.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3ModuleUI;->initBokehControl(Lcom/android/camera/one/OneCamera$Facing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehHal3ModuleUI;

.field final synthetic val$cameraFacing:Lcom/android/camera/one/OneCamera$Facing;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3ModuleUI;Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI$2;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    iput-object p2, p0, Lcom/android/camera/BokehHal3ModuleUI$2;->val$cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$2;->val$cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$2;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$400(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI$2;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/BokehHal3ModuleUI;->access$400(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_livebokeh_level_key"

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$2;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$400(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_beauty_level_key"

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$2;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$100(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;->onSeekbarChangeStart()V

    .line 193
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$2;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$100(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;->onSeekbarChangeEnd()V

    .line 198
    return-void
.end method
