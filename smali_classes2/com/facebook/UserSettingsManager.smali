.class final Lcom/facebook/UserSettingsManager;
.super Ljava/lang/Object;
.source "UserSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/UserSettingsManager$UserSetting;
    }
.end annotation


# static fields
.field private static final ADVERTISER_ID_KEY:Ljava/lang/String; = "advertiser_id"

.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final EVENTS_CODELESS_SETUP_ENABLED:Ljava/lang/String; = "auto_event_setup_enabled"

.field private static final LAST_TIMESTAMP:Ljava/lang/String; = "last_timestamp"

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_7D:J = 0x240c8400L

.field private static final USER_SETTINGS:Ljava/lang/String; = "com.facebook.sdk.USER_SETTINGS"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static advertiserIDCollectionEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

.field private static autoLogAppEventsEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

.field private static codelessSetupEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

.field private static isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static userSettingPref:Landroid/content/SharedPreferences;

.field private static userSettingPrefEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const-class v0, Lcom/facebook/UserSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/UserSettingsManager;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/UserSettingsManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Lcom/facebook/UserSettingsManager$UserSetting;

    const-string v1, "com.facebook.sdk.AutoLogAppEventsEnabled"

    const-string v2, "com.facebook.sdk.AutoLogAppEventsEnabled"

    invoke-direct {v0, v4, v1, v2}, Lcom/facebook/UserSettingsManager$UserSetting;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/UserSettingsManager;->autoLogAppEventsEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    .line 58
    new-instance v0, Lcom/facebook/UserSettingsManager$UserSetting;

    const-string v1, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    const-string v2, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    invoke-direct {v0, v4, v1, v2}, Lcom/facebook/UserSettingsManager$UserSetting;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/UserSettingsManager;->advertiserIDCollectionEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    .line 62
    new-instance v0, Lcom/facebook/UserSettingsManager$UserSetting;

    const-string v1, "auto_event_setup_enabled"

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/UserSettingsManager$UserSetting;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/UserSettingsManager;->codelessSetupEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/facebook/UserSettingsManager$UserSetting;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/UserSettingsManager;->advertiserIDCollectionEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    return-object v0
.end method

.method static synthetic access$100()Lcom/facebook/UserSettingsManager$UserSetting;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/UserSettingsManager;->codelessSetupEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/UserSettingsManager$UserSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/UserSettingsManager$UserSetting;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->writeSettingToCache(Lcom/facebook/UserSettingsManager$UserSetting;)V

    return-void
.end method

.method public static getAdvertiserIDCollectionEnabled()Z
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/facebook/UserSettingsManager;->initializeIfNotInitialized()V

    .line 241
    sget-object v0, Lcom/facebook/UserSettingsManager;->advertiserIDCollectionEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-virtual {v0}, Lcom/facebook/UserSettingsManager$UserSetting;->getValue()Z

    move-result v0

    return v0
.end method

.method public static getAutoLogAppEventsEnabled()Z
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Lcom/facebook/UserSettingsManager;->initializeIfNotInitialized()V

    .line 226
    sget-object v0, Lcom/facebook/UserSettingsManager;->autoLogAppEventsEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-virtual {v0}, Lcom/facebook/UserSettingsManager$UserSetting;->getValue()Z

    move-result v0

    return v0
.end method

.method public static getCodelessSetupEnabled()Z
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/facebook/UserSettingsManager;->initializeIfNotInitialized()V

    .line 246
    sget-object v0, Lcom/facebook/UserSettingsManager;->codelessSetupEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-virtual {v0}, Lcom/facebook/UserSettingsManager$UserSetting;->getValue()Z

    move-result v0

    return v0
.end method

.method private static initializeCodelessSepupEnabledAsync()V
    .locals 6

    .prologue
    .line 111
    sget-object v2, Lcom/facebook/UserSettingsManager;->codelessSetupEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-static {v2}, Lcom/facebook/UserSettingsManager;->readSettingFromCache(Lcom/facebook/UserSettingsManager$UserSetting;)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 113
    .local v0, "currTime":J
    sget-object v2, Lcom/facebook/UserSettingsManager;->codelessSetupEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    iget-object v2, v2, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/facebook/UserSettingsManager;->codelessSetupEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    iget-wide v2, v2, Lcom/facebook/UserSettingsManager$UserSetting;->lastTS:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x240c8400

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 156
    :goto_0
    return-void

    .line 116
    :cond_0
    sget-object v2, Lcom/facebook/UserSettingsManager;->codelessSetupEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    .line 117
    sget-object v2, Lcom/facebook/UserSettingsManager;->codelessSetupEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/facebook/UserSettingsManager$UserSetting;->lastTS:J

    .line 121
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/UserSettingsManager$1;

    invoke-direct {v3, v0, v1}, Lcom/facebook/UserSettingsManager$1;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static initializeIfNotInitialized()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    sget-object v0, Lcom/facebook/UserSettingsManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.sdk.USER_SETTINGS"

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/UserSettingsManager;->userSettingPref:Landroid/content/SharedPreferences;

    .line 87
    sget-object v0, Lcom/facebook/UserSettingsManager;->userSettingPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/facebook/UserSettingsManager;->userSettingPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 89
    sget-object v0, Lcom/facebook/UserSettingsManager;->autoLogAppEventsEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-static {v0}, Lcom/facebook/UserSettingsManager;->initializeUserSetting(Lcom/facebook/UserSettingsManager$UserSetting;)V

    .line 90
    sget-object v0, Lcom/facebook/UserSettingsManager;->advertiserIDCollectionEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-static {v0}, Lcom/facebook/UserSettingsManager;->initializeUserSetting(Lcom/facebook/UserSettingsManager$UserSetting;)V

    .line 91
    invoke-static {}, Lcom/facebook/UserSettingsManager;->initializeCodelessSepupEnabledAsync()V

    goto :goto_0
