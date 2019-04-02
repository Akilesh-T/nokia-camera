.class public Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;
.super Ljava/lang/Object;
.source "DispatchMessageEventBus.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static defaultInstance:Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;


# instance fields
.field private gson:Lcom/google/gson/Gson;

.field private messageType:Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageType;

.field private subscribeMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->messageType:Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageType;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageType;

    invoke-direct {v0}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageType;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->messageType:Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageType;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->subscribeMessageList:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->subscribeMessageList:Ljava/util/List;

    .line 45
    :cond_1
    return-void
.end method

.method private addRegisterObject(Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;)V
    .locals 1
    .param p1, "saveSubscribeMessage"    # Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->subscribeMessageList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    if-eqz p1, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->deleteOldRegisterObject(Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->subscribeMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private deleteOldRegisterObject(Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;)V
    .locals 6
    .param p1, "saveSubscribeMessage"    # Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;

    .prologue
    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->subscribeMessageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 108
    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->subscribeMessageList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;

    .line 110
    .local v2, "subscribeMessageSoftReference":Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;
    move-object v1, v2

    .line 111
    .local v1, "message":Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;
    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    sget-object v3, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteOldRegisterObject: message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->subscribeMessageList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 115
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 118
    .end local v1    # "message":Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;
    .end local v2    # "subscribeMessageSoftReference":Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;
    :cond_2
    return-void
.end method

.method public static getDefault()Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->defaultInstance:Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->defaultInstance:Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;

    invoke-direct {v0}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;-><init>()V

    sput-object v0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->defaultInstance:Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->defaultInstance:Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private invokeMethod(Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;Ljava/lang/String;)V
    .locals 8
    .param p1, "saveSubscribeMessage"    # Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;
    .param p2, "messageContent"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 180
    .local v4, "subscriber":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->getSubscriber()Ljava/lang/Object;

    move-result-object v4

    .line 181
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 184
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->getNeedClazz()Ljava/lang/Class;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v3

    .line 188
    .local v3, "needClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 207
    .end local v3    # "needClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "subscriber":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 189
    .restart local v3    # "needClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "subscriber":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "needClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "subscriber":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 195
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 196
    const/4 v5, 0x1

    :try_start_3
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    .line 197
    :catch_2
    move-exception v1

    .line 198
    .local v1, "e1":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 191
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    .end local v1    # "e1":Ljava/lang/IllegalAccessException;
    .restart local v3    # "needClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "subscriber":Ljava/lang/Object;
    :catch_3
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_0

    .line 202
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "needClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "subscriber":Ljava/lang/Object;
    :catch_4
    move-exception v0

    .line 203
    .local v0, "e":Lcom/google/gson/JsonParseException;
    sget-object v5, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invokeMethod:----JsonParseException= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    :catch_5
    move-exception v1

    .line 200
    .local v1, "e1":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    .end local v1    # "e1":Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public post(ILjava/lang/String;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "messageContent"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->subscribeMessageList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->subscribeMessageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->messageType:Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageType;

    if-nez v4, :cond_2

    .line 153
    :cond_0
    sget-object v4, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->TAG:Ljava/lang/String;

    const-string v5, "post: please register DispatchMessageEventBus before user post method."

    invoke-static {v4, v5}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1
    return-void

    .line 158
    :cond_2
    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->subscribeMessageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;

    .line 160
    .local v2, "subscribeMessageSoftReference":Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;
    move-object v1, v2

    .line 161
    .local v1, "saveSubscribeMessage":Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;
    iget-object v5, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->messageType:Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageType;

    invoke-virtual {v5}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageType;->getMessageTypeMap()Ljava/util/HashMap;

    move-result-object v0

    .line 162
    .local v0, "messageTypeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_4

    .line 163
    sget-object v5, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->TAG:Ljava/lang/String;

    const-string v6, "post: \u4e92\u52a8\u4e0b\u53d1\u7684\u7528\u6237\u6d88\u606f\u7c7b\u578b\uff0c\u548c\u6ce8\u518c\u7684\u6d88\u606f\u7c7b\u578b\u5339\u914d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5"

    invoke-static {v5, v6}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_4
    sget-object v5, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "post("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): message"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->getMessageType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 169
    .local v3, "subscribeMessageType":Ljava/lang/Integer;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 170
    invoke-direct {p0, v1, p2}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->invokeMethod(Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public register(Ljava/lang/Object;)V
    .locals 11
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    .line 53
    if-nez p1, :cond_1

    .line 54
    sget-object v6, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->TAG:Ljava/lang/String;

    const-string v7, "\u8ba2\u9605\u8005\u4e0d\u80fd\u4e3anull,\u8bf7\u68c0\u67e5 "

    invoke-static {v6, v7}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 58
    .local v5, "subscriberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 61
    .local v3, "methods":[Ljava/lang/reflect/Method;
    array-length v7, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v3, v6

    .line 65
    .local v2, "method":Ljava/lang/reflect/Method;
    const-class v8, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageSubscribe;

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    .line 66
    .local v1, "hasAnnotation":Z
    if-eqz v1, :cond_2

    .line 70
    const-class v8, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageSubscribe;

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageSubscribe;

    .line 71
    .local v0, "annotation":Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageSubscribe;
    const-string v8, "tag"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "register: method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ; id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 72
    invoke-interface {v0}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageSubscribe;->messageType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ; description = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 73
    invoke-interface {v0}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageSubscribe;->classType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 71
    invoke-static {v8, v9}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v4, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;

    invoke-direct {v4}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;-><init>()V

    .line 75
    .local v4, "saveSubscribeMessage":Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;
    invoke-virtual {v4, v2}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->setMethod(Ljava/lang/reflect/Method;)V

    .line 76
    invoke-interface {v0}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageSubscribe;->classType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->setNeedClazz(Ljava/lang/Class;)V

    .line 77
    invoke-interface {v0}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageSubscribe;->messageType()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->setMessageType(I)V

    .line 78
    invoke-virtual {v4, p1}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->setSubscriber(Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0, v4}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->addRegisterObject(Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;)V

    .line 61
    .end local v0    # "annotation":Lcom/android/camera/livebroadcast/weibo/dispatchmessage/MessageSubscribe;
    .end local v4    # "saveSubscribeMessage":Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .locals 6
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    .line 124
    monitor-enter p0

    if-nez p1, :cond_1

    .line 125
    :try_start_0
    sget-object v3, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->TAG:Ljava/lang/String;

    const-string v4, "\u8ba2\u9605\u8005\u5df2\u7ecf\u662fnull,\u8fd8\u6709\u5fc5\u8981\u89e3\u9664\u6ce8\u518c\u5417\uff1f\u8bf7\u68c0\u67e5"

    invoke-static {v3, v4}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 128
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->subscribeMessageList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->subscribeMessageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 129
    :cond_2
    sget-object v3, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subscriber to unregister was not registered before: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 133
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->subscribeMessageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->subscribeMessageList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;

    .line 137
    .local v2, "subscribeMessageSoftReference":Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;
    move-object v1, v2

    .line 138
    .local v1, "saveSubscribeMessage":Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;
    if-nez v1, :cond_5

    .line 133
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_5
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->getSubscriber()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 140
    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/DispatchMessageEventBus;->subscribeMessageList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method
