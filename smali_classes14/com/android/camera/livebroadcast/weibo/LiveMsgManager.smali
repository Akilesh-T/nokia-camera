.class public Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;
.super Ljava/lang/Object;
.source "LiveMsgManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalMessageListener;,
        Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalConnListener;,
        Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;
    }
.end annotation


# static fields
.field public static mInstance:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;


# instance fields
.field private isNeedCallBack:Z

.field private mMsgTypeConverter:Lcom/android/camera/livebroadcast/weibo/dispatchmessage/IMsgTypeConvert;

.field private mRefConnectionListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-direct {v0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;-><init>()V

    sput-object v0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mInstance:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->isNeedCallBack:Z

    .line 78
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->initClient()V

    .line 79
    new-instance v0, Lcom/android/camera/livebroadcast/weibo/impl/LiveMsgTypeConvert;

    invoke-direct {v0}, Lcom/android/camera/livebroadcast/weibo/impl/LiveMsgTypeConvert;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mMsgTypeConverter:Lcom/android/camera/livebroadcast/weibo/dispatchmessage/IMsgTypeConvert;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mRefConnectionListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)Lcom/android/camera/livebroadcast/weibo/dispatchmessage/IMsgTypeConvert;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mMsgTypeConverter:Lcom/android/camera/livebroadcast/weibo/dispatchmessage/IMsgTypeConvert;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->isNeedCallBack:Z

    return v0
.end method

.method private getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "bundle":Landroid/os/Bundle;
    return-object v0
.end method

