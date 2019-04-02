.class Lcom/android/camera/PhotoModule$2;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionAbort(I)V
    .locals 4
    .param p1, "actions"    # I

    .prologue
    const/4 v3, 0x1

    .line 285
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action abort : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v0, v1, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)V

    goto :goto_0
.end method

.method public onActionNotSupport(I)V
    .locals 4
    .param p1, "actions"    # I

    .prologue
    const/4 v3, 0x1

    .line 267
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not Support action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v0, v1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)V

    .line 279
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action not support : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