.end method

.method private static initializeUserSetting(Lcom/facebook/UserSettingsManager$UserSetting;)V
    .locals 1
    .param p0, "userSetting"    # Lcom/facebook/UserSettingsManager$UserSetting;

    .prologue
    .line 95
    sget-object v0, Lcom/facebook/UserSettingsManager;->codelessSetupEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    if-ne p0, v0, :cond_1

    .line 96
    invoke-static {}, Lcom/facebook/UserSettingsManager;->initializeCodelessSepupEnabledAsync()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 99
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->readSettingFromCache(Lcom/facebook/UserSettingsManager$UserSetting;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/UserSettingsManager$UserSetting;->keyInManifest:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->loadSettingFromManifest(Lcom/facebook/UserSettingsManager$UserSetting;)V

    goto :goto_0

    .line 105
    :cond_2
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->writeSettingToCache(Lcom/facebook/UserSettingsManager$UserSetting;)V

    goto :goto_0
.end method

.method private static loadSettingFromManifest(Lcom/facebook/UserSettingsManager$UserSetting;)V
    .locals 5
    .param p0, "userSetting"    # Lcom/facebook/UserSettingsManager$UserSetting;

    .prologue
    .line 187
    invoke-static {}, Lcom/facebook/UserSettingsManager;->validateInitialized()V

    .line 189
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 192
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 191
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 194
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/facebook/UserSettingsManager$UserSetting;->keyInManifest:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/facebook/UserSettingsManager$UserSetting;->keyInManifest:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/facebook/UserSettingsManager$UserSetting;->defaultVal:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/facebook/UserSettingsManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static readSettingFromCache(Lcom/facebook/UserSettingsManager$UserSetting;)V
    .locals 6
    .param p0, "userSetting"    # Lcom/facebook/UserSettingsManager$UserSetting;

    .prologue
    .line 173
    invoke-static {}, Lcom/facebook/UserSettingsManager;->validateInitialized()V

    .line 175
    :try_start_0
    sget-object v3, Lcom/facebook/UserSettingsManager;->userSettingPref:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/facebook/UserSettingsManager$UserSetting;->keyInCache:Ljava/lang/String;

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "settingStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "setting":Lorg/json/JSONObject;
    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    .line 179
    const-string v3, "last_timestamp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/UserSettingsManager$UserSetting;->lastTS:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1    # "setting":Lorg/json/JSONObject;
    .end local v2    # "settingStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "je":Lorg/json/JSONException;
    sget-object v3, Lcom/facebook/UserSettingsManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static setAdvertiserIDCollectionEnabled(Z)V
    .locals 4
    .param p0, "flag"    # Z

    .prologue
    .line 230
    sget-object v0, Lcom/facebook/UserSettingsManager;->advertiserIDCollectionEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    .line 231
    sget-object v0, Lcom/facebook/UserSettingsManager;->advertiserIDCollectionEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/facebook/UserSettingsManager$UserSetting;->lastTS:J

    .line 232
    sget-object v0, Lcom/facebook/UserSettingsManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/facebook/UserSettingsManager;->advertiserIDCollectionEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-static {v0}, Lcom/facebook/UserSettingsManager;->writeSettingToCache(Lcom/facebook/UserSettingsManager$UserSetting;)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-static {}, Lcom/facebook/UserSettingsManager;->initializeIfNotInitialized()V

    goto :goto_0
.end method

.method public static setAutoLogAppEventsEnabled(Z)V
    .locals 4
    .param p0, "flag"    # Z

    .prologue
    .line 215
    sget-object v0, Lcom/facebook/UserSettingsManager;->autoLogAppEventsEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    .line 216
    sget-object v0, Lcom/facebook/UserSettingsManager;->autoLogAppEventsEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/facebook/UserSettingsManager$UserSetting;->lastTS:J

    .line 217
    sget-object v0, Lcom/facebook/UserSettingsManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/facebook/UserSettingsManager;->autoLogAppEventsEnabled:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-static {v0}, Lcom/facebook/UserSettingsManager;->writeSettingToCache(Lcom/facebook/UserSettingsManager$UserSetting;)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-static {}, Lcom/facebook/UserSettingsManager;->initializeIfNotInitialized()V

    goto :goto_0
.end method

.method private static validateInitialized()V
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/facebook/UserSettingsManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/facebook/FacebookSdkNotInitializedException;

    const-string v1, "The UserSettingManager has not been initialized successfully"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookSdkNotInitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    return-void
.end method

.method private static writeSettingToCache(Lcom/facebook/UserSettingsManager$UserSetting;)V
    .locals 6
    .param p0, "userSetting"    # Lcom/facebook/UserSettingsManager$UserSetting;

    .prologue
    .line 159
    invoke-static {}, Lcom/facebook/UserSettingsManager;->validateInitialized()V

    .line 161
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 162
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "value"

    iget-object v3, p0, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v2, "last_timestamp"

    iget-wide v4, p0, Lcom/facebook/UserSettingsManager$UserSetting;->lastTS:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 164
    sget-object v2, Lcom/facebook/UserSettingsManager;->userSettingPrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/facebook/UserSettingsManager$UserSetting;->keyInCache:Ljava/lang/String;

    .line 165
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 166
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "je":Lorg/json/JSONException;
    sget-object v2, Lcom/facebook/UserSettingsManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
