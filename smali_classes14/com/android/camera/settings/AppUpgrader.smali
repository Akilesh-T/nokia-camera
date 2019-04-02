.class public Lcom/android/camera/settings/AppUpgrader;
.super Lcom/android/camera/settings/SettingsUpgrader;
.source "AppUpgrader.java"


# static fields
.field public static final APP_UPGRADE_VERSION:I = 0x7

.field public static final APP_UPGRADE_VERSION_OCCUPIED_BY_HAL1_ROO:I = 0xc

.field private static final CAMERA_MODULE_SETTINGS_FILES_RENAMED_VERSION:I = 0x6

.field private static final CAMERA_SETTINGS_SELECTED_MODULE_INDEX:I = 0x5

.field private static final CAMERA_SETTINGS_STRINGS_UPGRADE:I = 0x5

.field private static final CAMERA_SIZE_SETTING_UPGRADE_VERSION:I = 0x3

.field private static final FORCE_LOCATION_CHOICE_VERSION:I = 0x2

.field public static final NEEDS_N5_16by9_RESOLUTION_SWAP:I = 0x7

.field private static final OLD_CAMERA_PREFERENCES_PREFIX:Ljava/lang/String; = "_preferences_"

.field private static final OLD_GLOBAL_PREFERENCES_FILENAME:Ljava/lang/String; = "_preferences_camera"

.field private static final OLD_KEY_UPGRADE_VERSION:Ljava/lang/String; = "pref_strict_upgrade_version"

.field private static final OLD_MODULE_PREFERENCES_PREFIX:Ljava/lang/String; = "_preferences_module_"

.field public static final SETTING_RESOLUTION_OPTION_DYNAMIC:Ljava/lang/String; = "dynamic"

.field public static final SETTING_RESOLUTION_OPTION_STATIC_ES2:Ljava/lang/String; = "static_es2"

.field public static final SETTING_RESOLUTION_OPTION_STATIC_FRT:Ljava/lang/String; = "static_frt"

.field public static SettingResolutionOptionMode:Ljava/lang/String;

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAppController:Lcom/android/camera/app/AppController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "AppUpgrader"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/settings/AppUpgrader;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 105
    const-string v0, ""

    sput-object v0, Lcom/android/camera/settings/AppUpgrader;->SettingResolutionOptionMode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 2
    .param p1, "appController"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 110
    const-string v0, "pref_upgrade_version"

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/android/camera/settings/SettingsUpgrader;-><init>(Ljava/lang/String;I)V

    .line 111
    iput-object p1, p0, Lcom/android/camera/settings/AppUpgrader;->mAppController:Lcom/android/camera/app/AppController;

    .line 112
    return-void
.end method

