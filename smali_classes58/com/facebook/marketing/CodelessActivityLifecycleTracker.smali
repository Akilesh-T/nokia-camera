.class public Lcom/facebook/marketing/CodelessActivityLifecycleTracker;
.super Ljava/lang/Object;
.source "CodelessActivityLifecycleTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final buttonIndexer:Lcom/facebook/marketing/internal/ButtonIndexer;

.field private static isAppIndexingEnabled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/facebook/marketing/CodelessActivityLifecycleTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/marketing/CodelessActivityLifecycleTracker;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/marketing/CodelessActivityLifecycleTracker;->isAppIndexingEnabled:Ljava/lang/Boolean;

    .line 32
    new-instance v0, Lcom/facebook/marketing/internal/ButtonIndexer;

    invoke-direct {v0}, Lcom/facebook/marketing/internal/ButtonIndexer;-><init>()V

    sput-object v0, Lcom/facebook/marketing/CodelessActivityLifecycleTracker;->buttonIndexer:Lcom/facebook/marketing/internal/ButtonIndexer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/facebook/marketing/internal/ButtonIndexer;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/facebook/marketing/CodelessActivityLifecycleTracker;->buttonIndexer:Lcom/facebook/marketing/internal/ButtonIndexer;

    return-object v0
.end method

.method public static getIsAppIndexingEnabled()Z
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/facebook/marketing/CodelessActivityLifecycleTracker;->isAppIndexingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static startTracking(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 35
    new-instance v0, Lcom/facebook/marketing/CodelessActivityLifecycleTracker$1;

    invoke-direct {v0}, Lcom/facebook/marketing/CodelessActivityLifecycleTracker$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 69
    return-void
.end method

.method public static updateAppIndexing(Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "appIndexingEnalbed"    # Ljava/lang/Boolean;

    .prologue
    .line 76
    sput-object p0, Lcom/facebook/marketing/CodelessActivityLifecycleTracker;->isAppIndexingEnabled:Ljava/lang/Boolean;

    .line 77
    return-void
.end method
