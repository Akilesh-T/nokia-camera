.class Lcom/android/camera/ui/watermark/WatermarkFragment$2;
.super Ljava/lang/Object;
.source "WatermarkFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/watermark/WatermarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/watermark/WatermarkFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/watermark/WatermarkFragment;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$2;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$2;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v0}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$400(Lcom/android/camera/ui/watermark/WatermarkFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$2;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$300(Lcom/android/camera/ui/watermark/WatermarkFragment;Z)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
