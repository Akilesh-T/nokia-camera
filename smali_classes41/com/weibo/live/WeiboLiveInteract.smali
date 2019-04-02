.class public Lcom/weibo/live/WeiboLiveInteract;
.super Lcom/weibo/live/WeiboLiveApiBase;
.source "WeiboLiveInteract.java"


# static fields
.field private static final AVATAR:Ljava/lang/String; = "avatar"

.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final EXTENSION:Ljava/lang/String; = "extension"

.field private static final MSGTYPE:Ljava/lang/String; = "msg_type"

.field private static final NICKNAME:Ljava/lang/String; = "nickname"

.field private static final OFFSET:Ljava/lang/String; = "offset"

.field private static final ROOMID:Ljava/lang/String; = "room_id"

.field private static final SIGN:Ljava/lang/String; = "sign"

.field private static final TAG:Ljava/lang/String; = "WeiboLiveInteract"

.field private static final TSTAMP:Ljava/lang/String; = "ts"

.field private static final UID:Ljava/lang/String; = "uid"


# instance fields
.field private final INTERACTURL:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private msgContent:Ljava/lang/String;

.field private msgType:I

.field private nickName:Ljava/lang/String;

.field private offset:J

.field private roomId:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private timeStamp:J

.field private uid:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/weibo/live/WeiboLiveApiBase;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 18
    const-string v0, "https://api.weibo.com/2/liveim/message/sync.json"

    iput-object v0, p0, Lcom/weibo/live/WeiboLiveInteract;->INTERACTURL:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/weibo/live/WeiboLiveInteract;->extension:Ljava/lang/String;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/weibo/live/WeiboLiveInteract;->offset:J

    .line 43
    return-void
.end method


# virtual methods
.method public imUpload(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 6
    .param p1, "rListener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    const-wide/16 v4, 0x0

    .line 46
    if-nez p1, :cond_0

    .line 47
    const-string v1, "WeiboLiveInteract"

    const-string v2, "listener is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/weibo/live/WeiboLiveInteract;->roomId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/weibo/live/WeiboLiveInteract;->timeStamp:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/weibo/live/WeiboLiveInteract;->msgType:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveInteract;->msgContent:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 49
    iget-wide v2, p0, Lcom/weibo/live/WeiboLiveInteract;->uid:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveInteract;->nickName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveInteract;->avatar:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveInteract;->sign:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 50
    :cond_1
    const-string v1, "WeiboLiveInteract"

    const-string v2, "necessary is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveInteract;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "room_id"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveInteract;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "ts"

    iget-wide v2, p0, Lcom/weibo/live/WeiboLiveInteract;->timeStamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 55
    const-string v1, "msg_type"

    iget v2, p0, Lcom/weibo/live/WeiboLiveInteract;->msgType:I

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 56
    const-string v1, "content"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveInteract;->msgContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "uid"

    iget-wide v2, p0, Lcom/weibo/live/WeiboLiveInteract;->uid:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 58
    const-string v1, "nickname"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveInteract;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "avatar"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveInteract;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "sign"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveInteract;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "extension"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveInteract;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "offset"

    iget-wide v2, p0, Lcom/weibo/live/WeiboLiveInteract;->offset:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 63
    const-string v1, "https://api.weibo.com/2/liveim/message/sync.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/weibo/live/WeiboLiveInteract;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    goto/16 :goto_0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatar"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveInteract;->avatar:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveInteract;->extension:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setMsgContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgContent"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveInteract;->msgContent:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setMsgType(I)V
    .locals 0
    .param p1, "msgType"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/weibo/live/WeiboLiveInteract;->msgType:I

    .line 77
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveInteract;->nickName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setOffset(J)V
    .locals 1
    .param p1, "offset"    # J

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/weibo/live/WeiboLiveInteract;->offset:J

    .line 105
    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveInteract;->roomId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "sign"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveInteract;->sign:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/weibo/live/WeiboLiveInteract;->timeStamp:J

    .line 73
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/weibo/live/WeiboLiveInteract;->uid:J

    .line 85
    return-void
.end method
