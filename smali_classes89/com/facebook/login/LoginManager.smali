.class public Lcom/facebook/login/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/LoginManager$LoginLoggerHolder;,
        Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;,
        Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;
    }
.end annotation


# static fields
.field private static final EXPRESS_LOGIN_ALLOWED:Ljava/lang/String; = "express_login_allowed"

.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFERENCE_LOGIN_MANAGER:Ljava/lang/String; = "com.facebook.loginManager"

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"

.field private static volatile instance:Lcom/facebook/login/LoginManager;


# instance fields
.field private authType:Ljava/lang/String;

.field private defaultAudience:Lcom/facebook/login/DefaultAudience;

.field private loginBehavior:Lcom/facebook/login/LoginBehavior;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/facebook/login/LoginManager;->getOtherPublishPermissions()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/LoginManager;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 75
    sget-object v0, Lcom/facebook/login/DefaultAudience;->FRIENDS:Lcom/facebook/login/DefaultAudience;

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 77
    const-string v0, "rerequest"

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->authType:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 81
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.loginManager"

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 83
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/facebook/login/LoginLogger;
    .param p4, "x4"    # Lcom/facebook/LoginStatusCallback;

    .prologue
    .line 65
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/login/LoginManager;->handleLoginStatusError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V

    return-void
.end method

.method static synthetic access$200(Landroid/os/Bundle;)Lcom/facebook/Profile;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/facebook/login/LoginManager;->getProfileFromBundle(Landroid/os/Bundle;)Lcom/facebook/Profile;

    move-result-object v0

    return-object v0
.end method

.method static computeLoginResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginResult;
    .locals 4
    .param p0, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p1, "newToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v2

    .line 671
    .local v2, "requestedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 675
    .local v1, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->isRerequest()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 676
    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 679
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 680
    .local v0, "deniedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 681
    new-instance v3, Lcom/facebook/login/LoginResult;

    invoke-direct {v3, p1, v1, v0}, Lcom/facebook/login/LoginResult;-><init>(Lcom/facebook/AccessToken;Ljava/util/Set;Ljava/util/Set;)V

    return-object v3
.end method

