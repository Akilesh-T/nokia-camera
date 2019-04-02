.class public final Lcom/facebook/internal/FetchedAppSettingsManager;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;,
        Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;
    }
.end annotation


# static fields
.field private static final ADVERTISER_ID_KEY:Ljava/lang/String; = "advertiser_id"

.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final APP_SETTINGS_PREFS_KEY_FORMAT:Ljava/lang/String; = "com.facebook.internal.APP_SETTINGS.%s"

.field private static final APP_SETTINGS_PREFS_STORE:Ljava/lang/String; = "com.facebook.internal.preferences.APP_SETTINGS"

.field private static final APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES:Ljava/lang/String; = "android_sdk_error_categories"

.field private static final APP_SETTING_APP_EVENTS_EVENT_BINDINGS:Ljava/lang/String; = "auto_event_mapping_android"

.field private static final APP_SETTING_APP_EVENTS_FEATURE_BITMASK:Ljava/lang/String; = "app_events_feature_bitmask"

.field private static final APP_SETTING_APP_EVENTS_SESSION_TIMEOUT:Ljava/lang/String; = "app_events_session_timeout"

.field private static final APP_SETTING_CUSTOM_TABS_ENABLED:Ljava/lang/String; = "gdpv4_chrome_custom_tabs_enabled"

.field private static final APP_SETTING_DIALOG_CONFIGS:Ljava/lang/String; = "android_dialog_configs"

.field private static final APP_SETTING_FIELDS:[Ljava/lang/String;

.field private static final APP_SETTING_NUX_CONTENT:Ljava/lang/String; = "gdpv4_nux_content"

.field private static final APP_SETTING_NUX_ENABLED:Ljava/lang/String; = "gdpv4_nux_enabled"

.field private static final APP_SETTING_SMART_LOGIN_OPTIONS:Ljava/lang/String; = "seamless_login"

.field private static final APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING:Ljava/lang/String; = "supports_implicit_sdk_logging"

.field private static final AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD:I = 0x8

.field private static final CODELESS_EVENTS_ENABLED_BITMASK_FIELD:I = 0x20

.field private static final IAP_AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD:I = 0x10

.field private static final SDK_UPDATE_MESSAGE:Ljava/lang/String; = "sdk_update_message"

.field private static final SMART_LOGIN_BOOKMARK_ICON_URL:Ljava/lang/String; = "smart_login_bookmark_icon_url"

.field private static final SMART_LOGIN_MENU_ICON_URL:Ljava/lang/String; = "smart_login_menu_icon_url"

.field private static final TAG:Ljava/lang/String;

.field private static final TRACK_UNINSTALL_ENABLED_BITMASK_FIELD:I = 0x100

.field private static final fetchedAppSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final fetchedAppSettingsCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static isUnityInit:Z

.field private static final loadingState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;",
            ">;"
        }
    .end annotation
.end field

.field private static printedSDKUpdatedMessage:Z

.field private static unityEventBindings:Lorg/json/JSONArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    const-class v0, Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->TAG:Ljava/lang/String;

    .line 102
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "supports_implicit_sdk_logging"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "gdpv4_nux_content"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gdpv4_nux_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gdpv4_chrome_custom_tabs_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android_dialog_configs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android_sdk_error_categories"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "app_events_session_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "app_events_feature_bitmask"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "auto_event_mapping_android"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "seamless_login"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "smart_login_bookmark_icon_url"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "smart_login_menu_icon_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->APP_SETTING_FIELDS:[Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->NOT_LOADED:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettingsCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 126
    sput-boolean v3, Lcom/facebook/internal/FetchedAppSettingsManager;->printedSDKUpdatedMessage:Z

    .line 128
    sput-boolean v3, Lcom/facebook/internal/FetchedAppSettingsManager;->isUnityInit:Z

    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->unityEventBindings:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/facebook/internal/FetchedAppSettingsManager;->printedSDKUpdatedMessage:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 62
    sput-boolean p0, Lcom/facebook/internal/FetchedAppSettingsManager;->printedSDKUpdatedMessage:Z

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$600()V
    .locals 0

    .prologue
    .line 62
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->pollCallbacks()V

    return-void
.end method

