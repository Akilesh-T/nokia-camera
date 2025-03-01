.class public Landroid/support/customtabs/CustomTabsSessionToken;
.super Ljava/lang/Object;
.source "CustomTabsSessionToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/CustomTabsSessionToken$MockCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTabsSessionToken"


# instance fields
.field private final mCallback:Landroid/support/customtabs/CustomTabsCallback;

.field private final mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsCallback;)V
    .locals 1
    .param p1, "callbackBinder"    # Landroid/support/customtabs/ICustomTabsCallback;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    .line 88
    new-instance v0, Landroid/support/customtabs/CustomTabsSessionToken$1;

    invoke-direct {v0, p0}, Landroid/support/customtabs/CustomTabsSessionToken$1;-><init>(Landroid/support/customtabs/CustomTabsSessionToken;)V

    iput-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallback:Landroid/support/customtabs/CustomTabsCallback;

    .line 138
    return-void
.end method

.method static synthetic access$000(Landroid/support/customtabs/CustomTabsSessionToken;)Landroid/support/customtabs/ICustomTabsCallback;
    .locals 1
    .param p0, "x0"    # Landroid/support/customtabs/CustomTabsSessionToken;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    return-object v0
.end method

.method public static createMockSessionTokenForTesting()Landroid/support/customtabs/CustomTabsSessionToken;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 83
    new-instance v0, Landroid/support/customtabs/CustomTabsSessionToken;

    new-instance v1, Landroid/support/customtabs/CustomTabsSessionToken$MockCallback;

    invoke-direct {v1}, Landroid/support/customtabs/CustomTabsSessionToken$MockCallback;-><init>()V

    invoke-direct {v0, v1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    return-object v0
.end method

.method public static getSessionTokenFromIntent(Landroid/content/Intent;)Landroid/support/customtabs/CustomTabsSessionToken;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "android.support.customtabs.extra.SESSION"

    invoke-static {v0, v2}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 71
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 72
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-static {v1}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 151
    instance-of v1, p1, Landroid/support/customtabs/CustomTabsSessionToken;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 153
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 152
    check-cast v0, Landroid/support/customtabs/CustomTabsSessionToken;

    .line 153
    .local v0, "token":Landroid/support/customtabs/CustomTabsSessionToken;
    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v2}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCallback()Landroid/support/customtabs/CustomTabsCallback;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallback:Landroid/support/customtabs/CustomTabsCallback;

    return-object v0
.end method

.method getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/support/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAssociatedWith(Landroid/support/customtabs/CustomTabsSession;)Z
    .locals 2
    .param p1, "session"    # Landroid/support/customtabs/CustomTabsSession;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/support/customtabs/CustomTabsSession;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
