.class public Lcom/android/camera/settings/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final CAMERA_SCOPE_PREFIX:Ljava/lang/String; = "_preferences_camera_"

.field public static final MODULE_SCOPE_PREFIX:Ljava/lang/String; = "_preferences_module_"

.field public static final SCOPE_GLOBAL:Ljava/lang/String; = "default_scope"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCustomPreferences:Landroid/content/SharedPreferences;

.field private final mDefaultPreferences:Landroid/content/SharedPreferences;

.field private final mDefaultsStore:Lcom/android/camera/settings/DefaultsStore;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageName:Ljava/lang/String;

.field private final mSharedPreferenceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SettingsManager"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/settings/SettingsManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/android/camera/settings/DefaultsStore;

    invoke-direct {v0}, Lcom/android/camera/settings/DefaultsStore;-><init>()V

    iput-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultsStore:Lcom/android/camera/settings/DefaultsStore;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mListeners:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    .line 108
    iput-object p1, p0, Lcom/android/camera/settings/SettingsManager;->mContext:Landroid/content/Context;

    .line 109
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mPackageName:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    .line 112
    return-void
.end method

.method static convert(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 660
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static convert(Z)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 694
    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method static convertToBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 682
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static convertToInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 671
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cameraIdValue"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_preferences_camera_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "moduleScopeNamespace"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_preferences_camera_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    const-string v0, "default_scope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    monitor-exit v1

    .line 296
    :goto_0
    return-object v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0}, Lcom/android/camera/settings/SettingsManager;->closePreferences(Landroid/content/SharedPreferences;)V

    .line 295
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    .line 296
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    monitor-exit v1

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSharedPreferenceListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;

    .prologue
    .line 182
    new-instance v0, Lcom/android/camera/settings/SettingsManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/settings/SettingsManager$1;-><init>(Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    return-object v0
.end method

.method private setLocationTag(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 551
    new-instance v1, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 552
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "camera_location_tag"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v3, p0, Lcom/android/camera/settings/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 555
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v3, Lcom/android/camera/app/LocationManager;->LOCTAION_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_0
    return-void

    .line 556
    :catch_0
    move-exception v2

    .line 557
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/camera/settings/SettingsManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "#setLocationPreference catch IllegalArgumentException avoid unknown URI"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private strArrToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 698
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 708
    :goto_0
    return-object v2

    .line 699
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 700
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 702
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 704
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 707
    :cond_3
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 197
    if-nez p1, :cond_0

    .line 198
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "OnSettingChangedListener cannot be null."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 201
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    monitor-exit v2

    .line 217
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-direct {p0, p1}, Lcom/android/camera/settings/SettingsManager;->getSharedPreferenceListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object v0

    .line 208
    .local v0, "sharedPreferenceListener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 211
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 215
    :cond_2
    sget-object v1, Lcom/android/camera/settings/SettingsManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listeners: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public checkListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;

    .prologue
    .line 220
    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    goto :goto_0
.end method

.method protected closePreferences(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 157
    .local v0, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    .line 159
    .end local v0    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    return-void
.end method

.method public getBarCodeGooglelibExist(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/android/camera/settings/SettingsManager;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 736
    .local v0, "defaultPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    const/4 v1, 0x1

    .line 739
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/camera/settings/SettingsManager;->getBooleanDefault(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 425
    iget-object v3, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 426
    if-eqz p3, :cond_0

    :try_start_0
    const-string v0, "1"

    .line 427
    .local v0, "defaultValueString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/settings/SettingsManager;->convertToBoolean(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v3

    return v2

    .line 426
    .end local v0    # "defaultValueString":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 429
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getBooleanDefault(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 364
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultsStore:Lcom/android/camera/settings/DefaultsStore;

    invoke-virtual {v3, p1}, Lcom/android/camera/settings/DefaultsStore;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "defaultValueString":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    monitor-exit v2

    .line 365
    return v1

    .line 366
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 367
    .end local v0    # "defaultValueString":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDefaultPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    monitor-exit v1

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 454
    iget-object v4, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 455
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultsStore:Lcom/android/camera/settings/DefaultsStore;

    invoke-virtual {v5, p2}, Lcom/android/camera/settings/DefaultsStore;->getPossibleValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "possibleValues":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v5, v1

    if-nez v5, :cond_1

    .line 457
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No possible values for scope="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 477
    .end local v1    # "possibleValues":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 461
    .restart local v1    # "possibleValues":[Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_3

    .line 463
    aget-object v5, v1, v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 464
    monitor-exit v4

    .line 476
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 462
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_3
    sget-object v5, Lcom/android/camera/settings/SettingsManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current value for scope="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not in list of possible values"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 472
    sget-object v5, Lcom/android/camera/settings/SettingsManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reset value for scope="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 475
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {p0, p1, p2, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    goto :goto_1
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/camera/settings/SettingsManager;->getIntegerDefault(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I
    .locals 4
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 403
    iget-object v3, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 404
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "defaultValueString":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/settings/SettingsManager;->convertToInt(Ljava/lang/String;)I

    move-result v2

    monitor-exit v3

    return v2

    .line 407
    .end local v0    # "defaultValueString":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getIntegerDefault(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultsStore:Lcom/android/camera/settings/DefaultsStore;

    invoke-virtual {v1, p1}, Lcom/android/camera/settings/DefaultsStore;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "defaultValueString":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 356
    .end local v0    # "defaultValueString":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/camera/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v3, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 376
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 378
    .local v1, "preferences":Landroid/content/SharedPreferences;
    :try_start_1
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p3

    .end local p3    # "defaultValue":Ljava/lang/String;
    :try_start_2
    monitor-exit v3

    .line 382
    :goto_0
    return-object p3

    .line 379
    .restart local p3    # "defaultValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/ClassCastException;
    sget-object v2, Lcom/android/camera/settings/SettingsManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "existing preference with invalid type, removing and returning default"

    invoke-static {v2, v4, v0}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 382
    monitor-exit v3

    goto :goto_0

    .line 384
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local p3    # "defaultValue":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getStringDefault(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultsStore:Lcom/android/camera/settings/DefaultsStore;

    invoke-virtual {v0, p1}, Lcom/android/camera/settings/DefaultsStore;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getValueOfCurrentIndex(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 481
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultsStore:Lcom/android/camera/settings/DefaultsStore;

    invoke-virtual {v1, p2}, Lcom/android/camera/settings/DefaultsStore;->getPossibleValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "possibleValues":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 484
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No possible values for scope="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    .end local v0    # "possibleValues":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 488
    .restart local v0    # "possibleValues":[Ljava/lang/String;
    :cond_1
    if-ltz p3, :cond_2

    :try_start_1
    array-length v1, v0

    if-ge p3, v1, :cond_2

    .line 489
    aget-object v1, v0, p3

    monitor-exit v2

    return-object v1

    .line 491
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For possible values of scope="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", possibleValues="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 492
    invoke-direct {p0, v0}, Lcom/android/camera/settings/SettingsManager;->strArrToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public isDefault(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 635
    iget-object v3, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 636
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/camera/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "defaultValue":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v3

    return v2

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 639
    .end local v0    # "defaultValue":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isPossibleValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 498
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultsStore:Lcom/android/camera/settings/DefaultsStore;

    invoke-virtual {v2, p2}, Lcom/android/camera/settings/DefaultsStore;->getPossibleValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "possibleValues":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 500
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No possible values for scope="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 503
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 504
    aget-object v2, v1, v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 505
    const/4 v2, 0x1

    .line 508
    :goto_1
    return v2

    .line 503
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 624
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 625
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 626
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 627
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 6
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v3, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/camera/settings/SettingsManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 137
    .local v1, "preferences":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 138
    .local v0, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    .line 141
    .end local v0    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 140
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 646
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 647
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 648
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 649
    monitor-exit v2

    .line 650
    return-void

    .line 649
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAllListeners()V
    .locals 4

    .prologue
    .line 261
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 263
    .local v0, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    iget-object v3, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 265
    iget-object v3, p0, Lcom/android/camera/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_0

    .line 266
    iget-object v3, p0, Lcom/android/camera/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    .line 271
    .end local v0    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 269
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 270
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 271
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    return-void
.end method

.method public removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;

    .prologue
    .line 231
    iget-object v3, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 232
    if-nez p1, :cond_0

    .line 233
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 253
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 236
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    monitor-exit v3

    .line 254
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 241
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    .line 244
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 245
    .local v1, "sharedPreferenceListener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 246
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 249
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_2

    .line 250
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 253
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 567
    :try_start_0
    invoke-static {p3}, Lcom/android/camera/settings/SettingsManager;->convert(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    monitor-exit v1

    .line 569
    return-void

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 539
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 540
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 541
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 543
    const-string v1, "pref_camera_recordlocation_key"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    invoke-direct {p0, p3}, Lcom/android/camera/settings/SettingsManager;->setLocationTag(Ljava/lang/String;)V

    .line 547
    :cond_0
    monitor-exit v2

    .line 548
    return-void

    .line 547
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 577
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 578
    :try_start_0
    invoke-static {p3}, Lcom/android/camera/settings/SettingsManager;->convert(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    monitor-exit v1

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBarCodeGooglelibExist(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/camera/settings/SettingsManager;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 731
    .local v0, "defaultPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 732
    return-void
.end method

.method public setDefaults(Ljava/lang/String;I[I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .param p3, "possibleValues"    # [I

    .prologue
    .line 317
    iget-object v4, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 318
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "defaultValueString":Ljava/lang/String;
    array-length v3, p3

    new-array v2, v3, [Ljava/lang/String;

    .line 320
    .local v2, "possibleValuesString":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_0

    .line 321
    aget v3, p3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultsStore:Lcom/android/camera/settings/DefaultsStore;

    invoke-virtual {v3, p1, v0, v2}, Lcom/android/camera/settings/DefaultsStore;->storeDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 324
    monitor-exit v4

    .line 325
    return-void

    .line 324
    .end local v0    # "defaultValueString":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "possibleValuesString":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "possibleValues"    # [Ljava/lang/String;

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultsStore:Lcom/android/camera/settings/DefaultsStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/settings/DefaultsStore;->storeDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 308
    monitor-exit v1

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaults(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 333
    iget-object v3, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 334
    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "1"

    .line 335
    .local v0, "defaultValueString":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "0"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-string v4, "1"

    aput-object v4, v1, v2

    .line 336
    .local v1, "possibleValues":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultsStore:Lcom/android/camera/settings/DefaultsStore;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/camera/settings/DefaultsStore;->storeDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 337
    monitor-exit v3

    .line 338
    return-void

    .line 334
    .end local v0    # "defaultValueString":Ljava/lang/String;
    .end local v1    # "possibleValues":[Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setMirrorConfiguration(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isCNModel"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 718
    if-nez p1, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/settings/SettingsManager;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 720
    .local v0, "defaultPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 721
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public setToDefault(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 586
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/camera/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    monitor-exit v1

    .line 589
    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setToNextValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 512
    iget-object v6, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 513
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultsStore:Lcom/android/camera/settings/DefaultsStore;

    invoke-virtual {v5, p2}, Lcom/android/camera/settings/DefaultsStore;->getPossibleValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, "possibleValues":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-nez v5, :cond_1

    .line 515
    :cond_0
    monitor-exit v6

    .line 532
    :goto_0
    return-void

    .line 518
    :cond_1
    const/4 v1, 0x0

    .line 519
    .local v1, "index":I
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 520
    .local v4, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 521
    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 522
    move v1, v0

    .line 527
    :cond_2
    add-int/lit8 v5, v1, 0x1

    array-length v7, v3

    rem-int v2, v5, v7

    .line 528
    .local v2, "next_index":I
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 529
    aget-object v5, v3, v2

    invoke-virtual {p0, p1, p2, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_3
    monitor-exit v6

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "next_index":I
    .end local v3    # "possibleValues":[Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 520
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    .restart local v3    # "possibleValues":[Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setValueByIndex(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 604
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 605
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->mDefaultsStore:Lcom/android/camera/settings/DefaultsStore;

    invoke-virtual {v1, p2}, Lcom/android/camera/settings/DefaultsStore;->getPossibleValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "possibleValues":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 607
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No possible values for scope="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 617
    .end local v0    # "possibleValues":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 611
    .restart local v0    # "possibleValues":[Ljava/lang/String;
    :cond_0
    if-ltz p3, :cond_1

    :try_start_1
    array-length v1, v0

    if-ge p3, v1, :cond_1

    .line 612
    aget-object v1, v0, p3

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    monitor-exit v2

    .line 618
    return-void

    .line 614
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For possible values of scope="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", possibleValues="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 615
    invoke-direct {p0, v0}, Lcom/android/camera/settings/SettingsManager;->strArrToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method