.method public static getAppSettingsAsync(Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;

    .prologue
    .line 224
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettingsCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->loadAppSettingsAsync()V

    .line 226
    return-void
.end method

.method private static getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 357
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 358
    .local v1, "appSettingsParams":Landroid/os/Bundle;
    new-instance v0, Ljava/util/ArrayList;

    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager;->APP_SETTING_FIELDS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 364
    .local v0, "appSettingFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "fields"

    const-string v4, ","

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {v5, p0, v5}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 367
    .local v2, "request":Lcom/facebook/GraphRequest;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 368
    invoke-virtual {v2, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 370
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    return-object v3
.end method

.method public static getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 1
    .param p0, "applicationId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 214
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/FetchedAppSettings;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadAppSettingsAsync()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 133
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "applicationId":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    sget-object v4, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->pollCallbacks()V

    .line 209
    :goto_0
    return-void

    .line 139
    :cond_0
    sget-object v6, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    sget-object v4, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 141
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->pollCallbacks()V

    goto :goto_0

    .line 145
    :cond_1
    sget-object v6, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v7, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->NOT_LOADED:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    sget-object v8, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->LOADING:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v7, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    sget-object v8, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->LOADING:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 146
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v1, v5

    .line 148
    .local v1, "canStartLoading":Z
    :goto_1
    if-nez v1, :cond_4

    .line 149
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->pollCallbacks()V

    goto :goto_0

    .end local v1    # "canStartLoading":Z
    :cond_3
    move v1, v4

    .line 146
    goto :goto_1

    .line 153
    .restart local v1    # "canStartLoading":Z
    :cond_4
    const-string v6, "com.facebook.internal.APP_SETTINGS.%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "settingsKey":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/facebook/internal/FetchedAppSettingsManager$1;

    invoke-direct {v5, v2, v3, v0}, Lcom/facebook/internal/FetchedAppSettingsManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 21
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "settingsJSON"    # Lorg/json/JSONObject;

    .prologue
    .line 296
    const-string v3, "android_sdk_error_categories"

    .line 297
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 298
    .local v19, "errorClassificationJSON":Lorg/json/JSONArray;
    if-nez v19, :cond_1

    .line 300
    invoke-static {}, Lcom/facebook/internal/FacebookRequestErrorClassification;->getDefaultErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v11

    .line 304
    .local v11, "errorClassification":Lcom/facebook/internal/FacebookRequestErrorClassification;
    :goto_0
    const-string v3, "app_events_feature_bitmask"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v20

    .line 305
    .local v20, "featureBitmask":I
    and-int/lit8 v3, v20, 0x8

    if-eqz v3, :cond_2

    const/4 v10, 0x1

    .line 307
    .local v10, "automaticLoggingEnabled":Z
    :goto_1
    and-int/lit8 v3, v20, 0x10

    if-eqz v3, :cond_3

    const/4 v14, 0x1

    .line 309
    .local v14, "inAppPurchaseAutomaticLoggingEnabled":Z
    :goto_2
    and-int/lit8 v3, v20, 0x20

    if-eqz v3, :cond_4

    const/4 v15, 0x1

    .line 311
    .local v15, "codelessEventsEnabled":Z
    :goto_3
    move/from16 v0, v20

    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_5

    const/16 v18, 0x1

    .line 313
    .local v18, "trackUninstallEnabled":Z
    :goto_4
    const-string v3, "auto_event_mapping_android"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 315
    .local v16, "eventBindings":Lorg/json/JSONArray;
    sput-object v16, Lcom/facebook/internal/FetchedAppSettingsManager;->unityEventBindings:Lorg/json/JSONArray;

    .line 316
    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager;->unityEventBindings:Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/facebook/internal/InternalSettings;->isUnityApp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/appevents/codeless/internal/UnityReflection;->sendEventMapping(Ljava/lang/String;)V

    .line 320
    :cond_0
    new-instance v2, Lcom/facebook/internal/FetchedAppSettings;

    const-string v3, "supports_implicit_sdk_logging"

    const/4 v4, 0x0

    .line 321
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "gdpv4_nux_content"

    const-string v5, ""

    .line 322
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gdpv4_nux_enabled"

    const/4 v6, 0x0

    .line 323
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "gdpv4_chrome_custom_tabs_enabled"

    const/4 v7, 0x0

    .line 324
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "app_events_session_timeout"

    .line 327
    invoke-static {}, Lcom/facebook/appevents/internal/Constants;->getDefaultAppEventsSessionTimeoutInSeconds()I

    move-result v8

    .line 325
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "seamless_login"

    .line 328
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/facebook/internal/SmartLoginOption;->parseOptions(J)Ljava/util/EnumSet;

    move-result-object v8

    const-string v9, "android_dialog_configs"

    .line 329
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v9

    const-string v12, "smart_login_bookmark_icon_url"

    .line 332
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "smart_login_menu_icon_url"

    .line 333
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v17, "sdk_update_message"

    .line 337
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v2 .. v18}, Lcom/facebook/internal/FetchedAppSettings;-><init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;Z)V

    .line 341
    .local v2, "result":Lcom/facebook/internal/FetchedAppSettings;
    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    return-object v2

    .line 301
    .end local v2    # "result":Lcom/facebook/internal/FetchedAppSettings;
    .end local v10    # "automaticLoggingEnabled":Z
    .end local v11    # "errorClassification":Lcom/facebook/internal/FacebookRequestErrorClassification;
    .end local v14    # "inAppPurchaseAutomaticLoggingEnabled":Z
    .end local v15    # "codelessEventsEnabled":Z
    .end local v16    # "eventBindings":Lorg/json/JSONArray;
    .end local v18    # "trackUninstallEnabled":Z
    .end local v20    # "featureBitmask":I
    :cond_1
    invoke-static/range {v19 .. v19}, Lcom/facebook/internal/FacebookRequestErrorClassification;->createFromJSON(Lorg/json/JSONArray;)Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v11

    goto/16 :goto_0

    .line 305
    .restart local v11    # "errorClassification":Lcom/facebook/internal/FacebookRequestErrorClassification;
    .restart local v20    # "featureBitmask":I
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 307
    .restart local v10    # "automaticLoggingEnabled":Z
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 309
    .restart local v14    # "inAppPurchaseAutomaticLoggingEnabled":Z
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 311
    .restart local v15    # "codelessEventsEnabled":Z
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_4
.end method

