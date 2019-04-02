.class Lcom/android/camera/captureintent/CaptureIntentModule$3;
.super Ljava/lang/Object;
.source "CaptureIntentModule.java"

# interfaces
.implements Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/captureintent/CaptureIntentModule;
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
    .line 348
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModule$3;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReviewPlayClicked()V
    .locals 7

    .prologue
    .line 361
    iget-object v3, p0, Lcom/android/camera/captureintent/CaptureIntentModule$3;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-static {v3}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$400(Lcom/android/camera/captureintent/CaptureIntentModule;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    new-instance v1, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;-><init>()V

    .line 363
    .local v1, "eventRetrieveCaptureInfo":Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;
    iget-object v3, p0, Lcom/android/camera/captureintent/CaptureIntentModule$3;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-static {v3}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$300(Lcom/android/camera/captureintent/CaptureIntentModule;)Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 364
    invoke-virtual {v1}, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;->getCaptureVideoInfo()Lcom/android/camera/captureintent/CaptureVideoInfo;

    move-result-object v0

    .line 365
    .local v0, "captureVideoInfo":Lcom/android/camera/captureintent/CaptureVideoInfo;
    if-eqz v0, :cond_0

    .line 367
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/captureintent/CaptureIntentModule$3;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-static {v3}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$200(Lcom/android/camera/captureintent/CaptureIntentModule;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v5

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/camera/captureintent/CaptureVideoInfo;->getVideoUri()Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/CaptureVideoInfo;->getMimeType()Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/camera/CameraActivity;->launchActivityByIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v0    # "captureVideoInfo":Lcom/android/camera/captureintent/CaptureVideoInfo;
    .end local v1    # "eventRetrieveCaptureInfo":Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;
    :cond_0
    :goto_0
    return-void

    .line 368
    .restart local v0    # "captureVideoInfo":Lcom/android/camera/captureintent/CaptureVideoInfo;
    .restart local v1    # "eventRetrieveCaptureInfo":Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;
    :catch_0
    move-exception v2

    .line 369
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t view video "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/captureintent/CaptureVideoInfo;->getVideoUri()Lcom/google/common/base/Optional;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onZoomClick()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public onZoomRatioChanged(F)V
    .locals 2
    .param p1, "zoomRatio"    # F

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule$3;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$300(Lcom/android/camera/captureintent/CaptureIntentModule;)Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventZoomRatioChanged;

    invoke-direct {v1, p1}, Lcom/android/camera/captureintent/event/EventZoomRatioChanged;-><init>(F)V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 352
    return-void
.end method
