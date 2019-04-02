.class Lcom/android/camera/CameraActivity$16;
.super Landroid/os/AsyncTask;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->onCreateTasks(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;

.field final synthetic val$conditionVariable:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;Landroid/os/ConditionVariable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 2301
    iput-object p1, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$16;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2301
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$16;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 2305
    :try_start_0
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v8}, Lcom/android/camera/CameraActivity;->access$4300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/stats/profiler/Profiler;

    move-result-object v8

    const-string v9, "CameraActivity.onCreateTasks - Async"

    invoke-interface {v8, v9}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    .line 2306
    .local v2, "async_profile":Lcom/android/camera/stats/profiler/Profile;
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    const-string v9, "CameraActivity.onCreateTasks - Async : START"

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2308
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v9, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator;->createDefault(Landroid/content/ContentResolver;Lcom/android/camera/app/MemoryManager;)Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/CameraActivity;->access$4402(Lcom/android/camera/CameraActivity;Lcom/android/camera/one/config/OneCameraFeatureConfig;)Lcom/android/camera/one/config/OneCameraFeatureConfig;

    .line 2309
    const-string v8, "mFeatureConfig"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2312
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 2313
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2314
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 2315
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2316
    :cond_0
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/camera/CameraActivity;->access$1702(Lcom/android/camera/CameraActivity;Z)Z

    .line 2321
    :goto_0
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->instance()Lcom/android/camera/device/ActiveCameraDeviceTracker;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/CameraActivity;->access$4502(Lcom/android/camera/CameraActivity;Lcom/android/camera/device/ActiveCameraDeviceTracker;)Lcom/android/camera/device/ActiveCameraDeviceTracker;

    .line 2322
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    const-string v9, "mActiveCameraDeviceTracker.get"

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2324
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isHAL3Enabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2325
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 2326
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    .line 2327
    const-string v8, "OneCameraController.get"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2334
    :goto_1
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v8}, Lcom/android/camera/CameraActivity;->access$4600(Lcom/android/camera/CameraActivity;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v8

    sget-object v9, Lcom/android/camera/util/ProductModelUtil$DualCamType;->NONE:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-eq v8, v9, :cond_9

    const/4 v6, 0x1

    .line 2335
    .local v6, "useDualCam":Z
    :goto_2
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "useDualCam = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2336
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "useDualCam = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2338
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 2339
    new-instance v1, Lcom/android/camera/settings/AppUpgrader;

    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v8}, Lcom/android/camera/settings/AppUpgrader;-><init>(Lcom/android/camera/app/AppController;)V

    .line 2340
    .local v1, "appUpgrader":Lcom/android/camera/settings/AppUpgrader;
    const-string v8, "new AppUpgrader"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2341
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/camera/settings/AppUpgrader;->upgrade(Lcom/android/camera/settings/SettingsManager;)V

    .line 2342
    const-string v8, "appUpgrader.upgrade"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2343
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v9

    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v8}, Lcom/android/camera/CameraActivity;->access$4700(Lcom/android/camera/CameraActivity;)Landroid/content/Context;

    move-result-object v10

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v8

    sget-object v11, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v8, v11, :cond_a

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isHAL3Enabled()Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x1

    :goto_3
    invoke-static {v9, v10, v8}, Lcom/android/camera/settings/Keys;->setDefaults(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;Z)V

    .line 2344
    const-string v8, "Keys.setDefaults"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2346
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 2347
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "camera.startup_module"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "PhotoModule"

    invoke-static {v9}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "pref_camera_id_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "VideoModule"

    invoke-static {v9}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "pref_camera_id_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "pref_camera_screen_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v8

    sget-object v9, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v8, v9, :cond_1

    .line 2353
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "pref_dual_cam_controller_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    :cond_1
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v8}, Lcom/android/camera/CameraActivity;->access$4800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "pref_brand_logo_show_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v8}, Lcom/android/camera/CameraActivity;->access$4800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "pref_watermark_show_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2356
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v8}, Lcom/android/camera/CameraActivity;->access$4800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "pref_brand_logo_show_key"

    iget-object v11, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v11}, Lcom/android/camera/CameraActivity;->access$4800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v11

    const-string v12, "default_scope"

    const-string v13, "pref_watermark_show_key"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    :cond_2
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "pref_camera_sticker_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "pref_camera_animoji_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "pref_camera_portrait_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "pref_camera_effect_mode_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "pref_camera_effect_choose_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    const-string v9, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v8, v9}, Lcom/android/camera/util/PermissionUtil;->checkSinglePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2365
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "pref_camera_recordlocation_key"

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2367
    :cond_3
    const-string v8, "reset Setting done"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2368
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    const-string v9, "reset Setting done"

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2370
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v8}, Lcom/android/camera/CameraActivity;->access$4900(Lcom/android/camera/CameraActivity;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v8}, Lcom/android/camera/CameraActivity;->access$1700(Lcom/android/camera/CameraActivity;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2371
    invoke-static {}, Lcom/android/camera/device/WarmUpCameraController;->instance()Lcom/android/camera/device/WarmUpCameraController;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/camera/device/WarmUpCameraController;->mIgnoreNextWarmStart:Z

    if-eqz v8, :cond_b

    .line 2372
    invoke-static {}, Lcom/android/camera/device/WarmUpCameraController;->instance()Lcom/android/camera/device/WarmUpCameraController;

    move-result-object v8

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/camera/device/WarmUpCameraController;->mIgnoreNextWarmStart:Z

    .line 2413
    :cond_4
    :goto_4
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v8}, Lcom/android/camera/CameraActivity;->access$5200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/ModuleManagerImpl;

    move-result-object v8

    if-nez v8, :cond_5

    .line 2414
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    new-instance v9, Lcom/android/camera/app/ModuleManagerImpl;

    invoke-direct {v9}, Lcom/android/camera/app/ModuleManagerImpl;-><init>()V

    invoke-static {v8, v9}, Lcom/android/camera/CameraActivity;->access$5202(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/ModuleManagerImpl;)Lcom/android/camera/app/ModuleManagerImpl;

    .line 2416
    :cond_5
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v8}, Lcom/android/camera/CameraActivity;->access$5000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/OrientationManagerImpl;

    move-result-object v8

    if-nez v8, :cond_6

    .line 2417
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    new-instance v9, Lcom/android/camera/app/OrientationManagerImpl;

    iget-object v10, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v11, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v11}, Lcom/android/camera/CameraActivity;->access$5100(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/camera/app/OrientationManagerImpl;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    invoke-static {v8, v9}, Lcom/android/camera/CameraActivity;->access$5002(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/OrientationManagerImpl;)Lcom/android/camera/app/OrientationManagerImpl;

    .line 2420
    :cond_6
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2421
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    const-string v9, "CameraActivity.onCreateTasks - Async : END"

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2423
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v8}, Landroid/os/ConditionVariable;->open()V

    .line 2425
    const/4 v8, 0x0

    return-object v8

    .line 2318
    .end local v1    # "appUpgrader":Lcom/android/camera/settings/AppUpgrader;
    .end local v6    # "useDualCam":Z
    :cond_7
    :try_start_1
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    const-string v9, "secure_camera"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/camera/CameraActivity;->access$1702(Lcom/android/camera/CameraActivity;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2423
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "async_profile":Lcom/android/camera/stats/profiler/Profile;
    .end local v4    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/android/camera/CameraActivity$16;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v9}, Landroid/os/ConditionVariable;->open()V

    throw v8

    .line 2329
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "async_profile":Lcom/android/camera/stats/profiler/Profile;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_8
    :try_start_2
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 2330
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    .line 2331
    const-string v8, "CameraController.get"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2334
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 2343
    .restart local v1    # "appUpgrader":Lcom/android/camera/settings/AppUpgrader;
    .restart local v6    # "useDualCam":Z
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 2373
    :cond_b
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isHAL3Enabled()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2374
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_4

    .line 2375
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 2376
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "PhotoModule"

    invoke-static {v9}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "pref_camera_id_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2378
    .local v7, "warmStartCameraId":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 2379
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v8}, Lcom/android/camera/CameraActivity;->access$5000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/OrientationManagerImpl;

    move-result-object v8

    if-nez v8, :cond_c

    .line 2380
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    new-instance v9, Lcom/android/camera/app/OrientationManagerImpl;

    iget-object v10, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v11, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v11}, Lcom/android/camera/CameraActivity;->access$5100(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/camera/app/OrientationManagerImpl;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    invoke-static {v8, v9}, Lcom/android/camera/CameraActivity;->access$5002(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/OrientationManagerImpl;)Lcom/android/camera/app/OrientationManagerImpl;

    .line 2382
    :cond_c
    const-string v8, "mOrientationManager.init"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2384
    const/4 v5, 0x0

    .line 2385
    .local v5, "slaveCameraId":Lcom/android/camera/device/CameraId;
    if-eqz v6, :cond_d

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v8

    sget-object v9, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v8, v9, :cond_d

    .line 2386
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "pref_dual_cam_controller_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2387
    .local v3, "dualCamControlValue":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dualCamControlValue : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2388
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0803e8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2389
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/app/OneCameraController;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    .line 2390
    :goto_5
    const-string v8, "init slave camera id done"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2393
    .end local v3    # "dualCamControlValue":Ljava/lang/String;
    :cond_d
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slaveCameraId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2394
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getOneCameraController()Lcom/android/camera/app/OneCameraController;

    move-result-object v8

    invoke-static {v7}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lcom/android/camera/app/OneCameraController;->warmStartCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;)V

    .line 2395
    const-string v8, "Warmup Camera done"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2389
    .restart local v3    # "dualCamControlValue":Ljava/lang/String;
    :cond_e
    const/4 v5, 0x0

    goto :goto_5

    .line 2399
    .end local v3    # "dualCamControlValue":Ljava/lang/String;
    .end local v5    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    .end local v7    # "warmStartCameraId":I
    :cond_f
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_4

    .line 2400
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 2401
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "PhotoModule"

    invoke-static {v9}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "pref_camera_id_key"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2402
    .restart local v7    # "warmStartCameraId":I
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Warm start Camera : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2403
    const/4 v8, -0x1

    if-eq v7, v8, :cond_10

    .line 2404
    iget-object v8, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/CameraActivity$16;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v9

    invoke-virtual {v8, v7, v9}, Lcom/android/camera/app/CameraController;->warmStartCamera(IZ)V

    .line 2406
    :cond_10
    const-string v8, "Warmup Camera done"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4
.end method
