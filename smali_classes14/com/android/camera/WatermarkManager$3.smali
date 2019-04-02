.class Lcom/android/camera/WatermarkManager$3;
.super Ljava/lang/Object;
.source "WatermarkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WatermarkManager;->registerWatermark()V
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
    .line 298
    iput-object p1, p0, Lcom/android/camera/WatermarkManager$3;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 301
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$3;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$800(Lcom/android/camera/WatermarkManager;)V

    .line 302
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$3;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$200(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$3;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$200(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$3;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$200(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/WatermarkManager$3;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v1}, Lcom/android/camera/WatermarkManager;->access$900(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/watermark/WatermarkInfoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setWatermarkInfoData(Lcom/android/camera/watermark/WatermarkInfoData;)V

    .line 305
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$3;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$200(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/WatermarkManager$3;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v1}, Lcom/android/camera/WatermarkManager;->access$1000(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/watermark/LocationInfoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setLocationInfoData(Lcom/android/camera/watermark/LocationInfoData;)V

    .line 306
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$3;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$200(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/WatermarkManager$3;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v1}, Lcom/android/camera/WatermarkManager;->access$1100(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/watermark/FreeTextInfoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setFreeTextInfoData(Lcom/android/camera/watermark/FreeTextInfoData;)V

    .line 307
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$3;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$1200(Lcom/android/camera/WatermarkManager;)V

    .line 308
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$3;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0, v2}, Lcom/android/camera/WatermarkManager;->access$1300(Lcom/android/camera/WatermarkManager;Z)V

    .line 309
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$3;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0, v2}, Lcom/android/camera/WatermarkManager;->access$1400(Lcom/android/camera/WatermarkManager;Z)V

    .line 311
    :cond_0
    return-void
.end method
