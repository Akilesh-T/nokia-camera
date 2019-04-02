.class Lcom/android/camera/captureintent/CaptureIntentModule$1;
.super Ljava/lang/Object;
.source "CaptureIntentModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/CaptureIntentModule;->onFirstPreviewArrived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/CaptureIntentModule;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/CaptureIntentModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/CaptureIntentModule;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModule$1;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule$1;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$000(Lcom/android/camera/captureintent/CaptureIntentModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule$1;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$100(Lcom/android/camera/captureintent/CaptureIntentModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule$1;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$200(Lcom/android/camera/captureintent/CaptureIntentModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->requireUpdateStorageSpaceAndHint()V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule$1;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$102(Lcom/android/camera/captureintent/CaptureIntentModule;Z)Z

    goto :goto_0
.end method
