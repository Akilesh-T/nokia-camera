.class public Lcom/laifeng/sopcastsdk/blacklist/BlackListHelper;
.super Ljava/lang/Object;
.source "BlackListHelper.java"


# static fields
.field private static final BLACKLISTED_AEC_MODELS:[Ljava/lang/String;

.field private static final BLACKLISTED_FPS_MODELS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Nexus 5"

    aput-object v1, v0, v2

    sput-object v0, Lcom/laifeng/sopcastsdk/blacklist/BlackListHelper;->BLACKLISTED_AEC_MODELS:[Ljava/lang/String;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "OPPO R9"

    aput-object v1, v0, v2

    const-string v1, "Nexus 6P"

    aput-object v1, v0, v3

    sput-object v0, Lcom/laifeng/sopcastsdk/blacklist/BlackListHelper;->BLACKLISTED_FPS_MODELS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceInAecBlacklisted()Z
    .locals 5

    .prologue
    .line 31
    sget-object v3, Lcom/laifeng/sopcastsdk/blacklist/BlackListHelper;->BLACKLISTED_AEC_MODELS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 32
    .local v0, "blackListedModels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    .local v1, "blackModel":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 34
    .local v2, "model":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    const/4 v3, 0x1

    .line 38
    .end local v1    # "blackModel":Ljava/lang/String;
    .end local v2    # "model":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static deviceInFpsBlacklisted()Z
    .locals 5

    .prologue
    .line 42
    sget-object v3, Lcom/laifeng/sopcastsdk/blacklist/BlackListHelper;->BLACKLISTED_FPS_MODELS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, "blackListedModels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    .local v1, "blackModel":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 45
    .local v2, "model":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    const/4 v3, 0x1

    .line 49
    .end local v1    # "blackModel":Ljava/lang/String;
    .end local v2    # "model":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
