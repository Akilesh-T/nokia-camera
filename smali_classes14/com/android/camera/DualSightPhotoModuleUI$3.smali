.class Lcom/android/camera/DualSightPhotoModuleUI$3;
.super Ljava/lang/Object;
.source "DualSightPhotoModuleUI.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModuleUI;->initBeautyControl(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightPhotoModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModuleUI$3;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

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
    .line 339
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI$3;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModuleUI;->access$1300(Lcom/android/camera/DualSightPhotoModuleUI;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 340
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v1, "default_scope"

    const-string v2, "pref_beauty_level_key"

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 342
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 347
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 352
    return-void
.end method