.method private getUser()Lcom/sina/sinalivesdk/models/UserModel;
    .locals 5

    .prologue
    .line 102
    new-instance v1, Lcom/sina/sinalivesdk/models/UserModel;

    invoke-direct {v1}, Lcom/sina/sinalivesdk/models/UserModel;-><init>()V

    .line 103
    .local v1, "user":Lcom/sina/sinalivesdk/models/UserModel;
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v0

    .line 104
    .local v0, "accessToken":Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/models/UserModel;->setAccess_token(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sina/sinalivesdk/models/UserModel;->setUid(J)V

    .line 106
    const-string v2, "tag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "token= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-object v1
.end method

.method private initClient()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->getUser()Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->initData(Lcom/sina/sinalivesdk/models/UserModel;Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method private initData(Lcom/sina/sinalivesdk/models/UserModel;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "user"    # Lcom/sina/sinalivesdk/models/UserModel;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/sinalivesdk/WBIMLiveClient;->init(Landroid/content/Context;Lcom/sina/sinalivesdk/models/UserModel;Landroid/os/Bundle;)V

    .line 89
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalMessageListener;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalMessageListener;-><init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->addMessageListener(Lcom/sina/sinalivesdk/interfaces/WBIMLiveListener;)V

    .line 90
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalConnListener;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalConnListener;-><init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->setConnListener(Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;)V

    .line 91
    return-void
.end method


# virtual methods
.method public addToCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "room_id"    # Ljava/lang/String;
    .param p2, "pname"    # Ljava/lang/String;
    .param p3, "usrName"    # Ljava/lang/String;

    .prologue
    .line 442
    :try_start_0
    new-instance v1, Lcom/sina/sinalivesdk/request/AddToCartRequest;

    invoke-direct {v1}, Lcom/sina/sinalivesdk/request/AddToCartRequest;-><init>()V

    .line 443
    .local v1, "request":Lcom/sina/sinalivesdk/request/AddToCartRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6dfb\u52a0\u4e86"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5230\u8d2d\u7269\u8f66"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/request/AddToCartRequest;->setContent(Ljava/lang/String;)V

    .line 444
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/request/AddToCartRequest;->setExtension(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v1, p1}, Lcom/sina/sinalivesdk/request/AddToCartRequest;->setRoom_id(Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getMsgManager()Lcom/sina/sinalivesdk/manager/MsgManager;

    move-result-object v2

    new-instance v3, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$10;

    invoke-direct {v3, p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$10;-><init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V

    invoke-virtual {v2, v1, v3}, Lcom/sina/sinalivesdk/manager/MsgManager;->addToCart(Lcom/sina/sinalivesdk/request/AddToCartRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v1    # "request":Lcom/sina/sinalivesdk/request/AddToCartRequest;
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public create(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;)V
    .locals 4
    .param p1, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .param p2, "listener"    # Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;

    .prologue
    .line 141
    new-instance v0, Lcom/sina/sinalivesdk/models/UserModel;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/models/UserModel;-><init>()V

    .line 142
    .local v0, "userModel":Lcom/sina/sinalivesdk/models/UserModel;
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/UserModel;->setAccess_token(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sina/sinalivesdk/models/UserModel;->setUid(J)V

    .line 144
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/sina/sinalivesdk/WBIMLiveClient;->onSwitchUser(Landroid/content/Context;Lcom/sina/sinalivesdk/models/UserModel;Landroid/os/Bundle;)V

    .line 145
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mRefConnectionListener:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mRefConnectionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mRefConnectionListener:Ljava/lang/ref/WeakReference;

    .line 149
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mRefConnectionListener:Ljava/lang/ref/WeakReference;

    .line 150
    return-void
.end method

.method public destory()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mRefConnectionListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mRefConnectionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mRefConnectionListener:Ljava/lang/ref/WeakReference;

    .line 157
    :cond_0
    return-void
.end method

.method public exitRoom(Ljava/lang/String;)V
    .locals 3
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v0, Lcom/sina/sinalivesdk/request/ExitRoomRequest;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/request/ExitRoomRequest;-><init>()V

    .line 218
    .local v0, "request":Lcom/sina/sinalivesdk/request/ExitRoomRequest;
    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/request/ExitRoomRequest;->setRoom_id(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getChatRoomManager()Lcom/sina/sinalivesdk/manager/ChatRoomManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$2;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$2;-><init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/sina/sinalivesdk/manager/ChatRoomManager;->exitLiveRoom(Lcom/sina/sinalivesdk/request/ExitRoomRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->unregistMsgCallBack()V

    goto :goto_0
.end method

.method public fetchLiveRoomUserList(Ljava/lang/String;II[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "cursor"    # I
    .param p4, "roleFilter"    # [Ljava/lang/String;
    .param p5, "infoFilter"    # [Ljava/lang/String;

    .prologue
    .line 259
    new-instance v0, Lcom/sina/sinalivesdk/request/FetchRoomUserListRequest;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/request/FetchRoomUserListRequest;-><init>()V

    .line 260
    .local v0, "request":Lcom/sina/sinalivesdk/request/FetchRoomUserListRequest;
    invoke-virtual {v0, p2}, Lcom/sina/sinalivesdk/request/FetchRoomUserListRequest;->setCount(I)V

    .line 261
    invoke-virtual {v0, p3}, Lcom/sina/sinalivesdk/request/FetchRoomUserListRequest;->setCursor(I)V

    .line 262
    invoke-virtual {v0, p4}, Lcom/sina/sinalivesdk/request/FetchRoomUserListRequest;->setRole_filter([Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, p5}, Lcom/sina/sinalivesdk/request/FetchRoomUserListRequest;->setMember_info_filter([Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/request/FetchRoomUserListRequest;->setRoom_id(Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getChatRoomManager()Lcom/sina/sinalivesdk/manager/ChatRoomManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$3;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$3;-><init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/sina/sinalivesdk/manager/ChatRoomManager;->fetchLiveRoomUserList(Lcom/sina/sinalivesdk/request/FetchRoomUserListRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    .line 276
    return-void
.end method

.method public fetchRoomForbiddenListRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 284
    new-instance v0, Lcom/sina/sinalivesdk/request/FetchRoomForbiddenListRequest;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/request/FetchRoomForbiddenListRequest;-><init>()V

    .line 285
    .local v0, "request":Lcom/sina/sinalivesdk/request/FetchRoomForbiddenListRequest;
    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/request/FetchRoomForbiddenListRequest;->setRoom_id(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getChatRoomManager()Lcom/sina/sinalivesdk/manager/ChatRoomManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$4;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$4;-><init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/sina/sinalivesdk/manager/ChatRoomManager;->fetchLiveRoomForbiddenList(Lcom/sina/sinalivesdk/request/FetchRoomForbiddenListRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    .line 297
    return-void
.end method

.method public focusAnchor(Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "ownerId"    # J
    .param p4, "offset"    # J

    .prologue
    .line 360
    new-instance v0, Lcom/sina/sinalivesdk/request/FollowAnchorRequest;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/request/FollowAnchorRequest;-><init>()V

    .line 361
    .local v0, "request":Lcom/sina/sinalivesdk/request/FollowAnchorRequest;
    invoke-virtual {v0, p4, p5}, Lcom/sina/sinalivesdk/request/FollowAnchorRequest;->setOffset(J)V

    .line 362
    invoke-virtual {v0, p2, p3}, Lcom/sina/sinalivesdk/request/FollowAnchorRequest;->setOwner_id(J)V

    .line 363
    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/request/FollowAnchorRequest;->setRoom_id(Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getMsgManager()Lcom/sina/sinalivesdk/manager/MsgManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$7;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$7;-><init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/sina/sinalivesdk/manager/MsgManager;->followAnchor(Lcom/sina/sinalivesdk/request/FollowAnchorRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    .line 375
    return-void
.end method

.method public isPushConnectionAvailable(ZLjava/lang/String;)V
    .locals 1
    .param p1, "isStart"    # Z
    .param p2, "roomId"    # Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getConnectorManager()Lcom/sina/sinalivesdk/manager/ConnectorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/manager/ConnectorManager;->isPushConnectionAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0, p2}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->joinRoom(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method public joinRoom(Ljava/lang/String;)V
    .locals 4
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roomId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->registMsgCallBack()V

    .line 175
    new-instance v0, Lcom/sina/sinalivesdk/request/JoinRoomRequest;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/request/JoinRoomRequest;-><init>()V

    .line 176
    .local v0, "request":Lcom/sina/sinalivesdk/request/JoinRoomRequest;
    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/request/JoinRoomRequest;->setRoom_id(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getChatRoomManager()Lcom/sina/sinalivesdk/manager/ChatRoomManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$1;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$1;-><init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/sina/sinalivesdk/manager/ChatRoomManager;->joinLiveRoom(Lcom/sina/sinalivesdk/request/JoinRoomRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    .line 208
    return-void
.end method

.method public onMsgCallBack(ILjava/lang/String;I)V
    .locals 3
    .param p1, "msgType"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "sourceMsgType"    # I

    .prologue
    .line 496
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data newmessage= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->getDefault()Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->post(ILjava/lang/String;)V

    .line 498
    return-void
.end method

.method public registMsgCallBack()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->isNeedCallBack:Z

    .line 161
    return-void
.end method

.method public sendLike(Ljava/lang/String;I)V
    .locals 3
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "praiseNum"    # I

    .prologue
    .line 335
    new-instance v0, Lcom/sina/sinalivesdk/request/LikeRequest;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/request/LikeRequest;-><init>()V

    .line 336
    .local v0, "request":Lcom/sina/sinalivesdk/request/LikeRequest;
    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/request/LikeRequest;->setRoom_id(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, p2}, Lcom/sina/sinalivesdk/request/LikeRequest;->setInc_praises(I)V

    .line 338
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getMsgManager()Lcom/sina/sinalivesdk/manager/MsgManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$6;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$6;-><init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/sina/sinalivesdk/manager/MsgManager;->like(Lcom/sina/sinalivesdk/request/LikeRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    .line 349
    return-void
.end method

.method public sendMsg(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 3
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "offset"    # J
    .param p5, "type"    # I

    .prologue
    .line 309
    new-instance v0, Lcom/sina/sinalivesdk/request/SendMsgRequest;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/request/SendMsgRequest;-><init>()V

    .line 310
    .local v0, "request":Lcom/sina/sinalivesdk/request/SendMsgRequest;
    invoke-virtual {v0, p2}, Lcom/sina/sinalivesdk/request/SendMsgRequest;->setContent(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, p3, p4}, Lcom/sina/sinalivesdk/request/SendMsgRequest;->setOffset(J)V

    .line 312
    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/request/SendMsgRequest;->setRoom_id(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, p5}, Lcom/sina/sinalivesdk/request/SendMsgRequest;->setType(I)V

    .line 314
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getMsgManager()Lcom/sina/sinalivesdk/manager/MsgManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$5;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$5;-><init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/sina/sinalivesdk/manager/MsgManager;->sendMessage(Lcom/sina/sinalivesdk/request/SendMsgRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    .line 325
    return-void
.end method

.method public sendReward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "room_id"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/String;

    .prologue
    .line 471
    new-instance v0, Lcom/sina/sinalivesdk/request/RewardRequest;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/request/RewardRequest;-><init>()V

    .line 472
    .local v0, "request":Lcom/sina/sinalivesdk/request/RewardRequest;
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/request/RewardRequest;->setExtension(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/request/RewardRequest;->setRoom_id(Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getMsgManager()Lcom/sina/sinalivesdk/manager/MsgManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$11;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$11;-><init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/sina/sinalivesdk/manager/MsgManager;->reward(Lcom/sina/sinalivesdk/request/RewardRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    .line 485
    return-void
.end method

.method public setAllowUserChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "room_id"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "user_system"    # Ljava/lang/String;
    .param p4, "nickname"    # Ljava/lang/String;
    .param p5, "avatar"    # Ljava/lang/String;
    .param p6, "isForbidMsg"    # Z

    .prologue
    const/4 v2, 0x0

    .line 384
    new-instance v0, Lcom/sina/sinalivesdk/request/ForBidMsgRequest;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/request/ForBidMsgRequest;-><init>()V

    .line 385
    .local v0, "request":Lcom/sina/sinalivesdk/request/ForBidMsgRequest;
    new-instance v1, Lcom/sina/sinalivesdk/models/UserModel;

    invoke-direct {v1}, Lcom/sina/sinalivesdk/models/UserModel;-><init>()V

    .line 386
    .local v1, "userModel":Lcom/sina/sinalivesdk/models/UserModel;
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sina/sinalivesdk/models/UserModel;->setUid(J)V

    .line 387
    invoke-virtual {v1, p3}, Lcom/sina/sinalivesdk/models/UserModel;->setUser_system(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v1, p4}, Lcom/sina/sinalivesdk/models/UserModel;->setNickname(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v1, p5}, Lcom/sina/sinalivesdk/models/UserModel;->setAvatar(Ljava/lang/String;)V

    .line 391
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sina/sinalivesdk/models/UserModel;

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Lcom/sina/sinalivesdk/request/ForBidMsgRequest;->setMembers([Lcom/sina/sinalivesdk/models/UserModel;)V

    .line 392
    if-eqz p6, :cond_0

    const v2, 0x15180

    :cond_0
    invoke-virtual {v0, v2}, Lcom/sina/sinalivesdk/request/ForBidMsgRequest;->setShut_time(I)V

    .line 393
    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/request/ForBidMsgRequest;->setRoom_id(Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getMsgManager()Lcom/sina/sinalivesdk/manager/MsgManager;

    move-result-object v2

    new-instance v3, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$8;

    invoke-direct {v3, p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$8;-><init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V

    invoke-virtual {v2, v0, v3}, Lcom/sina/sinalivesdk/manager/MsgManager;->forBidMessage(Lcom/sina/sinalivesdk/request/ForBidMsgRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    .line 405
    return-void
.end method

.method public share(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "room_id"    # Ljava/lang/String;
    .param p2, "usrName"    # Ljava/lang/String;

    .prologue
    .line 415
    new-instance v0, Lcom/sina/sinalivesdk/request/ShareRequest;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/request/ShareRequest;-><init>()V

    .line 416
    .local v0, "request":Lcom/sina/sinalivesdk/request/ShareRequest;
    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/request/ShareRequest;->setRoom_id(Ljava/lang/String;)V

    .line 417
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/request/ShareRequest;->setExtension(Ljava/lang/String;)V

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5206\u4eab\u4e86\u76f4\u64ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/request/ShareRequest;->setContent(Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getMsgManager()Lcom/sina/sinalivesdk/manager/MsgManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$9;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$9;-><init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/sina/sinalivesdk/manager/MsgManager;->share(Lcom/sina/sinalivesdk/request/ShareRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    .line 430
    return-void
.end method

.method public unregistMsgCallBack()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->isNeedCallBack:Z

    .line 165
    return-void
.end method

.method public updateUser(Ljava/lang/String;)V
    .locals 6
    .param p1, "lastUid"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->getUser()Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v1

    .line 129
    .local v1, "userModel":Lcom/sina/sinalivesdk/models/UserModel;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/models/UserModel;->getUid()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "uid":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/sina/sinalivesdk/WBIMLiveClient;->onSwitchUser(Landroid/content/Context;Lcom/sina/sinalivesdk/models/UserModel;Landroid/os/Bundle;)V

    .line 138
    :cond_0
    return-void
.end method
