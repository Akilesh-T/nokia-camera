.class Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$9;
.super Ljava/lang/Object;
.source "LiveMsgManager.java"

# interfaces
.implements Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->share(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$9;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "s2"    # Ljava/lang/String;

    .prologue
    .line 423
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "integer"    # Ljava/lang/Integer;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 428
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 419
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$9;->onSuccess(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method