.method private static parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7
    .param p0, "dialogConfigResponse"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 375
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 378
    .local v2, "dialogConfigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;>;"
    if-eqz p0, :cond_2

    .line 379
    const-string v6, "data"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 380
    .local v1, "dialogConfigData":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 381
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 384
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 383
    invoke-static {v6}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->parseDialogConfig(Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    move-result-object v0

    .line 385
    .local v0, "dialogConfig":Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    if-nez v0, :cond_0

    .line 381
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 389
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getDialogName()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "dialogName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 392
    .local v4, "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    if-nez v4, :cond_1

    .line 393
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 394
    .restart local v4    # "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getFeatureName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 401
    .end local v0    # "dialogConfig":Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    .end local v1    # "dialogConfigData":Lorg/json/JSONArray;
    .end local v3    # "dialogName":Ljava/lang/String;
    .end local v4    # "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    .end local v5    # "i":I
    :cond_2
    return-object v2
.end method

.method private static declared-synchronized pollCallbacks()V
    .locals 7

    .prologue
    .line 233
    const-class v6, Lcom/facebook/internal/FetchedAppSettingsManager;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 234
    .local v3, "currentState":Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;
    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->NOT_LOADED:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-virtual {v5, v3}, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->LOADING:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-virtual {v5, v3}, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    :cond_0
    monitor-exit v6

    return-void

    .line 238
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "applicationId":Ljava/lang/String;
    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/FetchedAppSettings;

    .line 240
    .local v0, "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 242
    .local v4, "handler":Landroid/os/Handler;
    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-virtual {v5, v3}, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 243
    :goto_0
    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettingsCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 244
    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettingsCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;

    .line 245
    .local v2, "callback":Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;
    new-instance v5, Lcom/facebook/internal/FetchedAppSettingsManager$2;

    invoke-direct {v5, v2}, Lcom/facebook/internal/FetchedAppSettingsManager$2;-><init>(Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    .end local v0    # "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    .end local v1    # "applicationId":Ljava/lang/String;
    .end local v2    # "callback":Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;
    .end local v4    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 255
    .restart local v0    # "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    .restart local v1    # "applicationId":Ljava/lang/String;
    .restart local v4    # "handler":Landroid/os/Handler;
    :cond_2
    :goto_1
    :try_start_2
    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettingsCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 256
    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettingsCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;

    .line 257
    .restart local v2    # "callback":Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;
    new-instance v5, Lcom/facebook/internal/FetchedAppSettingsManager$3;

    invoke-direct {v5, v2, v0}, Lcom/facebook/internal/FetchedAppSettingsManager$3;-><init>(Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;Lcom/facebook/internal/FetchedAppSettings;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;
    .locals 4
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "forceRequery"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 274
    if-nez p1, :cond_0

    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/FetchedAppSettings;

    .line 290
    :goto_0
    return-object v2

    .line 278
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 279
    .local v1, "response":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 280
    const/4 v2, 0x0

    goto :goto_0

    .line 283
    :cond_1
    invoke-static {p0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    .line 285
    .local v0, "fetchedAppSettings":Lcom/facebook/internal/FetchedAppSettings;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 287
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->pollCallbacks()V

    :cond_2
    move-object v2, v0

    .line 290
    goto :goto_0
.end method

.method public static setIsUnityInit(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 347
    sput-boolean p0, Lcom/facebook/internal/FetchedAppSettingsManager;->isUnityInit:Z

    .line 348
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->unityEventBindings:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/facebook/internal/FetchedAppSettingsManager;->isUnityInit:Z

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->unityEventBindings:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/UnityReflection;->sendEventMapping(Ljava/lang/String;)V

    .line 351
    :cond_0
    return-void
.end method
