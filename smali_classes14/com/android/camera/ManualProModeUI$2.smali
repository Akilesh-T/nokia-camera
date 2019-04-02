.class Lcom/android/camera/ManualProModeUI$2;
.super Landroid/os/Handler;
.source "ManualProModeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualProModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualProModeUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualProModeUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/camera/ManualProModeUI$2;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$2;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$100(Lcom/android/camera/ManualProModeUI;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$2;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$100(Lcom/android/camera/ManualProModeUI;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
