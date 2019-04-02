.class final Lcom/facebook/UserSettingsManager$1;
.super Ljava/lang/Object;
.source "UserSettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/UserSettingsManager;->initializeCodelessSepupEnabledAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currTime:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/facebook/UserSettingsManager$1;->val$currTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 124
    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$000()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/UserSettingsManager$UserSetting;->getValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 126
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    .line 127
    .local v1, "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "advertiser_id":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 131
    .local v4, "context":Landroid/content/Context;
    invoke-static {v4}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v5

    .line 132
    .local v5, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    if-eqz v5, :cond_0

    .line 133
    invoke-virtual {v5}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 134
    invoke-virtual {v5}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_0
    if-eqz v0, :cond_1

    .line 137
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v3, "codelessSettingsParams":Landroid/os/Bundle;
    const-string v7, "advertiser_id"

    .line 139
    invoke-virtual {v5}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v8

    .line 138
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v7, "fields"

    const-string v8, "auto_event_setup_enabled"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    .line 142
    invoke-static {v10, v7, v10}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 144
    .local v2, "codelessRequest":Lcom/facebook/GraphRequest;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 145
    invoke-virtual {v2, v3}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    .line 147
    .local v6, "response":Lorg/json/JSONObject;
    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$100()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v7

    const-string v8, "auto_event_setup_enabled"

    .line 148
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v7, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    .line 149
    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$100()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v7

    iget-wide v8, p0, Lcom/facebook/UserSettingsManager$1;->val$currTime:J

    iput-wide v8, v7, Lcom/facebook/UserSettingsManager$UserSetting;->lastTS:J

    .line 150
    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$100()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/UserSettingsManager;->access$200(Lcom/facebook/UserSettingsManager$UserSetting;)V

    .line 154
    .end local v0    # "advertiser_id":Ljava/lang/String;
    .end local v1    # "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    .end local v2    # "codelessRequest":Lcom/facebook/GraphRequest;
    .end local v3    # "codelessSettingsParams":Landroid/os/Bundle;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    .end local v6    # "response":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method
