.class Lcom/android/camera/ui/FaceView$1;
.super Landroid/os/Handler;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FaceView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/FaceView;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/FaceView;->access$002(Lcom/android/camera/ui/FaceView;Z)Z

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {v1}, Lcom/android/camera/ui/FaceView;->access$200(Lcom/android/camera/ui/FaceView;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/FaceView;->access$102(Lcom/android/camera/ui/FaceView;[Lcom/android/camera/face/FaceData;)[Lcom/android/camera/face/FaceData;

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
