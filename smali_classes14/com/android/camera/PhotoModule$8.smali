.class Lcom/android/camera/PhotoModule$8;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 884
    return-void
.end method

.method public onStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 853
    iget-object v1, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 854
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v1, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    .line 855
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v1

    .line 854
    invoke-static {v1}, Lcom/android/camera/util/GcamHelper;->hasGcamAsSeparateModule(Lcom/android/camera/one/config/OneCameraFeatureConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget-object v1, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2900(Lcom/android/camera/PhotoModule;)V

    .line 879
    :goto_0
    return-void

    .line 861
    :cond_0
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-eqz v1, :cond_2

    .line 862
    invoke-static {v0}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 863
    iget-object v1, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_scenemode_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    .line 864
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1300(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v3

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Ljava/lang/String;

    move-result-object v3

    .line 863
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3400(Lcom/android/camera/PhotoModule;)V

    .line 872
    iget-object v1, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3500(Lcom/android/camera/PhotoModule;)V

    .line 873
    iget-object v1, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1200(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 874
    iget-object v1, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1200(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 877
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3600(Lcom/android/camera/PhotoModule;)V

    goto :goto_0

    .line 867
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_scenemode_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->isDefault(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 868
    iget-object v1, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_scenemode_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
