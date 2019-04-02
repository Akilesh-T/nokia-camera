.class Lcom/android/camera/BeautyHal3ModuleUI$2;
.super Ljava/lang/Object;
.source "BeautyHal3ModuleUI.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BeautyHal3ModuleUI;->initBeautyControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyHal3ModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyHal3ModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BeautyHal3ModuleUI;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/camera/BeautyHal3ModuleUI$2;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

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
    .line 160
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI$2;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$400(Lcom/android/camera/BeautyHal3ModuleUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI$2;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3ModuleUI;->access$400(Lcom/android/camera/BeautyHal3ModuleUI;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_beauty_level_key"

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI$2;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$100(Lcom/android/camera/BeautyHal3ModuleUI;)Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;->onSeekbarChangeStart()V

    .line 166
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI$2;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$100(Lcom/android/camera/BeautyHal3ModuleUI;)Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;->onSeekbarChangeEnd()V

    .line 171
    return-void
.end method
