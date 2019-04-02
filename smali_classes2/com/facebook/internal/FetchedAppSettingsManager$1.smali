.class final Lcom/facebook/internal/FetchedAppSettingsManager$1;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FetchedAppSettingsManager;->loadAppSettingsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$settingsKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$settingsKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 159
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$context:Landroid/content/Context;

    const-string v9, "com.facebook.internal.preferences.APP_SETTINGS"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 162
    .local v6, "sharedPrefs":Landroid/content/SharedPreferences;
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$settingsKey:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "settingsJSONString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 164
    .local v0, "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 165
    const/4 v3, 0x0

    .line 167
    .local v3, "settingsJSON":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "settingsJSON":Lorg/json/JSONObject;
    .local v4, "settingsJSON":Lorg/json/JSONObject;
    move-object v3, v4

    .line 171
    .end local v4    # "settingsJSON":Lorg/json/JSONObject;
    .restart local v3    # "settingsJSON":Lorg/json/JSONObject;
    :goto_0
    if-eqz v3, :cond_0

    .line 172
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    invoke-static {v8, v3}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    .line 176
    .end local v3    # "settingsJSON":Lorg/json/JSONObject;
    :cond_0
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    invoke-static {v8}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$100(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 177
    .local v2, "resultJSON":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 178
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    invoke-static {v8, v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    .line 180
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$settingsKey:Ljava/lang/String;

    .line 181
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 182
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    :cond_1
    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getSdkUpdateMessage()Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, "updateMessage":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$200()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v7, :cond_2

    .line 190
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 191
    invoke-static {v11}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$202(Z)Z

    .line 192
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$300()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v7    # "updateMessage":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->queryAppGateKeepers(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 200
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logActivateAppEvent()V

    .line 203
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->update()V

    .line 205
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$500()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v9

    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$400()Ljava/util/Map;

    move-result-object v8

    iget-object v10, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    :goto_1
    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 206
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$600()V

    .line 207
    return-void

    .line 168
    .end local v2    # "resultJSON":Lorg/json/JSONObject;
    .restart local v3    # "settingsJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "je":Lorg/json/JSONException;
    const-string v8, "FacebookSDK"

    invoke-static {v8, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 205
    .end local v1    # "je":Lorg/json/JSONException;
    .end local v3    # "settingsJSON":Lorg/json/JSONObject;
    .restart local v2    # "resultJSON":Lorg/json/JSONObject;
    :cond_3
    sget-object v8, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    goto :goto_1
.end method
