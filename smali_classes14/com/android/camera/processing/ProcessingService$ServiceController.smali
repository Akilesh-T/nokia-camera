.class public Lcom/android/camera/processing/ProcessingService$ServiceController;
.super Landroid/content/BroadcastReceiver;
.source "ProcessingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/ProcessingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/processing/ProcessingService;


# direct methods
.method public constructor <init>(Lcom/android/camera/processing/ProcessingService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/processing/ProcessingService;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/processing/ProcessingService$ServiceController;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.camera.processing.PAUSE"

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$ServiceController;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v0}, Lcom/android/camera/processing/ProcessingService;->access$000(Lcom/android/camera/processing/ProcessingService;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.camera.processing.RESUME"

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$ServiceController;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v0}, Lcom/android/camera/processing/ProcessingService;->access$100(Lcom/android/camera/processing/ProcessingService;)V

    goto :goto_0
.end method
