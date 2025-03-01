.class public Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;
.super Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;
.source "UsersAPI.java"


# static fields
.field private static final API_BASE_URL:Ljava/lang/String; = "https://api.weibo.com/2/users"

.field private static final READ_USER:I = 0x0

.field private static final READ_USER_BY_DOMAIN:I = 0x1

.field private static final READ_USER_COUNT:I = 0x2

.field private static final sAPIList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->sAPIList:Landroid/util/SparseArray;

    .line 26
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "https://api.weibo.com/2/users/show.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "https://api.weibo.com/2/users/domain_show.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "https://api.weibo.com/2/users/counts.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/livebroadcast/weibo/openapi/AbsOpenAPI;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 33
    return-void
.end method

.method private buildCountsParams([J)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 8
    .param p1, "uids"    # [J

    .prologue
    .line 124
    new-instance v2, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->mAppKey:Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 125
    .local v2, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v3, "strb":Ljava/lang/StringBuilder;
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-wide v0, p1, v4

    .line 127
    .local v0, "cid":J
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "cid":J
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v4, "uids"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-object v2
.end method


# virtual methods
.method public counts([JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "uids"    # [J
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->buildCountsParams([J)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 79
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    sget-object v1, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 80
    return-void
.end method

.method public countsSync([J)Ljava/lang/String;
    .locals 3
    .param p1, "uids"    # [J

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->buildCountsParams([J)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 120
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    sget-object v1, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public domainShow(Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 66
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "domain"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 69
    return-void
.end method

.method public domainShowSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "domain"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public show(JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 42
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 44
    sget-object v1, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 45
    return-void
.end method

.method public show(Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "screen_name"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 54
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v1, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 57
    return-void
.end method

.method public showSync(J)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 92
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 94
    sget-object v1, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public showSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "screen_name"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
