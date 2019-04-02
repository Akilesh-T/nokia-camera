.class Lcom/android/camera/PanoramaUIMTK$3;
.super Landroid/os/Handler;
.source "PanoramaUIMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaUIMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaUIMTK;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaUIMTK;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaUIMTK;

    .prologue
    .line 870
    iput-object p1, p0, Lcom/android/camera/PanoramaUIMTK$3;->this$0:Lcom/android/camera/PanoramaUIMTK;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0xc8

    const-wide/16 v4, 0x32

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 872
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 898
    :goto_0
    return-void

    .line 874
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK$3;->this$0:Lcom/android/camera/PanoramaUIMTK;

    invoke-static {v0}, Lcom/android/camera/PanoramaUIMTK;->access$100(Lcom/android/camera/PanoramaUIMTK;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 875
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK$3;->this$0:Lcom/android/camera/PanoramaUIMTK;

    invoke-static {v0}, Lcom/android/camera/PanoramaUIMTK;->access$200(Lcom/android/camera/PanoramaUIMTK;)Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    move-result-object v0

    sget-object v1, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_SLOW:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    if-ne v0, v1, :cond_0

    .line 876
    invoke-virtual {p0, v2, v6, v7}, Lcom/android/camera/PanoramaUIMTK$3;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 878
    :cond_0
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/camera/PanoramaUIMTK$3;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 883
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK$3;->this$0:Lcom/android/camera/PanoramaUIMTK;

    invoke-static {v0}, Lcom/android/camera/PanoramaUIMTK;->access$100(Lcom/android/camera/PanoramaUIMTK;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK$3;->this$0:Lcom/android/camera/PanoramaUIMTK;

    invoke-static {v0}, Lcom/android/camera/PanoramaUIMTK;->access$200(Lcom/android/camera/PanoramaUIMTK;)Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    move-result-object v0

    sget-object v1, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_SLOW:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    if-ne v0, v1, :cond_1

    .line 885
    invoke-virtual {p0, v3, v6, v7}, Lcom/android/camera/PanoramaUIMTK$3;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 887
    :cond_1
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/camera/PanoramaUIMTK$3;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 892
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK$3;->this$0:Lcom/android/camera/PanoramaUIMTK;

    invoke-static {v0}, Lcom/android/camera/PanoramaUIMTK;->access$100(Lcom/android/camera/PanoramaUIMTK;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 895
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK$3;->this$0:Lcom/android/camera/PanoramaUIMTK;

    invoke-static {v0}, Lcom/android/camera/PanoramaUIMTK;->access$300(Lcom/android/camera/PanoramaUIMTK;)V

    goto :goto_0

    .line 872
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
