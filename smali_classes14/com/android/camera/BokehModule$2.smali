.class Lcom/android/camera/BokehModule$2;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/camera/BokehModule$2;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionAbort(I)V
    .locals 4
    .param p1, "actions"    # I

    .prologue
    const/4 v3, 0x1

    .line 278
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    .line 279
    iget-object v0, p0, Lcom/android/camera/BokehModule$2;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$400(Lcom/android/camera/BokehModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehModule$2;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/camera/BokehModule$2;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/camera/BokehModule$2;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$600(Lcom/android/camera/BokehModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v0, v1, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/camera/BokehModule$2;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$700(Lcom/android/camera/BokehModule;)Lcom/android/camera/BokehUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/BokehUI;->setSwipingEnabled(Z)V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule$2;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$800(Lcom/android/camera/BokehModule;)V

    goto :goto_0
.end method

.method public onActionNotSupport(I)V
    .locals 4
    .param p1, "actions"    # I

    .prologue
    const/4 v3, 0x1

    .line 261
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    .line 262
    iget-object v0, p0, Lcom/android/camera/BokehModule$2;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$400(Lcom/android/camera/BokehModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehModule$2;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/camera/BokehModule$2;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 266
    iget-object v0, p0, Lcom/android/camera/BokehModule$2;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$600(Lcom/android/camera/BokehModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v0, v1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/camera/BokehModule$2;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$700(Lcom/android/camera/BokehModule;)Lcom/android/camera/BokehUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/BokehUI;->setSwipingEnabled(Z)V

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule$2;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$800(Lcom/android/camera/BokehModule;)V

    .line 272
    iget-object v0, p0, Lcom/android/camera/BokehModule$2;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

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

    .line 273
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