.method private createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;
    .locals 2
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 152
    const-string v1, "response"

    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getRequest()Lcom/facebook/GraphRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 154
    .local v0, "failedToken":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private finishLogin(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/FacebookException;ZLcom/facebook/FacebookCallback;)V
    .locals 2
    .param p1, "newToken"    # Lcom/facebook/AccessToken;
    .param p2, "origRequest"    # Lcom/facebook/login/LoginClient$Request;
    .param p3, "exception"    # Lcom/facebook/FacebookException;
    .param p4, "isCanceled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Lcom/facebook/login/LoginClient$Request;",
            "Lcom/facebook/FacebookException;",
            "Z",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 690
    .local p5, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/login/LoginResult;>;"
    if-eqz p1, :cond_0

    .line 691
    invoke-static {p1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 692
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    .line 695
    :cond_0
    if-eqz p5, :cond_2

    .line 696
    if-eqz p1, :cond_3

    .line 697
    invoke-static {p2, p1}, Lcom/facebook/login/LoginManager;->computeLoginResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginResult;

    move-result-object v0

    .line 700
    .local v0, "loginResult":Lcom/facebook/login/LoginResult;
    :goto_0
    if-nez p4, :cond_1

    if-eqz v0, :cond_4

    .line 702
    invoke-virtual {v0}, Lcom/facebook/login/LoginResult;->getRecentlyGrantedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 703
    :cond_1
    invoke-interface {p5}, Lcom/facebook/FacebookCallback;->onCancel()V

    .line 711
    .end local v0    # "loginResult":Lcom/facebook/login/LoginResult;
    :cond_2
    :goto_1
    return-void

    .line 697
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 704
    .restart local v0    # "loginResult":Lcom/facebook/login/LoginResult;
    :cond_4
    if-eqz p3, :cond_5

    .line 705
    invoke-interface {p5, p3}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_1

    .line 706
    :cond_5
    if-eqz p1, :cond_2

    .line 707
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/facebook/login/LoginManager;->setExpressLoginStatus(Z)V

    .line 708
    invoke-interface {p5, v0}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static getExtraDataFromIntent(Landroid/content/Intent;)Ljava/util/Map;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 251
    if-nez p0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-object v1

    .line 254
    :cond_1
    const-string v2, "com.facebook.LoginFragment:Result"

    .line 255
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/LoginClient$Result;

    .line 256
    .local v0, "result":Lcom/facebook/login/LoginClient$Result;
    if-eqz v0, :cond_0

    .line 259
    iget-object v1, v0, Lcom/facebook/login/LoginClient$Result;->extraData:Ljava/util/Map;

    goto :goto_0
.end method

.method public static getInstance()Lcom/facebook/login/LoginManager;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    if-nez v0, :cond_1

    .line 91
    const-class v1, Lcom/facebook/login/LoginManager;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/facebook/login/LoginManager;

    invoke-direct {v0}, Lcom/facebook/login/LoginManager;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    .line 95
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    sget-object v0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getOtherPublishPermissions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    new-instance v0, Lcom/facebook/login/LoginManager$2;

    invoke-direct {v0}, Lcom/facebook/login/LoginManager$2;-><init>()V

    .line 521
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static getProfileFromBundle(Landroid/os/Bundle;)Lcom/facebook/Profile;
    .locals 8
    .param p0, "result"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 830
    const-string v0, "com.facebook.platform.extra.PROFILE_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 831
    .local v5, "name":Ljava/lang/String;
    const-string v0, "com.facebook.platform.extra.PROFILE_FIRST_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 832
    .local v2, "firstName":Ljava/lang/String;
    const-string v0, "com.facebook.platform.extra.PROFILE_MIDDLE_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 833
    .local v3, "middleName":Ljava/lang/String;
    const-string v0, "com.facebook.platform.extra.PROFILE_LAST_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 834
    .local v4, "lastName":Ljava/lang/String;
    const-string v0, "com.facebook.platform.extra.PROFILE_LINK"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 835
    .local v7, "link":Ljava/lang/String;
    const-string v0, "com.facebook.platform.extra.PROFILE_USER_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, "appScopedUserId":Ljava/lang/String;
    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    .line 844
    new-instance v0, Lcom/facebook/Profile;

    .line 850
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 852
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static handleLoginStatusError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V
    .locals 3
    .param p0, "errorType"    # Ljava/lang/String;
    .param p1, "errorDescription"    # Ljava/lang/String;
    .param p2, "loggerRef"    # Ljava/lang/String;
    .param p3, "logger"    # Lcom/facebook/login/LoginLogger;
    .param p4, "responseCallback"    # Lcom/facebook/LoginStatusCallback;

    .prologue
    .line 861
    new-instance v0, Lcom/facebook/FacebookException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 862
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {p3, p2, v0}, Lcom/facebook/login/LoginLogger;->logLoginStatusError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 863
    invoke-interface {p4, v0}, Lcom/facebook/LoginStatusCallback;->onError(Ljava/lang/Exception;)V

    .line 864
    return-void
.end method

.method private isExpressLoginAllowed()Z
    .locals 3

    .prologue
    .line 825
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "express_login_allowed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isPublishPermission(Ljava/lang/String;)Z
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 509
    if-eqz p0, :cond_1

    const-string v0, "publish"

    .line 510
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    .line 511
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/login/LoginManager;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    .line 512
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 509
    :goto_0
    return v0

    .line 512
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/facebook/login/LoginClient$Result$Code;
    .param p4, "exception"    # Ljava/lang/Exception;
    .param p5, "wasLoginActivityTried"    # Z
    .param p6, "request"    # Lcom/facebook/login/LoginClient$Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/login/LoginClient$Result$Code;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Lcom/facebook/login/LoginClient$Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 599
    .local p3, "resultExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->access$000(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object v0

    .line 600
    .local v0, "loginLogger":Lcom/facebook/login/LoginLogger;
    if-nez v0, :cond_0

    .line 624
    :goto_0
    return-void

    .line 603
    :cond_0
    if-nez p6, :cond_1

    .line 605
    const-string v1, "fb_mobile_login_complete"

    const-string v3, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {v0, v1, v3}, Lcom/facebook/login/LoginLogger;->logUnexpectedError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 611
    .local v2, "pendingLoggingExtras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "try_login_activity"

    if-eqz p5, :cond_2

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-virtual {p6}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 617
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/login/LoginLogger;->logCompleteLogin(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    goto :goto_0

    .line 611
    :cond_2
    const-string v1, "0"

    goto :goto_1
.end method

.method private logInWithPublishPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V
    .locals 2
    .param p1, "fragment"    # Lcom/facebook/internal/FragmentWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/FragmentWrapper;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validatePublishPermissions(Ljava/util/Collection;)V

    .line 463
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 464
    .local v0, "loginRequest":Lcom/facebook/login/LoginClient$Request;
    new-instance v1, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 465
    return-void
.end method

.method private logInWithReadPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V
    .locals 2
    .param p1, "fragment"    # Lcom/facebook/internal/FragmentWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/FragmentWrapper;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validateReadPermissions(Ljava/util/Collection;)V

    .line 389
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 390
    .local v0, "loginRequest":Lcom/facebook/login/LoginClient$Request;
    new-instance v1, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 391
    return-void
.end method

.method private logStartLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loginRequest"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 586
    invoke-static {p1}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->access$000(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object v0

    .line 587
    .local v0, "loginLogger":Lcom/facebook/login/LoginLogger;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 588
    invoke-virtual {v0, p2}, Lcom/facebook/login/LoginLogger;->logStartLogin(Lcom/facebook/login/LoginClient$Request;)V

    .line 590
    :cond_0
    return-void
.end method

.method private reauthorizeDataAccess(Lcom/facebook/internal/FragmentWrapper;)V
    .locals 2
    .param p1, "fragment"    # Lcom/facebook/internal/FragmentWrapper;

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/facebook/login/LoginManager;->createReauthorizeRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 428
    .local v0, "loginRequest":Lcom/facebook/login/LoginClient$Request;
    new-instance v1, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 429
    return-void
.end method

.method private resolveError(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/GraphResponse;)V
    .locals 2
    .param p1, "fragment"    # Lcom/facebook/internal/FragmentWrapper;
    .param p2, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 145
    new-instance v0, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 147
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    .line 145
    invoke-direct {p0, v0, v1}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 149
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 648
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 649
    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 650
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private retrieveLoginStatusImpl(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "responseCallback"    # Lcom/facebook/LoginStatusCallback;
    .param p3, "toastDurationMs"    # J

    .prologue
    .line 717
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    .line 718
    .local v3, "applicationId":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 720
    .local v4, "loggerRef":Ljava/lang/String;
    new-instance v8, Lcom/facebook/login/LoginLogger;

    invoke-direct {v8, p1, v3}, Lcom/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 722
    .local v8, "logger":Lcom/facebook/login/LoginLogger;
    invoke-direct {p0}, Lcom/facebook/login/LoginManager;->isExpressLoginAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 723
    invoke-virtual {v8, v4}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 724
    invoke-interface {p2}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    new-instance v1, Lcom/facebook/login/LoginStatusClient;

    .line 733
    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/facebook/login/LoginStatusClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 736
    .local v1, "client":Lcom/facebook/login/LoginStatusClient;
    new-instance v5, Lcom/facebook/login/LoginManager$4;

    move-object v6, p0

    move-object v7, v4

    move-object v9, p2

    move-object v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/facebook/login/LoginManager$4;-><init>(Lcom/facebook/login/LoginManager;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;)V

    .line 810
    .local v5, "callback":Lcom/facebook/internal/PlatformServiceClient$CompletedListener;
    invoke-virtual {v1, v5}, Lcom/facebook/login/LoginStatusClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    .line 811
    invoke-virtual {v8, v4}, Lcom/facebook/login/LoginLogger;->logLoginStatusStart(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v1}, Lcom/facebook/login/LoginStatusClient;->start()Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    invoke-virtual {v8, v4}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 814
    invoke-interface {p2}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    goto :goto_0
.end method

.method private setExpressLoginStatus(Z)V
    .locals 2
    .param p1, "isExpressLoginAllowed"    # Z

    .prologue
    .line 819
    iget-object v1, p0, Lcom/facebook/login/LoginManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 820
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "express_login_allowed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 821
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 822
    return-void
.end method

.method private startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V
    .locals 8
    .param p1, "startActivityDelegate"    # Lcom/facebook/login/StartActivityDelegate;
    .param p2, "request"    # Lcom/facebook/login/LoginClient$Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-interface {p1}, Lcom/facebook/login/StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logStartLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    .line 557
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 558
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/login/LoginManager$3;

    invoke-direct {v1, p0}, Lcom/facebook/login/LoginManager$3;-><init>(Lcom/facebook/login/LoginManager;)V

    .line 557
    invoke-static {v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/facebook/login/LoginManager;->tryFacebookActivity(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)Z

    move-result v7

    .line 569
    .local v7, "started":Z
    if-nez v7, :cond_0

    .line 570
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v0, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {v4, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 573
    .local v4, "exception":Lcom/facebook/FacebookException;
    const/4 v5, 0x0

    .line 575
    .local v5, "wasLoginActivityTried":Z
    invoke-interface {p1}, Lcom/facebook/login/StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p2

    .line 574
    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/LoginManager;->logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    .line 581
    throw v4

    .line 583
    .end local v4    # "exception":Lcom/facebook/FacebookException;
    .end local v5    # "wasLoginActivityTried":Z
    :cond_0
    return-void
.end method

.method private tryFacebookActivity(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)Z
    .locals 4
    .param p1, "startActivityDelegate"    # Lcom/facebook/login/StartActivityDelegate;
    .param p2, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    const/4 v2, 0x0

    .line 630
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->getFacebookActivityIntent(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;

    move-result-object v1

    .line 632
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/facebook/login/LoginManager;->resolveIntent(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 644
    :goto_0
    return v2

    .line 639
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/login/LoginClient;->getLoginRequestCode()I

    move-result v3

    .line 637
    invoke-interface {p1, v1, v3}, Lcom/facebook/login/StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    const/4 v2, 0x1

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method private validatePublishPermissions(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 506
    :cond_0
    return-void

    .line 498
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 499
    .local v0, "permission":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/login/LoginManager;->isPublishPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 500
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Cannot pass a read permission (%s) to a request for publish authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 501
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private validateReadPermissions(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 492
    :cond_0
    return-void

    .line 483
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 484
    .local v0, "permission":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/login/LoginManager;->isPublishPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 486
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/login/LoginClient$Request;

    iget-object v1, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    if-eqz p1, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 527
    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    iget-object v4, p0, Lcom/facebook/login/LoginManager;->authType:Ljava/lang/String;

    .line 531
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    .line 532
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .local v0, "request":Lcom/facebook/login/LoginClient$Request;
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginClient$Request;->setRerequest(Z)V

    .line 535
    return-object v0

    .line 525
    .end local v0    # "request":Lcom/facebook/login/LoginClient$Request;
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method protected createReauthorizeRequest()Lcom/facebook/login/LoginClient$Request;
    .locals 7

    .prologue
    .line 539
    new-instance v0, Lcom/facebook/login/LoginClient$Request;

    sget-object v1, Lcom/facebook/login/LoginBehavior;->DIALOG_ONLY:Lcom/facebook/login/LoginBehavior;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    const-string v4, "reauthorize"

    .line 544
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    .line 545
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->authType:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultAudience()Lcom/facebook/login/DefaultAudience;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    return-object v0
.end method

.method protected getFacebookActivityIntent(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;
    .locals 4
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 654
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 655
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/facebook/FacebookActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 656
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/login/LoginBehavior;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 660
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "request"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 661
    const-string v2, "com.facebook.LoginFragment:Request"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 663
    return-object v1
.end method

.method public getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method

.method public logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validatePublishPermissions(Ljava/util/Collection;)V

    .line 475
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 476
    .local v0, "loginRequest":Lcom/facebook/login/LoginClient$Request;
    new-instance v1, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 477
    return-void
.end method

.method public logInWithPublishPermissions(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    .line 451
    return-void
.end method

.method public logInWithPublishPermissions(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    .line 440
    return-void
.end method

.method public logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validateReadPermissions(Ljava/util/Collection;)V

    .line 401
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 402
    .local v0, "loginRequest":Lcom/facebook/login/LoginClient$Request;
    new-instance v1, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 403
    return-void
.end method

.method public logInWithReadPermissions(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    .line 377
    return-void
.end method

.method public logInWithReadPermissions(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    .line 366
    return-void
.end method

.method public logOut()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 320
    invoke-static {v0}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 321
    invoke-static {v0}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/login/LoginManager;->setExpressLoginStatus(Z)V

    .line 323
    return-void
.end method

.method onActivityResult(ILandroid/content/Intent;)Z
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/login/LoginManager;->onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z

    move-result v0

    return v0
.end method

.method onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z
    .locals 15
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/login/LoginResult;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 202
    .local p3, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/login/LoginResult;>;"
    const/4 v5, 0x0

    .line 203
    .local v5, "exception":Lcom/facebook/FacebookException;
    const/4 v9, 0x0

    .line 204
    .local v9, "newToken":Lcom/facebook/AccessToken;
    sget-object v3, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    .line 205
    .local v3, "code":Lcom/facebook/login/LoginClient$Result$Code;
    const/4 v4, 0x0

    .line 206
    .local v4, "loggingExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 208
    .local v7, "originalRequest":Lcom/facebook/login/LoginClient$Request;
    const/4 v12, 0x0

    .line 209
    .local v12, "isCanceled":Z
    if-eqz p2, :cond_5

    .line 210
    const-string v1, "com.facebook.LoginFragment:Result"

    .line 211
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Lcom/facebook/login/LoginClient$Result;

    .line 212
    .local v14, "result":Lcom/facebook/login/LoginClient$Result;
    if-eqz v14, :cond_1

    .line 213
    iget-object v7, v14, Lcom/facebook/login/LoginClient$Result;->request:Lcom/facebook/login/LoginClient$Request;

    .line 214
    iget-object v3, v14, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$Code;

    .line 215
    const/4 v1, -0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 216
    iget-object v1, v14, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$Code;

    sget-object v8, Lcom/facebook/login/LoginClient$Result$Code;->SUCCESS:Lcom/facebook/login/LoginClient$Result$Code;

    if-ne v1, v8, :cond_3

    .line 217
    iget-object v9, v14, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    .line 224
    :cond_0
    :goto_0
    iget-object v4, v14, Lcom/facebook/login/LoginClient$Result;->loggingExtras:Ljava/util/Map;

    .line 231
    .end local v14    # "result":Lcom/facebook/login/LoginClient$Result;
    :cond_1
    :goto_1
    if-nez v5, :cond_2

    if-nez v9, :cond_2

    if-nez v12, :cond_2

    .line 232
    new-instance v5, Lcom/facebook/FacebookException;

    .end local v5    # "exception":Lcom/facebook/FacebookException;
    const-string v1, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 235
    .restart local v5    # "exception":Lcom/facebook/FacebookException;
    :cond_2
    const/4 v6, 0x1

    .line 236
    .local v6, "wasLoginActivityTried":Z
    const/4 v2, 0x0

    .local v2, "context":Landroid/content/Context;
    move-object v1, p0

    .line 237
    invoke-direct/range {v1 .. v7}, Lcom/facebook/login/LoginManager;->logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    move-object v8, p0

    move-object v10, v7

    move-object v11, v5

    move-object/from16 v13, p3

    .line 245
    invoke-direct/range {v8 .. v13}, Lcom/facebook/login/LoginManager;->finishLogin(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/FacebookException;ZLcom/facebook/FacebookCallback;)V

    .line 247
    const/4 v1, 0x1

    return v1

    .line 219
    .end local v2    # "context":Landroid/content/Context;
    .end local v6    # "wasLoginActivityTried":Z
    .restart local v14    # "result":Lcom/facebook/login/LoginClient$Result;
    :cond_3
    new-instance v5, Lcom/facebook/FacebookAuthorizationException;

    .end local v5    # "exception":Lcom/facebook/FacebookException;
    iget-object v1, v14, Lcom/facebook/login/LoginClient$Result;->errorMessage:Ljava/lang/String;

    invoke-direct {v5, v1}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    .restart local v5    # "exception":Lcom/facebook/FacebookException;
    goto :goto_0

    .line 221
    :cond_4
    if-nez p1, :cond_0

    .line 222
    const/4 v12, 0x1

    goto :goto_0

    .line 226
    .end local v14    # "result":Lcom/facebook/login/LoginClient$Result;
    :cond_5
    if-nez p1, :cond_1

    .line 227
    const/4 v12, 0x1

    .line 228
    sget-object v3, Lcom/facebook/login/LoginClient$Result$Code;->CANCEL:Lcom/facebook/login/LoginClient$Result$Code;

    goto :goto_1
.end method

.method public reauthorizeDataAccess(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/facebook/login/LoginManager;->createReauthorizeRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 411
    .local v0, "loginRequest":Lcom/facebook/login/LoginClient$Request;
    new-instance v1, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 412
    return-void
.end method

.method public reauthorizeDataAccess(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 419
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/login/LoginManager;->reauthorizeDataAccess(Lcom/facebook/internal/FragmentWrapper;)V

    .line 420
    return-void
.end method

.method public registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .locals 2
    .param p1, "callbackManager"    # Lcom/facebook/CallbackManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/login/LoginResult;>;"
    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl;

    .end local p1    # "callbackManager":Lcom/facebook/CallbackManager;
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 170
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/login/LoginManager$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/login/LoginManager$1;-><init>(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;)V

    .line 169
    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 181
    return-void
.end method

.method public resolveError(Landroid/app/Activity;Lcom/facebook/GraphResponse;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 109
    new-instance v0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    .line 111
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 113
    return-void
.end method

.method public resolveError(Landroid/app/Fragment;Lcom/facebook/GraphResponse;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 134
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->resolveError(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/GraphResponse;)V

    .line 135
    return-void
.end method

.method public resolveError(Landroid/support/v4/app/Fragment;Lcom/facebook/GraphResponse;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 123
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->resolveError(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/GraphResponse;)V

    .line 124
    return-void
.end method

.method public retrieveLoginStatus(Landroid/content/Context;JLcom/facebook/LoginStatusCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toastDurationMs"    # J
    .param p4, "responseCallback"    # Lcom/facebook/LoginStatusCallback;

    .prologue
    .line 354
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/facebook/login/LoginManager;->retrieveLoginStatusImpl(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V

    .line 355
    return-void
.end method

.method public retrieveLoginStatus(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "responseCallback"    # Lcom/facebook/LoginStatusCallback;

    .prologue
    .line 337
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/facebook/login/LoginManager;->retrieveLoginStatus(Landroid/content/Context;JLcom/facebook/LoginStatusCallback;)V

    .line 338
    return-void
.end method

.method public setAuthType(Ljava/lang/String;)Lcom/facebook/login/LoginManager;
    .locals 0
    .param p1, "authType"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->authType:Ljava/lang/String;

    .line 313
    return-object p0
.end method

.method public setDefaultAudience(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;
    .locals 0
    .param p1, "defaultAudience"    # Lcom/facebook/login/DefaultAudience;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 295
    return-object p0
.end method

.method public setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;
    .locals 0
    .param p1, "loginBehavior"    # Lcom/facebook/login/LoginBehavior;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 277
    return-object p0
.end method

.method public unregisterCallback(Lcom/facebook/CallbackManager;)V
    .locals 2
    .param p1, "callbackManager"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 189
    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl;

    .end local p1    # "callbackManager":Lcom/facebook/CallbackManager;
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 194
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    .line 193
    invoke-virtual {p1, v0}, Lcom/facebook/internal/CallbackManagerImpl;->unregisterCallback(I)V

    .line 195
    return-void
.end method
