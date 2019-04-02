.class Lcom/android/camera/livebroadcast/facebook/FacebookStatus$1;
.super Landroid/os/Handler;
.source "FacebookStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$1;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$1;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$000(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)V

    .line 44
    return-void
.end method
