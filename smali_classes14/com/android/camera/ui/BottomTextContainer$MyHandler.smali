.class Lcom/android/camera/ui/BottomTextContainer$MyHandler;
.super Landroid/os/Handler;
.source "BottomTextContainer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/BottomTextContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BottomTextContainer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/BottomTextContainer;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/camera/ui/BottomTextContainer$MyHandler;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/BottomTextContainer;Lcom/android/camera/ui/BottomTextContainer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/BottomTextContainer;
    .param p2, "x1"    # Lcom/android/camera/ui/BottomTextContainer$1;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/camera/ui/BottomTextContainer$MyHandler;-><init>(Lcom/android/camera/ui/BottomTextContainer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$MyHandler;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomTextContainer;->startAnimation(I)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$MyHandler;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$100(Lcom/android/camera/ui/BottomTextContainer;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$MyHandler;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$300(Lcom/android/camera/ui/BottomTextContainer;)Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$MyHandler;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$200(Lcom/android/camera/ui/BottomTextContainer;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$MyHandler;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$100(Lcom/android/camera/ui/BottomTextContainer;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;->onCameraModeSelected(I)V

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$MyHandler;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$300(Lcom/android/camera/ui/BottomTextContainer;)Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;->onCameraModeSelected(I)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
