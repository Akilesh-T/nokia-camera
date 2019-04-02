.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appSettings:Lcom/facebook/internal/FetchedAppSettings;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FetchedAppSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appSettings:Lcom/facebook/internal/FetchedAppSettings;

    iput-object p2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 230
    iget-object v4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appSettings:Lcom/facebook/internal/FetchedAppSettings;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appSettings:Lcom/facebook/internal/FetchedAppSettings;

    .line 231
    invoke-virtual {v4}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 232
    .local v0, "codelessEventsEnabled":Z
    :goto_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getCodelessSetupEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v3

    .line 234
    .local v1, "codelessSetupEnabled":Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 235
    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appId:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->checkCodelessSession(Ljava/lang/String;)V

    .line 237
    :cond_0
    return-void

    .end local v0    # "codelessEventsEnabled":Z
    .end local v1    # "codelessSetupEnabled":Z
    :cond_1
    move v0, v3

    .line 231
    goto :goto_0

    .restart local v0    # "codelessEventsEnabled":Z
    :cond_2
    move v1, v2

    .line 232
    goto :goto_1
.end method
