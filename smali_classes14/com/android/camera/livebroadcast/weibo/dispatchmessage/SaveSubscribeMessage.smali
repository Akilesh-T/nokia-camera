.class public Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;
.super Ljava/lang/Object;
.source "SaveSubscribeMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private NeedClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private messageType:I

.field private method:Ljava/lang/reflect/Method;

.field private subscriber:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageType()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->messageType:I

    return v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getNeedClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->NeedClazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getSubscriber()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->subscriber:Ljava/lang/Object;

    return-object v0
.end method

.method public setMessageType(I)V
    .locals 0
    .param p1, "messageType"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->messageType:I

    .line 32
    return-void
.end method

.method public setMethod(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->method:Ljava/lang/reflect/Method;

    .line 24
    return-void
.end method

.method public setNeedClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "needClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->NeedClazz:Ljava/lang/Class;

    .line 48
    return-void
.end method

.method public setSubscriber(Ljava/lang/Object;)V
    .locals 0
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->subscriber:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaveSubscribeMessage{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->messageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", NeedClazz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/dispatchmessage/SaveSubscribeMessage;->NeedClazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
