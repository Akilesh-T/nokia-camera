.class public final Lcom/facebook/FacebookSdk;
.super Ljava/lang/Object;
.source "FacebookSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FacebookSdk$InitializeCallback;
    }
.end annotation


# static fields
.field public static final ADVERTISER_ID_COLLECTION_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.AdvertiserIDCollectionEnabled"

.field public static final APPLICATION_ID_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationId"

.field public static final APPLICATION_NAME_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationName"

.field private static final ATTRIBUTION_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.attributionTracking"

.field public static final AUTO_LOG_APP_EVENTS_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.AutoLogAppEventsEnabled"

.field static final CALLBACK_OFFSET_CHANGED_AFTER_INIT:Ljava/lang/String; = "The callback request code offset can\'t be updated once the SDK is initialized. Call FacebookSdk.setCallbackRequestCodeOffset inside your Application.onCreate method"

.field static final CALLBACK_OFFSET_NEGATIVE:Ljava/lang/String; = "The callback request code offset can\'t be negative."

.field public static final CALLBACK_OFFSET_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.CallbackOffset"

.field public static final CLIENT_TOKEN_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ClientToken"

.field public static final CODELESS_DEBUG_LOG_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.CodelessDebugLogEnabled"

.field private static final DEFAULT_CALLBACK_REQUEST_CODE_OFFSET:I = 0xface

.field private static final DEFAULT_CORE_POOL_SIZE:I = 0x5

.field private static final DEFAULT_KEEP_ALIVE:I = 0x1

.field private static final DEFAULT_MAXIMUM_POOL_SIZE:I = 0x80

.field private static final DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final FACEBOOK_COM:Ljava/lang/String; = "facebook.com"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_REQUEST_CODE_RANGE:I = 0x64

.field private static final PUBLISH_ACTIVITY_PATH:Ljava/lang/String; = "%s/activities"

.field private static final TAG:Ljava/lang/String;

.field public static final WEB_DIALOG_THEME:Ljava/lang/String; = "com.facebook.sdk.WebDialogTheme"

.field private static volatile appClientToken:Ljava/lang/String;

.field private static applicationContext:Landroid/content/Context;

.field private static volatile applicationId:Ljava/lang/String;

.field private static volatile applicationName:Ljava/lang/String;

.field private static cacheDir:Lcom/facebook/internal/LockOnGetVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/internal/LockOnGetVariable",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static callbackRequestCodeOffset:I

.field private static volatile codelessDebugLogEnabled:Ljava/lang/Boolean;

.field private static executor:Ljava/util/concurrent/Executor;

.field private static volatile facebookDomain:Ljava/lang/String;

.field private static graphApiVersion:Ljava/lang/String;

.field private static volatile isDebugEnabled:Z

.field private static isLegacyTokenUpgradeSupported:Z

.field private static final loggingBehaviors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private static onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

