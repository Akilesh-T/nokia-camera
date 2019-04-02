.class public final Lcom/facebook/internal/FetchedAppSettings;
.super Ljava/lang/Object;
.source "FetchedAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    }
.end annotation


# instance fields
.field private IAPAutomaticLoggingEnabled:Z

.field private automaticLoggingEnabled:Z

.field private codelessEventsEnabled:Z

.field private customTabsEnabled:Z

.field private dialogConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field private errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

.field private eventBindings:Lorg/json/JSONArray;

.field private nuxContent:Ljava/lang/String;

.field private nuxEnabled:Z

.field private sdkUpdateMessage:Ljava/lang/String;

.field private sessionTimeoutInSeconds:I

.field private smartLoginBookmarkIconURL:Ljava/lang/String;

.field private smartLoginMenuIconURL:Ljava/lang/String;

.field private smartLoginOptions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;"
        }
    .end annotation
.end field

.field private supportsImplicitLogging:Z

.field private trackUninstallEnabled:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "supportsImplicitLogging"    # Z
    .param p2, "nuxContent"    # Ljava/lang/String;
    .param p3, "nuxEnabled"    # Z
    .param p4, "customTabsEnabled"    # Z
    .param p5, "sessionTimeoutInSeconds"    # I
    .param p8, "automaticLoggingEnabled"    # Z
    .param p9, "errorClassification"    # Lcom/facebook/internal/FacebookRequestErrorClassification;
    .param p10, "smartLoginBookmarkIconURL"    # Ljava/lang/String;
    .param p11, "smartLoginMenuIconURL"    # Ljava/lang/String;
    .param p12, "IAPAutomaticLoggingEnabled"    # Z
    .param p13, "codelessEventsEnabled"    # Z
    .param p14, "eventBindings"    # Lorg/json/JSONArray;
    .param p15, "sdkUpdateMessage"    # Ljava/lang/String;
    .param p16, "trackUninstallEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;Z",
            "Lcom/facebook/internal/FacebookRequestErrorClassification;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p6, "smartLoginOptions":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/internal/SmartLoginOption;>;"
    .local p7, "dialogConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean p1, p0, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging:Z

    .line 72
    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxContent:Ljava/lang/String;

    .line 73
    iput-boolean p3, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxEnabled:Z

    .line 74
    iput-boolean p4, p0, Lcom/facebook/internal/FetchedAppSettings;->customTabsEnabled:Z

    .line 75
    iput-object p7, p0, Lcom/facebook/internal/FetchedAppSettings;->dialogConfigMap:Ljava/util/Map;

    .line 76
    iput-object p9, p0, Lcom/facebook/internal/FetchedAppSettings;->errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

    .line 77
    iput p5, p0, Lcom/facebook/internal/FetchedAppSettings;->sessionTimeoutInSeconds:I

    .line 78
    iput-boolean p8, p0, Lcom/facebook/internal/FetchedAppSettings;->automaticLoggingEnabled:Z

    .line 79
    iput-object p6, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginOptions:Ljava/util/EnumSet;

    .line 80
    iput-object p10, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginBookmarkIconURL:Ljava/lang/String;

    .line 81
    iput-object p11, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginMenuIconURL:Ljava/lang/String;

    .line 82
    iput-boolean p12, p0, Lcom/facebook/internal/FetchedAppSettings;->IAPAutomaticLoggingEnabled:Z

    .line 83
    iput-boolean p13, p0, Lcom/facebook/internal/FetchedAppSettings;->codelessEventsEnabled:Z

    .line 84
    iput-object p14, p0, Lcom/facebook/internal/FetchedAppSettings;->eventBindings:Lorg/json/JSONArray;

    .line 85
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->sdkUpdateMessage:Ljava/lang/String;

    .line 86
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->trackUninstallEnabled:Z

    .line 87
    return-void
.end method

.method public static getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    .locals 4
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "featureName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-object v2

    .line 260
    :cond_1
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    .line 261
    .local v1, "settings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getDialogConfigurations()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 264
    .local v0, "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    goto :goto_0
.end method


# virtual methods
.method public getAutomaticLoggingEnabled()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->automaticLoggingEnabled:Z

    return v0
.end method

.method public getCodelessEventsEnabled()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->codelessEventsEnabled:Z

    return v0
.end method

.method public getCustomTabsEnabled()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->customTabsEnabled:Z

    return v0
.end method

.method public getDialogConfigurations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 118
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->dialogConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public getErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

    return-object v0
.end method

.method public getEventBindings()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->eventBindings:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getIAPAutomaticLoggingEnabled()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->IAPAutomaticLoggingEnabled:Z

    return v0
.end method

.method public getNuxContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNuxEnabled()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxEnabled:Z

    return v0
.end method

.method public getSdkUpdateMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->sdkUpdateMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionTimeoutInSeconds()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/facebook/internal/FetchedAppSettings;->sessionTimeoutInSeconds:I

    return v0
.end method

.method public getSmartLoginBookmarkIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginBookmarkIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartLoginMenuIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginMenuIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartLoginOptions()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginOptions:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getTrackUninstallEnabled()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->trackUninstallEnabled:Z

    return v0
.end method

.method public supportsImplicitLogging()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging:Z

    return v0
.end method
