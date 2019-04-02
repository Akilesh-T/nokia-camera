.class Lcom/android/camera/watermark/WatermarkLocationActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WatermarkLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/watermark/WatermarkLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/watermark/WatermarkLocationActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/watermark/WatermarkLocationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/watermark/WatermarkLocationActivity;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/watermark/WatermarkLocationActivity$1;->this$0:Lcom/android/camera/watermark/WatermarkLocationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity$1;->this$0:Lcom/android/camera/watermark/WatermarkLocationActivity;

    invoke-virtual {v0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->finish()V

    .line 42
    return-void
.end method