.method private copyPreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 12
    .param p1, "oldPrefs"    # Landroid/content/SharedPreferences;
    .param p2, "newPrefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 426
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 427
    .local v1, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 428
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 429
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 430
    .local v5, "value":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 431
    sget-object v9, Lcom/android/camera/settings/AppUpgrader;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "skipped upgrade and removing entry for null key "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 432
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 433
    :cond_0
    instance-of v9, v5, Ljava/lang/Boolean;

    if-eqz v9, :cond_1

    .line 434
    check-cast v5, Ljava/lang/Boolean;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Lcom/android/camera/settings/SettingsManager;->convert(Z)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "boolValue":Ljava/lang/String;
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 436
    .end local v0    # "boolValue":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v9, v5, Ljava/lang/Integer;

    if-eqz v9, :cond_2

    .line 437
    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/android/camera/settings/SettingsManager;->convert(I)Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "intValue":Ljava/lang/String;
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 439
    .end local v3    # "intValue":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v9, v5, Ljava/lang/Long;

    if-eqz v9, :cond_4

    .line 443
    check-cast v5, Ljava/lang/Long;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 444
    .local v6, "longValue":J
    const-wide/32 v10, 0x7fffffff

    cmp-long v9, v6, v10

    if-gtz v9, :cond_3

    const-wide/32 v10, -0x80000000

    cmp-long v9, v6, v10

    if-ltz v9, :cond_3

    .line 445
    long-to-int v9, v6

    invoke-static {v9}, Lcom/android/camera/settings/SettingsManager;->convert(I)Ljava/lang/String;

    move-result-object v3

    .line 446
    .restart local v3    # "intValue":Ljava/lang/String;
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 448
    .end local v3    # "intValue":Ljava/lang/String;
    :cond_3
    sget-object v9, Lcom/android/camera/settings/AppUpgrader;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "skipped upgrade for out of bounds long key "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    .end local v6    # "longValue":J
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v9, v5, Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 452
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    check-cast v5, Ljava/lang/String;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-interface {v9, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 454
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_5
    sget-object v9, Lcom/android/camera/settings/AppUpgrader;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "skipped upgrade and removing entry for unrecognized key type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 455
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 454
    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 456
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 459
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_6
    return-void
.end method

.method private forceAllowNetworkChoice(Lcom/android/camera/settings/SettingsManager;)V
    .locals 5
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 345
    const-string v2, "_preferences_camera"

    .line 346
    invoke-virtual {p1, v2}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 347
    .local v1, "oldGlobalPreferences":Landroid/content/SharedPreferences;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_user_agreement_key"

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    const-string v2, "default_scope"

    const-string v3, "pref_camera_user_agreement_key"

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    const-string v2, "default_scope"

    const-string v3, "pref_camera_user_agreement_key"

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    const-string v2, "pref_camera_user_agreement_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    const-string v2, "pref_camera_user_agreement_key"

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/settings/AppUpgrader;->removeString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "allowNetwork":Ljava/lang/String;
    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    const-string v2, "default_scope"

    const-string v3, "pref_camera_user_agreement_key"

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private forceLocationChoice(Lcom/android/camera/settings/SettingsManager;)V
    .locals 5
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 320
    const-string v2, "_preferences_camera"

    .line 321
    invoke-virtual {p1, v2}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 325
    .local v1, "oldGlobalPreferences":Landroid/content/SharedPreferences;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_recordlocation_key"

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    const-string v2, "default_scope"

    const-string v3, "pref_camera_recordlocation_key"

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    const-string v2, "default_scope"

    const-string v3, "pref_camera_recordlocation_key"

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    const-string v2, "pref_camera_recordlocation_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    const-string v2, "pref_camera_recordlocation_key"

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/settings/AppUpgrader;->removeString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "location":Ljava/lang/String;
    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    const-string v2, "default_scope"

    const-string v3, "pref_camera_recordlocation_key"

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static getSettingOptionMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    sget-object v0, Lcom/android/camera/settings/AppUpgrader;->SettingResolutionOptionMode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 364
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getResolutionMode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/settings/AppUpgrader;->SettingResolutionOptionMode:Ljava/lang/String;

    .line 366
    :cond_0
    sget-object v0, Lcom/android/camera/settings/AppUpgrader;->SettingResolutionOptionMode:Ljava/lang/String;

    return-object v0
.end method

.method private updateN516by9ResolutionIfNeeded(Lcom/android/camera/settings/SettingsManager;)V
    .locals 4
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 541
    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-nez v1, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    const-string v1, "default_scope"

    const-string v2, "pref_camera_picturesize_back_key"

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "pictureSize":Ljava/lang/String;
    const-string v1, "1836x3264"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    sget-object v1, Lcom/android/camera/settings/AppUpgrader;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Swapped dimensions on N5 16:9 resolution."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 549
    const-string v1, "default_scope"

    const-string v2, "pref_camera_picturesize_back_key"

    const-string v3, "3264x1836"

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upgradeCameraSettingsFiles(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    .line 468
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "cameraIds":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_preferences_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 472
    invoke-virtual {p1, v4}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 474
    .local v3, "oldCameraPreferences":Landroid/content/SharedPreferences;
    aget-object v4, v0, v1

    .line 476
    invoke-static {v4}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 475
    invoke-virtual {p1, v4}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 478
    .local v2, "newCameraPreferences":Landroid/content/SharedPreferences;
    invoke-direct {p0, v3, v2}, Lcom/android/camera/settings/AppUpgrader;->copyPreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    .end local v2    # "newCameraPreferences":Landroid/content/SharedPreferences;
    .end local v3    # "oldCameraPreferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private upgradeCameraSizeSetting(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraDeviceInfo;Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;)V
    .locals 8
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "infos"    # Lcom/android/ex/camera2/portability/CameraDeviceInfo;
    .param p4, "facing"    # Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    .prologue
    .line 375
    sget-object v6, Lcom/android/camera/settings/SettingsUtil;->CAMERA_FACING_FRONT:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    if-ne p4, v6, :cond_1

    .line 376
    const-string v1, "pref_camera_picturesize_front_key"

    .line 388
    .local v1, "key":Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_3

    .line 389
    const-string v6, "default_scope"

    invoke-virtual {p1, v6, v1}, Lcom/android/camera/settings/SettingsManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 377
    :cond_1
    sget-object v6, Lcom/android/camera/settings/SettingsUtil;->CAMERA_FACING_BACK:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    if-ne p4, v6, :cond_2

    .line 378
    const-string v1, "pref_camera_picturesize_back_key"

    .restart local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 380
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/android/camera/settings/AppUpgrader;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "Ignoring attempt to upgrade size of unhandled camera facing direction"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 393
    .restart local v1    # "key":Ljava/lang/String;
    :cond_3
    const-string v6, "default_scope"

    invoke-virtual {p1, v6, v1}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "pictureSize":Ljava/lang/String;
    invoke-static {p3, p4}, Lcom/android/camera/settings/SettingsUtil;->getCameraId(Lcom/android/ex/camera2/portability/CameraDeviceInfo;Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;)I

    move-result v0

    .line 395
    .local v0, "camera":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 396
    invoke-static {v0, p2}, Lcom/android/camera/settings/CameraPictureSizesCacher;->getSizesForCamera(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 397
    .local v5, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    if-eqz v5, :cond_0

    .line 398
    invoke-static {}, Lcom/android/camera/settings/AppUpgrader;->getSettingOptionMode()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "productConfig":Ljava/lang/String;
    const-string v6, "static_frt"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p3}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getFirstFrontCameraId()I

    move-result v6

    if-ne v0, v6, :cond_4

    .line 401
    new-instance v4, Lcom/android/camera/util/Size;

    const/16 v6, 0x640

    const/16 v7, 0x4b0

    invoke-direct {v4, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 407
    .local v4, "size":Lcom/android/camera/util/Size;
    :goto_2
    const-string v6, "default_scope"

    .line 408
    invoke-static {v4}, Lcom/android/camera/settings/SettingsUtil;->sizeToSettingString(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v7

    .line 407
    invoke-virtual {p1, v6, v1, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 402
    .end local v4    # "size":Lcom/android/camera/util/Size;
    :cond_4
    const-string v6, "static_es2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p3}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getFirstBackCameraId()I

    move-result v6

    if-ne v0, v6, :cond_5

    .line 403
    new-instance v4, Lcom/android/camera/util/Size;

    const/16 v6, 0x1040

    const/16 v7, 0xc30

    invoke-direct {v4, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    .restart local v4    # "size":Lcom/android/camera/util/Size;
    goto :goto_2

    .line 405
    .end local v4    # "size":Lcom/android/camera/util/Size;
    :cond_5
    invoke-static {v2, v5, v0}, Lcom/android/camera/settings/SettingsUtil;->getPhotoSize(Ljava/lang/String;Ljava/util/List;I)Lcom/android/camera/util/Size;

    move-result-object v4

    .restart local v4    # "size":Lcom/android/camera/util/Size;
    goto :goto_2
.end method

.method private upgradeFromHal1(I)Z
    .locals 1
    .param p1, "lastVersion"    # I

    .prologue
    .line 188
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->supportUpgradeFromHAL1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private upgradeModuleSettingsFiles(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;Lcom/android/camera/app/AppController;)V
    .locals 8
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 484
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 486
    .local v3, "moduleIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_1

    .line 487
    aget v6, v3, v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "moduleId":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_preferences_module_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 489
    invoke-virtual {p1, v6}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 492
    .local v5, "oldModulePreferences":Landroid/content/SharedPreferences;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 494
    invoke-interface {p3}, Lcom/android/camera/app/AppController;->getModuleManager()Lcom/android/camera/app/ModuleManager;

    move-result-object v6

    aget v7, v3, v1

    invoke-interface {v6, v7}, Lcom/android/camera/app/ModuleManager;->getModuleAgent(I)Lcom/android/camera/app/ModuleManager$ModuleAgent;

    move-result-object v0

    .line 495
    .local v0, "agent":Lcom/android/camera/app/ModuleManager$ModuleAgent;
    if-eqz v0, :cond_0

    .line 497
    invoke-interface {v0}, Lcom/android/camera/app/ModuleManager$ModuleAgent;->getScopeNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 496
    invoke-virtual {p1, v6}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 499
    .local v4, "newModulePreferences":Landroid/content/SharedPreferences;
    invoke-direct {p0, v5, v4}, Lcom/android/camera/settings/AppUpgrader;->copyPreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 486
    .end local v0    # "agent":Lcom/android/camera/app/ModuleManager$ModuleAgent;
    .end local v4    # "newModulePreferences":Landroid/content/SharedPreferences;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    .end local v2    # "moduleId":Ljava/lang/String;
    .end local v5    # "oldModulePreferences":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method private upgradeSelectedModeIndex(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 512
    const/4 v2, 0x6

    .line 513
    .local v2, "oldGcamIndex":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 515
    .local v0, "gcamIndex":I
    const-string v4, "default_scope"

    const-string v5, "pref_camera_module_last_used_index"

    invoke-virtual {p1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 517
    .local v1, "lastUsedCameraIndex":I
    if-ne v1, v2, :cond_0

    .line 518
    const-string v4, "default_scope"

    const-string v5, "pref_camera_module_last_used_index"

    invoke-virtual {p1, v4, v5, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 522
    :cond_0
    const-string v4, "default_scope"

    const-string v5, "camera.startup_module"

    invoke-virtual {p1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 524
    .local v3, "startupModuleIndex":I
    if-ne v3, v2, :cond_1

    .line 525
    const-string v4, "default_scope"

    const-string v5, "camera.startup_module"

    invoke-virtual {p1, v4, v5, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 528
    :cond_1
    return-void
.end method

.method private upgradeTypesToStrings(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;)V
    .locals 22
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/settings/SettingsManager;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 201
    .local v5, "defaultPreferences":Landroid/content/SharedPreferences;
    const-string v18, "_preferences_camera"

    .line 202
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 205
    .local v12, "oldGlobalPreferences":Landroid/content/SharedPreferences;
    const-string v18, "pref_camera_recordlocation_key"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 206
    const-string v18, "pref_camera_recordlocation_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v10

    .line 207
    .local v10, "location":Z
    const-string v18, "default_scope"

    const-string v19, "pref_camera_recordlocation_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 210
    .end local v10    # "location":Z
    :cond_0
    const-string v18, "pref_camera_user_agreement_key"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 211
    const-string v18, "pref_camera_user_agreement_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    .line 212
    .local v4, "allowNetwork":Z
    const-string v18, "default_scope"

    const-string v19, "pref_camera_user_agreement_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 216
    .end local v4    # "allowNetwork":Z
    :cond_1
    const-string v18, "pref_user_selected_aspect_ratio"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 217
    const-string v18, "pref_user_selected_aspect_ratio"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v16

    .line 219
    .local v16, "userSelectedAspectRatio":Z
    const-string v18, "default_scope"

    const-string v19, "pref_user_selected_aspect_ratio"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 224
    .end local v16    # "userSelectedAspectRatio":Z
    :cond_2
    const-string v18, "pref_camera_exposure_compensation_key"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 225
    const-string v18, "pref_camera_exposure_compensation_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v11

    .line 227
    .local v11, "manualExposureCompensationEnabled":Z
    const-string v18, "default_scope"

    const-string v19, "pref_camera_exposure_compensation_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 232
    .end local v11    # "manualExposureCompensationEnabled":Z
    :cond_3
    const-string v18, "pref_camera_zsl_key"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 233
    const-string v18, "pref_camera_zsl_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v17

    .line 235
    .local v17, "zslEnabled":Z
    const-string v18, "default_scope"

    const-string v19, "pref_camera_zsl_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    .end local v17    # "zslEnabled":Z
    :cond_4
    const-string v18, "pref_camera_first_use_hint_shown_key"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 241
    const-string v18, "pref_camera_first_use_hint_shown_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v8

    .line 242
    .local v8, "hint":Z
    const-string v18, "default_scope"

    const-string v19, "pref_camera_first_use_hint_shown_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 247
    .end local v8    # "hint":Z
    :cond_5
    const-string v18, "camera.startup_module"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 248
    const-string v18, "camera.startup_module"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/settings/AppUpgrader;->removeInteger(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v15

    .line 250
    .local v15, "startupModuleIndex":I
    const-string v18, "default_scope"

    const-string v19, "camera.startup_module"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    .end local v15    # "startupModuleIndex":I
    :cond_6
    const-string v18, "pref_camera_module_last_used_index"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 256
    const-string v18, "pref_camera_module_last_used_index"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/settings/AppUpgrader;->removeInteger(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v9

    .line 258
    .local v9, "lastCameraUsedModuleIndex":I
    const-string v18, "default_scope"

    const-string v19, "pref_camera_module_last_used_index"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 264
    .end local v9    # "lastCameraUsedModuleIndex":I
    :cond_7
    const-string v18, "pref_flash_supported_back_camera"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 265
    const-string v18, "pref_flash_supported_back_camera"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v6

    .line 267
    .local v6, "flashSupportedBackCamera":Z
    if-eqz v6, :cond_8

    .line 268
    const-string v18, "default_scope"

    const-string v19, "pref_flash_supported_back_camera"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 274
    .end local v6    # "flashSupportedBackCamera":Z
    :cond_8
    const-string v18, "pref_should_show_refocus_viewer_cling"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 275
    const-string v18, "pref_should_show_refocus_viewer_cling"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v13

    .line 277
    .local v13, "shouldShowRefocusViewer":Z
    const-string v18, "default_scope"

    const-string v19, "pref_should_show_refocus_viewer_cling"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 282
    .end local v13    # "shouldShowRefocusViewer":Z
    :cond_9
    const-string v18, "pref_should_show_settings_button_cling"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 283
    const-string v18, "pref_should_show_settings_button_cling"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v14

    .line 285
    .local v14, "shouldShowSettingsButtonCling":Z
    const-string v18, "default_scope"

    const-string v19, "pref_should_show_settings_button_cling"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 290
    .end local v14    # "shouldShowSettingsButtonCling":Z
    :cond_a
    const-string v18, "pref_camera_hdr_plus_key"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 291
    const-string v18, "pref_camera_hdr_plus_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lcom/android/camera/settings/AppUpgrader;->removeString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, "hdrPlus":Ljava/lang/String;
    const-string v18, "on"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 293
    const-string v18, "default_scope"

    const-string v19, "pref_camera_hdr_plus_key"

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 298
    .end local v7    # "hdrPlus":Ljava/lang/String;
    :cond_b
    const-string v18, "pref_camera_hdr_key"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 299
    const-string v18, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lcom/android/camera/settings/AppUpgrader;->removeString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 300
    .restart local v7    # "hdrPlus":Ljava/lang/String;
    const-string v18, "on"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 301
    const-string v18, "default_scope"

    const-string v19, "pref_camera_hdr_key"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080435

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v7    # "hdrPlus":Ljava/lang/String;
    :cond_c
    const-string v18, "pref_camera_grid_lines"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 307
    const-string v18, "pref_camera_grid_lines"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lcom/android/camera/settings/AppUpgrader;->removeString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 308
    .restart local v7    # "hdrPlus":Ljava/lang/String;
    const-string v18, "on"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 309
    const-string v18, "default_scope"

    const-string v19, "pref_camera_grid_lines"

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 313
    .end local v7    # "hdrPlus":Ljava/lang/String;
    :cond_d
    return-void
.end method


# virtual methods
.method protected getLastVersion(Lcom/android/camera/settings/SettingsManager;)I
    .locals 5
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/android/camera/settings/SettingsManager;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 122
    .local v1, "defaultPreferences":Landroid/content/SharedPreferences;
    const-string v3, "pref_strict_upgrade_version"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 124
    .local v0, "allPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v3, "pref_strict_upgrade_version"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 125
    .local v2, "oldVersion":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_strict_upgrade_version"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 127
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "oldVersion":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 132
    .end local v0    # "allPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :goto_0
    return v3

    .line 128
    .restart local v0    # "allPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v2    # "oldVersion":Ljava/lang/Object;
    :cond_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 129
    check-cast v2, Ljava/lang/String;

    .end local v2    # "oldVersion":Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/camera/settings/SettingsManager;->convertToInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 132
    .end local v0    # "allPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/settings/SettingsUpgrader;->getLastVersion(Lcom/android/camera/settings/SettingsManager;)I

    move-result v3

    goto :goto_0
.end method

.method public upgrade(Lcom/android/camera/settings/SettingsManager;II)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "lastVersion"    # I
    .param p3, "currentVersion"    # I

    .prologue
    const/4 v5, 0x5

    .line 137
    iget-object v3, p0, Lcom/android/camera/settings/AppUpgrader;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    .local v0, "context":Landroid/content/Context;
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/camera/settings/AppUpgrader;->upgradeFromHal1(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    :cond_0
    const-string v3, "default_scope"

    const-string v4, "request_permission"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 142
    .local v2, "requestPermissions":Z
    invoke-static {v0}, Lcom/android/camera/settings/ResetDialogPreference;->resetPreferences(Landroid/content/Context;)V

    .line 143
    const-string v3, "default_scope"

    const-string v4, "request_permission"

    invoke-virtual {p1, v3, v4, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    .end local v2    # "requestPermissions":Z
    :cond_1
    if-lt p2, v5, :cond_2

    invoke-direct {p0, p2}, Lcom/android/camera/settings/AppUpgrader;->upgradeFromHal1(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 149
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/camera/settings/AppUpgrader;->upgradeTypesToStrings(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;)V

    .line 152
    :cond_3
    const/4 v3, 0x2

    if-lt p2, v3, :cond_4

    invoke-direct {p0, p2}, Lcom/android/camera/settings/AppUpgrader;->upgradeFromHal1(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 153
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/settings/AppUpgrader;->forceLocationChoice(Lcom/android/camera/settings/SettingsManager;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/android/camera/settings/AppUpgrader;->forceAllowNetworkChoice(Lcom/android/camera/settings/SettingsManager;)V

    .line 157
    :cond_5
    const/4 v3, 0x3

    if-lt p2, v3, :cond_6

    invoke-direct {p0, p2}, Lcom/android/camera/settings/AppUpgrader;->upgradeFromHal1(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 158
    :cond_6
    sget-object v3, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 159
    invoke-static {v0, v3}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->getAndroidCameraAgent(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v3

    .line 160
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    move-result-object v1

    .line 161
    .local v1, "infos":Lcom/android/ex/camera2/portability/CameraDeviceInfo;
    sget-object v3, Lcom/android/camera/settings/SettingsUtil;->CAMERA_FACING_FRONT:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/camera/settings/AppUpgrader;->upgradeCameraSizeSetting(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraDeviceInfo;Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;)V

    .line 163
    sget-object v3, Lcom/android/camera/settings/SettingsUtil;->CAMERA_FACING_BACK:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/camera/settings/AppUpgrader;->upgradeCameraSizeSetting(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraDeviceInfo;Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;)V

    .line 168
    const-string v3, "default_scope"

    const-string v4, "camera.startup_module"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/settings/SettingsManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .end local v1    # "infos":Lcom/android/ex/camera2/portability/CameraDeviceInfo;
    :cond_7
    const/4 v3, 0x6

    if-lt p2, v3, :cond_8

    invoke-direct {p0, p2}, Lcom/android/camera/settings/AppUpgrader;->upgradeFromHal1(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 173
    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/android/camera/settings/AppUpgrader;->upgradeCameraSettingsFiles(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;)V

    .line 174
    iget-object v3, p0, Lcom/android/camera/settings/AppUpgrader;->mAppController:Lcom/android/camera/app/AppController;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/camera/settings/AppUpgrader;->upgradeModuleSettingsFiles(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;Lcom/android/camera/app/AppController;)V

    .line 178
    :cond_9
    if-lt p2, v5, :cond_a

    invoke-direct {p0, p2}, Lcom/android/camera/settings/AppUpgrader;->upgradeFromHal1(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 179
    :cond_a
    invoke-direct {p0, p1, v0}, Lcom/android/camera/settings/AppUpgrader;->upgradeSelectedModeIndex(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;)V

    .line 182
    :cond_b
    const/4 v3, 0x7

    if-lt p2, v3, :cond_c

    invoke-direct {p0, p2}, Lcom/android/camera/settings/AppUpgrader;->upgradeFromHal1(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 183
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/camera/settings/AppUpgrader;->updateN516by9ResolutionIfNeeded(Lcom/android/camera/settings/SettingsManager;)V

    .line 185
    :cond_d
    return-void
.end method
