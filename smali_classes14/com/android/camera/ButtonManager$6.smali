.class Lcom/android/camera/ButtonManager$6;
.super Ljava/lang/Object;
.source "ButtonManager.java"

# interfaces
.implements Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ButtonManager;->initializeCameraButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ButtonManager;

.field final synthetic val$button:Lcom/android/camera/MultiToggleImageButton;

.field final synthetic val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ButtonManager;

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/android/camera/ButtonManager$6;->this$0:Lcom/android/camera/ButtonManager;

    iput-object p2, p0, Lcom/android/camera/ButtonManager$6;->val$button:Lcom/android/camera/MultiToggleImageButton;

    iput-object p3, p0, Lcom/android/camera/ButtonManager$6;->val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public expandBarOverlay(Z)V
    .locals 1
    .param p1, "isExpand"    # Z

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/camera/ButtonManager$6;->this$0:Lcom/android/camera/ButtonManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ButtonManager;->setMainBarByModeOverlay(Z)V

    .line 1035
    return-void
.end method

.method public stateChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # I

    .prologue
    .line 1017
    iget-object v1, p0, Lcom/android/camera/ButtonManager$6;->this$0:Lcom/android/camera/ButtonManager;

    invoke-static {v1}, Lcom/android/camera/ButtonManager;->access$100(Lcom/android/camera/ButtonManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "PhotoModule"

    invoke-static {v2}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/camera/settings/SettingsManager;->setValueByIndex(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1019
    iget-object v1, p0, Lcom/android/camera/ButtonManager$6;->this$0:Lcom/android/camera/ButtonManager;

    invoke-static {v1}, Lcom/android/camera/ButtonManager;->access$100(Lcom/android/camera/ButtonManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "PhotoModule"

    invoke-static {v2}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1025
    .local v0, "cameraId":I
    iget-object v1, p0, Lcom/android/camera/ButtonManager$6;->val$button:Lcom/android/camera/MultiToggleImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/MultiToggleImageButton;->setEnabled(Z)V

    .line 1026
    iget-object v1, p0, Lcom/android/camera/ButtonManager$6;->val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;

    if-eqz v1, :cond_0

    .line 1027
    iget-object v1, p0, Lcom/android/camera/ButtonManager$6;->val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-interface {v1, v0}, Lcom/android/camera/ButtonManager$ButtonCallback;->onStateChanged(I)V

    .line 1030
    :cond_0
    return-void
.end method
