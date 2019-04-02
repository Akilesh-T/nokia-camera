.class Lcom/android/camera/ui/RotateTextToast$1;
.super Landroid/os/Handler;
.source "RotateTextToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/RotateTextToast;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/RotateTextToast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/RotateTextToast;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/camera/ui/RotateTextToast$1;->this$0:Lcom/android/camera/ui/RotateTextToast;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast$1;->this$0:Lcom/android/camera/ui/RotateTextToast;

    iget-object v0, v0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast$1;->this$0:Lcom/android/camera/ui/RotateTextToast;

    iget-object v0, v0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    invoke-static {v0}, Lcom/android/camera/util/AnimationUtil;->fadeOut(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast$1;->this$0:Lcom/android/camera/ui/RotateTextToast;

    iget-object v0, v0, Lcom/android/camera/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast$1;->this$0:Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, v1, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast$1;->this$0:Lcom/android/camera/ui/RotateTextToast;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