.field private static sdkInitialized:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/LoggingBehavior;

    sget-object v2, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    aput-object v2, v1, v4

    .line 69
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    .line 78
    const-string v0, "facebook.com"

    sput-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v2, 0x10000

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    .line 80
    sput-boolean v4, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    .line 81
    sput-boolean v4, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    .line 87
    const v0, 0xface

    sput v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    .line 89
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDefaultAPIVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/FacebookSdk;->DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    .line 99
    new-instance v0, Lcom/facebook/FacebookSdk$1;

    invoke-direct {v0}, Lcom/facebook/FacebookSdk$1;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 158
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public static addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .locals 2
    .param p0, "behavior"    # Lcom/facebook/LoggingBehavior;

    .prologue
    .line 384
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 385
    :try_start_0
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-static {}, Lcom/facebook/FacebookSdk;->updateGraphDebugBehavior()V

    .line 387
    monitor-exit v1

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clearLoggingBehaviors()V
    .locals 2

    .prologue
    .line 412
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 413
    :try_start_0
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 414
    monitor-exit v1

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getAdvertiserIDCollectionEnabled()Z
    .locals 1

    .prologue
    .line 886
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getAdvertiserIDCollectionEnabled()Z

    move-result v0

    return v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 532
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 533
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 784
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 785
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 804
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 744
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 745
    if-nez p0, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-object v6

    .line 748
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 749
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 753
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 756
    .local v4, "packageName":Ljava/lang/String;
    const/16 v7, 0x40

    :try_start_0
    invoke-virtual {v3, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 761
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 762
    .local v5, "signatures":[Landroid/content/pm/Signature;
    if-eqz v5, :cond_0

    array-length v7, v5

    if-eqz v7, :cond_0

    .line 768
    :try_start_1
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 773
    .local v1, "md":Ljava/security/MessageDigest;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 774
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    const/16 v7, 0x9

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 757
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "signatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 769
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "signatures":[Landroid/content/pm/Signature;
    :catch_1
    move-exception v0

    .line 770
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0
.end method

.method public static getAutoLogAppEventsEnabled()Z
    .locals 1

    .prologue
    .line 838
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getAutoLogAppEventsEnabled()Z

    move-result v0

    return v0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 904
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 905
    sget-object v0, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    invoke-virtual {v0}, Lcom/facebook/internal/LockOnGetVariable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static getCallbackRequestCodeOffset()I
    .locals 1

    .prologue
    .line 923
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 924
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    return v0
.end method

.method public static getClientToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 821
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 822
    sget-object v0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getCodelessDebugLogEnabled()Z
    .locals 1

    .prologue
    .line 863
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 864
    sget-object v0, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getCodelessSetupEnabled()Z
    .locals 1

    .prologue
    .line 871
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getCodelessSetupEnabled()Z

    move-result v0

    return v0
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 481
    sget-object v1, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 482
    :try_start_0
    sget-object v0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 483
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    .line 485
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    sget-object v0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    return-object v0

    .line 485
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getFacebookDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    sget-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static getGraphApiVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 561
    sget-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    const-string v1, "getGraphApiVersion: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    sget-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getLimitEventAndDataUsage(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 643
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 644
    const-string v1, "com.facebook.sdk.appEventPreferences"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 646
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "limitEventUsage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getLoggingBehaviors()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 370
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    sget-object v2, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getOnProgressThreshold()J
    .locals 2

    .prologue
    .line 669
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 670
    sget-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    const-string v0, "4.40.0"

    return-object v0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .prologue
    .line 437
    sget-boolean v0, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    return v0
.end method

.method public static isFacebookRequestCode(I)Z
    .locals 1
    .param p0, "requestCode"    # I

    .prologue
    .line 937
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    if-lt p0, v0, :cond_0

    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    add-int/lit8 v0, v0, 0x64

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isInitialized()Z
    .locals 2

    .prologue
    .line 357
    const-class v1, Lcom/facebook/FacebookSdk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isLegacyTokenUpgradeSupported()Z
    .locals 1

    .prologue
    .line 454
    sget-boolean v0, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    return v0
.end method

.method public static isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
    .locals 2
    .param p0, "behavior"    # Lcom/facebook/LoggingBehavior;

    .prologue
    .line 428
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 429
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static loadDefaultsFromMetadata(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0xface

    .line 685
    if-nez p0, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    const/4 v0, 0x0

    .line 691
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 692
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    .line 691
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 697
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 701
    sget-object v4, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 702
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 703
    .local v1, "appId":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_7

    move-object v2, v1

    .line 704
    check-cast v2, Ljava/lang/String;

    .line 705
    .local v2, "appIdString":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 706
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    .line 717
    .end local v1    # "appId":Ljava/lang/Object;
    .end local v2    # "appIdString":Ljava/lang/String;
    :cond_2
    :goto_1
    sget-object v4, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 718
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    .line 721
    :cond_3
    sget-object v4, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 722
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.facebook.sdk.ClientToken"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    .line 725
    :cond_4
    sget v4, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    if-ne v4, v7, :cond_5

    .line 726
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.facebook.sdk.CallbackOffset"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 731
    :cond_5
    sget-object v4, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    if-nez v4, :cond_0

    .line 732
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.facebook.sdk.CodelessDebugLogEnabled"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    goto :goto_0

    .line 693
    :catch_0
    move-exception v3

    .line 694
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 708
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "appId":Ljava/lang/Object;
    .restart local v2    # "appIdString":Ljava/lang/String;
    :cond_6
    sput-object v2, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    goto :goto_1

    .line 710
    .end local v2    # "appIdString":Ljava/lang/String;
    :cond_7
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 711
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 586
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 587
    :cond_0
    :try_start_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Both context and applicationId must be non-null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "Facebook-publish"

    invoke-static {v11, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 623
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 589
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v2

    .line 590
    .local v2, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    const-string v11, "com.facebook.sdk.attributionTracking"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 591
    .local v6, "preferences":Landroid/content/SharedPreferences;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ping"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, "pingKey":Ljava/lang/String;
    const-wide/16 v12, 0x0

    invoke-interface {v6, v3, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    .line 596
    .local v4, "lastPing":J
    :try_start_2
    sget-object v11, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->MOBILE_INSTALL_EVENT:Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    .line 599
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 600
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v13

    .line 596
    invoke-static {v11, v2, v12, v13, p0}, Lcom/facebook/appevents/internal/AppEventsLoggerUtility;->getJSONObjectForGraphAPICall(Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    .line 606
    .local v7, "publishParams":Lorg/json/JSONObject;
    :try_start_3
    const-string v11, "%s/activities"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 607
    .local v10, "publishUrl":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v10, v7, v12}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v8

    .line 609
    .local v8, "publishRequest":Lcom/facebook/GraphRequest;
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-nez v11, :cond_1

    .line 611
    invoke-virtual {v8}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v9

    .line 614
    .local v9, "publishResponse":Lcom/facebook/GraphResponse;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 615
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 616
    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 617
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 602
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "publishParams":Lorg/json/JSONObject;
    .end local v8    # "publishRequest":Lcom/facebook/GraphRequest;
    .end local v9    # "publishResponse":Lcom/facebook/GraphResponse;
    .end local v10    # "publishUrl":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 603
    .local v0, "e":Lorg/json/JSONException;
    new-instance v11, Lcom/facebook/FacebookException;

    const-string v12, "An error occurred while publishing install."

    invoke-direct {v11, v12, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public static publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 574
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/FacebookSdk$4;

    invoke-direct {v2, v0, p1}, Lcom/facebook/FacebookSdk$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 580
    return-void
.end method

.method public static removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .locals 2
    .param p0, "behavior"    # Lcom/facebook/LoggingBehavior;

    .prologue
    .line 400
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 401
    :try_start_0
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 402
    monitor-exit v1

    .line 403
    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit v0

    return-void

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;I)V
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "callbackRequestCodeOffset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;ILcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit v0

    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;ILcom/facebook/FacebookSdk$InitializeCallback;)V
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "callbackRequestCodeOffset"    # I
    .param p2, "callback"    # Lcom/facebook/FacebookSdk$InitializeCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 216
    const-class v1, Lcom/facebook/FacebookSdk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    if-eq p1, v0, :cond_0

    .line 217
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v2, "The callback request code offset can\'t be updated once the SDK is initialized. Call FacebookSdk.setCallbackRequestCodeOffset inside your Application.onCreate method"

    invoke-direct {v0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 219
    :cond_0
    if-gez p1, :cond_1

    .line 220
    :try_start_1
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v2, "The callback request code offset can\'t be negative."

    invoke-direct {v0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    sput p1, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 224
    invoke-static {p0, p2}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    .locals 4
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/facebook/FacebookSdk$InitializeCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 267
    const-class v2, Lcom/facebook/FacebookSdk;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    if-eqz p1, :cond_0

    .line 269
    invoke-interface {p1}, Lcom/facebook/FacebookSdk$InitializeCallback;->onInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 274
    :cond_1
    :try_start_1
    const-string v1, "applicationContext"

    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;Z)V

    .line 279
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->hasInternetPermissions(Landroid/content/Context;Z)V

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    .line 284
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->loadDefaultsFromMetadata(Landroid/content/Context;)V

    .line 287
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v3, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    invoke-direct {v1, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 295
    :cond_2
    const/4 v1, 0x1

    :try_start_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    .line 298
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_3

    .line 299
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getAutoLogAppEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    sget-object v3, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    .line 307
    :cond_3
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->loadAppSettingsAsync()V

    .line 310
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V

    .line 312
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/internal/BoltsMeasurementEventListener;->getInstance(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;

    .line 314
    new-instance v1, Lcom/facebook/internal/LockOnGetVariable;

    new-instance v3, Lcom/facebook/FacebookSdk$2;

    invoke-direct {v3}, Lcom/facebook/FacebookSdk$2;-><init>()V

    invoke-direct {v1, v3}, Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v1, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    .line 321
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/facebook/FacebookSdk$3;

    invoke-direct {v1, p1, p0}, Lcom/facebook/FacebookSdk$3;-><init>(Lcom/facebook/FacebookSdk$InitializeCallback;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 349
    .local v0, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static setAdvertiserIDCollectionEnabled(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 879
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->setAdvertiserIDCollectionEnabled(Z)V

    .line 880
    return-void
.end method

.method public static setApplicationId(Ljava/lang/String;)V
    .locals 0
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 793
    sput-object p0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    .line 794
    return-void
.end method

.method public static setApplicationName(Ljava/lang/String;)V
    .locals 0
    .param p0, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 812
    sput-object p0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    .line 813
    return-void
.end method

.method public static setAutoLogAppEventsEnabled(Z)V
    .locals 2
    .param p0, "flag"    # Z

    .prologue
    .line 850
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->setAutoLogAppEventsEnabled(Z)V

    .line 851
    if-eqz p0, :cond_0

    .line 852
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    sget-object v1, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    .line 857
    :cond_0
    return-void
.end method

.method public static setCacheDir(Ljava/io/File;)V
    .locals 1
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 913
    new-instance v0, Lcom/facebook/internal/LockOnGetVariable;

    invoke-direct {v0, p0}, Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    .line 914
    return-void
.end method

.method public static setClientToken(Ljava/lang/String;)V
    .locals 0
    .param p0, "clientToken"    # Ljava/lang/String;

    .prologue
    .line 830
    sput-object p0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    .line 831
    return-void
.end method

.method public static setCodelessDebugLogEnabled(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 894
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    .line 895
    return-void
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 496
    const-string v0, "executor"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    sget-object v1, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 498
    :try_start_0
    sput-object p0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    .line 499
    monitor-exit v1

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setFacebookDomain(Ljava/lang/String;)V
    .locals 2
    .param p0, "facebookDomain"    # Ljava/lang/String;

    .prologue
    .line 521
    sget-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: Calling setFacebookDomain from non-DEBUG code."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    sput-object p0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    .line 525
    return-void
.end method

.method public static setGraphApiVersion(Ljava/lang/String;)V
    .locals 2
    .param p0, "graphApiVersion"    # Ljava/lang/String;

    .prologue
    .line 545
    sget-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: Calling setGraphApiVersion from non-DEBUG code."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    .line 549
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    sput-object p0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    .line 552
    :cond_0
    return-void
.end method

.method public static setIsDebugEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 445
    sput-boolean p0, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    .line 446
    return-void
.end method

.method public static setLegacyTokenUpgradeSupported(Z)V
    .locals 0
    .param p0, "supported"    # Z

    .prologue
    .line 469
    sput-boolean p0, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    .line 470
    return-void
.end method

.method public static setLimitEventAndDataUsage(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "limitEventUsage"    # Z

    .prologue
    .line 659
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 660
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "limitEventUsage"

    .line 661
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 662
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 663
    return-void
.end method

.method public static setOnProgressThreshold(J)V
    .locals 2
    .param p0, "threshold"    # J

    .prologue
    .line 680
    sget-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 681
    return-void
.end method

.method private static updateGraphDebugBehavior()V
    .locals 2

    .prologue
    .line 458
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    .line 459
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_0
    return-void
.end method
