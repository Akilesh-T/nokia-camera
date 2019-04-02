.class public Lcom/facebook/internal/FetchedAppGateKeepersManager;
.super Ljava/lang/Object;
.source "FetchedAppGateKeepersManager.java"


# static fields
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final APPLICATION_GATEKEEPER_CACHE_TIMEOUT:J = 0x36ee80L

.field private static final APPLICATION_GATEKEEPER_EDGE:Ljava/lang/String; = "mobile_sdk_gk"

.field private static final APPLICATION_GATEKEEPER_FIELD:Ljava/lang/String; = "gatekeepers"

.field private static final APPLICATION_GRAPH_DATA:Ljava/lang/String; = "data"

.field private static final APPLICATION_PLATFORM:Ljava/lang/String; = "platform"

.field private static final APPLICATION_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final APP_GATEKEEPERS_PREFS_KEY_FORMAT:Ljava/lang/String; = "com.facebook.internal.APP_GATEKEEPERS.%s"

.field private static final APP_GATEKEEPERS_PREFS_STORE:Ljava/lang/String; = "com.facebook.internal.preferences.APP_GATEKEEPERS"

.field private static final APP_PLATFORM:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String;

.field private static final fetchedAppGateKeepers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static timestamp:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->timestamp:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Long;

    .prologue
    .line 43
    sput-object p0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->timestamp:Ljava/lang/Long;

    return-object p0
.end method

.method private static getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "applicationId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "appGateKeepersParams":Landroid/os/Bundle;
    const-string v2, "platform"

    const-string v3, "android"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "sdk_version"

    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "fields"

    const-string v3, "gatekeepers"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const-string v4, "mobile_sdk_gk"

    aput-object v4, v3, v5

    .line 158
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v6, v2, v6}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 160
    .local v1, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v1, v5}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 161
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public static getGateKeeperForKey(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 142
    invoke-static {}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->loadAppGateKeepersAsync()V

    .line 143
    if-eqz p1, :cond_0

    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_1
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method private static isTimestampValid(Ljava/lang/Long;)Z
    .locals 6
    .param p0, "timestamp"    # Ljava/lang/Long;

    .prologue
    const/4 v0, 0x0

    .line 198
    if-nez p0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized loadAppGateKeepersAsync()V
    .locals 7

    .prologue
    .line 64
    const-class v4, Lcom/facebook/internal/FetchedAppGateKeepersManager;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/facebook/internal/FetchedAppGateKeepersManager;->timestamp:Ljava/lang/Long;

    invoke-static {v3}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->isTimestampValid(Ljava/lang/Long;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    .local v0, "applicationId":Ljava/lang/String;
    .local v1, "context":Landroid/content/Context;
    .local v2, "gateKeepersKey":Ljava/lang/String;
    :goto_0
    monitor-exit v4

    return-void

    .line 68
    .end local v0    # "applicationId":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "gateKeepersKey":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 69
    .restart local v1    # "context":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "applicationId":Ljava/lang/String;
    const-string v3, "com.facebook.internal.APP_GATEKEEPERS.%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .restart local v2    # "gateKeepersKey":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v5, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;

    invoke-direct {v5, v1, v2, v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "applicationId":Ljava/lang/String;
    .end local v2    # "gateKeepersKey":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static declared-synchronized parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 10
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "gateKeepersJSON"    # Lorg/json/JSONObject;

    .prologue
    .line 170
    const-class v8, Lcom/facebook/internal/FetchedAppGateKeepersManager;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v7, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 171
    sget-object v7, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v7, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 175
    .local v6, "result":Lorg/json/JSONObject;
    :goto_0
    const-string v7, "data"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 176
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 177
    .local v2, "gateKeepers":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 178
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 181
    :cond_0
    if-eqz v2, :cond_2

    const-string v7, "gatekeepers"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 182
    const-string v7, "gatekeepers"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 183
    .local v1, "data":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-ge v4, v7, :cond_2

    .line 185
    :try_start_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 186
    .local v3, "gk":Lorg/json/JSONObject;
    const-string v7, "key"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "value"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .end local v3    # "gk":Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 173
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "data":Lorg/json/JSONArray;
    .end local v2    # "gateKeepers":Lorg/json/JSONObject;
    .end local v4    # "i":I
    .end local v6    # "result":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .restart local v6    # "result":Lorg/json/JSONObject;
    goto :goto_0

    .line 187
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "data":Lorg/json/JSONArray;
    .restart local v2    # "gateKeepers":Lorg/json/JSONObject;
    .restart local v4    # "i":I
    :catch_0
    move-exception v5

    .line 188
    .local v5, "je":Lorg/json/JSONException;
    const-string v7, "FacebookSDK"

    invoke-static {v7, v5}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 170
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "data":Lorg/json/JSONArray;
    .end local v2    # "gateKeepers":Lorg/json/JSONObject;
    .end local v4    # "i":I
    .end local v5    # "je":Lorg/json/JSONException;
    .end local v6    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 193
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v2    # "gateKeepers":Lorg/json/JSONObject;
    .restart local v6    # "result":Lorg/json/JSONObject;
    :cond_2
    :try_start_3
    sget-object v7, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v7, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    monitor-exit v8

    return-object v6
.end method

.method public static queryAppGateKeepers(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 7
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "forceRequery"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 116
    if-nez p1, :cond_0

    sget-object v4, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    sget-object v4, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 135
    :goto_0
    return-object v4

    .line 120
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 121
    .local v3, "response":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 122
    const/4 v4, 0x0

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, "context":Landroid/content/Context;
    const-string v4, "com.facebook.internal.APP_GATEKEEPERS.%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "gateKeepersKey":Ljava/lang/String;
    const-string v4, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 131
    .local v2, "gateKeepersSharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 132
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 133
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    invoke-static {p0, v3}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_0
.end method
