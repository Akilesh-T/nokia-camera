.class public Lcom/android/camera/livebroadcast/weibo/WeiboStatus;
.super Ljava/lang/Object;
.source "WeiboStatus.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/status/AccountStatus;
.implements Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;


# static fields
.field private static final MSG_RE_JOIN_ROOM:I = 0x1

.field private static final MSG_UPDATE_UI:I

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mRefActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

.field private mStop:Z

.field private final mWeiboLiveData:Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LB]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "liveData"    # Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mStop:Z

    .line 39
    new-instance v0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus$1;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboStatus$1;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboStatus;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mRefActivity:Ljava/lang/ref/WeakReference;

    .line 67
    iput-object p2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    .line 68
    iput-object p3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mWeiboLiveData:Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/livebroadcast/weibo/WeiboStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mStop:Z

    return v0
.end method

.method static synthetic access$100()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/livebroadcast/weibo/WeiboStatus;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/livebroadcast/weibo/WeiboStatus;)Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mWeiboLiveData:Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    return-object v0
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onConnected()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    return-void
.end method

.method public onDisConnected()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 161
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mStop:Z

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "The current status is stopped on onDisConnected(). Skip it!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onDisConnected()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onReceiveComment(Ljava/lang/String;)V
    .locals 8
    .param p1, "object"    # Ljava/lang/String;
    .annotation runtime Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageSubscribe;
        classType = Ljava/lang/String;
        messageType = 0x1
    .end annotation

    .prologue
    .line 139
    sget-boolean v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceiveComment() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    :cond_0
    new-instance v3, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    invoke-direct {v3}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;-><init>()V

    .line 141
    .local v3, "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    new-instance v1, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;

    invoke-direct {v1, p1}, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "commentInfo":Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;
    new-instance v0, Lcom/android/camera/livebroadcast/status/Comment;

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->getMsgID()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->getNickName()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->getContent()Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->getAvatar()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/camera/livebroadcast/status/Comment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v0, "comment":Lcom/android/camera/livebroadcast/status/Comment;
    invoke-virtual {v3, v0}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->addComment(Lcom/android/camera/livebroadcast/status/Comment;)V

    .line 147
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 148
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->what:I

    .line 149
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    return-void
.end method

.method public onReceiveCommentPraise(Ljava/lang/String;)V
    .locals 7
    .param p1, "object"    # Ljava/lang/String;
    .annotation runtime Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageSubscribe;
        classType = Ljava/lang/String;
        messageType = 0x2
    .end annotation

    .prologue
    .line 93
    sget-boolean v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceiveCommentPraise() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    :cond_0
    new-instance v3, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    invoke-direct {v3}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;-><init>()V

    .line 95
    .local v3, "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    new-instance v1, Lcom/android/camera/livebroadcast/weibo/impl/PraiseInfo;

    invoke-direct {v1, p1}, Lcom/android/camera/livebroadcast/weibo/impl/PraiseInfo;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "praiseInfo":Lcom/android/camera/livebroadcast/weibo/impl/PraiseInfo;
    new-instance v2, Lcom/android/camera/livebroadcast/status/Reactions;

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/impl/PraiseInfo;->getMsgID()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/impl/PraiseInfo;->getAvatar()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/android/camera/livebroadcast/status/Reactions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v2, "reactions":Lcom/android/camera/livebroadcast/status/Reactions;
    invoke-virtual {v3, v2}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->addReactions(Lcom/android/camera/livebroadcast/status/Reactions;)V

    .line 98
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 99
    .local v0, "msg":Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v0, Landroid/os/Message;->what:I

    .line 100
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method

.method public onReceiveJoinOrExit(Ljava/lang/String;)V
    .locals 7
    .param p1, "object"    # Ljava/lang/String;
    .annotation runtime Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageSubscribe;
        classType = Ljava/lang/String;
        messageType = 0xc
    .end annotation

    .prologue
    .line 106
    sget-boolean v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceiveJoinOrExit() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    :cond_0
    new-instance v2, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    invoke-direct {v2}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;-><init>()V

    .line 108
    .local v2, "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    new-instance v3, Lcom/android/camera/livebroadcast/weibo/impl/StatusInfo;

    invoke-direct {v3, p1}, Lcom/android/camera/livebroadcast/weibo/impl/StatusInfo;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, "statusInfo":Lcom/android/camera/livebroadcast/weibo/impl/StatusInfo;
    invoke-virtual {v3}, Lcom/android/camera/livebroadcast/weibo/impl/StatusInfo;->getLiveViews()I

    move-result v0

    .line 110
    .local v0, "liveViews":I
    if-gez v0, :cond_1

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->setViewCount(I)V

    .line 114
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 115
    .local v1, "msg":Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v1, Landroid/os/Message;->what:I

    .line 116
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceiveNotice(Ljava/lang/String;)V
    .locals 9
    .param p1, "object"    # Ljava/lang/String;
    .annotation runtime Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageSubscribe;
        classType = Ljava/lang/String;
        messageType = 0x6
    .end annotation

    .prologue
    .line 122
    sget-boolean v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveNotice() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    :cond_0
    new-instance v8, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    invoke-direct {v8}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;-><init>()V

    .line 124
    .local v8, "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    new-instance v6, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;

    invoke-direct {v6, p1}, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;-><init>(Ljava/lang/String;)V

    .line 125
    .local v6, "commentInfo":Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;
    new-instance v0, Lcom/android/camera/livebroadcast/status/Comment;

    sget-object v1, Lcom/android/camera/livebroadcast/status/Comment$CommentType;->NOTICE:Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    .line 126
    invoke-virtual {v6}, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->getMsgID()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v6}, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->getNickName()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-virtual {v6}, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->getContent()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-virtual {v6}, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/livebroadcast/status/Comment;-><init>(Lcom/android/camera/livebroadcast/status/Comment$CommentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v0, "comment":Lcom/android/camera/livebroadcast/status/Comment;
    invoke-virtual {v8, v0}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->addComment(Lcom/android/camera/livebroadcast/status/Comment;)V

    .line 131
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 132
    .local v7, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v7, Landroid/os/Message;->what:I

    .line 133
    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    return-void
.end method

.method public startUpdate()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "startUpdate()+"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mStop:Z

    .line 75
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->getDefault()Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->register(Ljava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mInstance:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mWeiboLiveData:Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->getAccessToken()Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->create(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;)V

    .line 77
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mInstance:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mWeiboLiveData:Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->getRoomID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->joinRoom(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "startUpdate()-"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public stopUpdate()V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopUpdate()+"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mStop:Z

    .line 85
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->getDefault()Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->unregister(Ljava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mInstance:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->destory()V

    .line 87
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->mInstance:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->mWeiboLiveData:Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->getRoomID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->exitRoom(Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopUpdate()-"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    return-void
.end method
