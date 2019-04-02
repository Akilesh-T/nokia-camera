.class Lcom/android/camera/WatermarkManager$6;
.super Landroid/os/Handler;
.source "WatermarkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/WatermarkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WatermarkManager;


# direct methods
.method constructor <init>(Lcom/android/camera/WatermarkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/camera/WatermarkManager$6;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 635
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 637
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$6;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$700(Lcom/android/camera/WatermarkManager;)V

    goto :goto_0

    .line 640
    :pswitch_1
    invoke-static {}, Lcom/android/camera/WatermarkManager;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "DO_UPDATE_WEATHER_INFO_FINISH"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$6;->this$0:Lcom/android/camera/WatermarkManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/WatermarkManager;->access$1702(Lcom/android/camera/WatermarkManager;Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;)Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    .line 642
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$6;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$1600(Lcom/android/camera/WatermarkManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$6;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$200(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$6;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$200(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/WatermarkManager$6;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v1}, Lcom/android/camera/WatermarkManager;->access$900(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/watermark/WatermarkInfoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setWatermarkInfoData(Lcom/android/camera/watermark/WatermarkInfoData;)V

    .line 645
    :cond_1
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Watermark;->ENABLE_TENCENT_POI:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/WatermarkManager$6;->this$0:Lcom/android/camera/WatermarkManager;

    .line 646
    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$900(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/watermark/WatermarkInfoData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/WatermarkManager$6;->this$0:Lcom/android/camera/WatermarkManager;

    .line 647
    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$900(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/watermark/WatermarkInfoData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/watermark/WatermarkInfoData;->mCityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$6;->this$0:Lcom/android/camera/WatermarkManager;

    iget-object v1, p0, Lcom/android/camera/WatermarkManager$6;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v1}, Lcom/android/camera/WatermarkManager;->access$900(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/watermark/WatermarkInfoData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/watermark/WatermarkInfoData;->mCityName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/WatermarkManager;->setLocationInfoData(Ljava/lang/String;Z)V

    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
