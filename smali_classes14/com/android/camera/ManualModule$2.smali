.class Lcom/android/camera/ManualModule$2;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionAbort(I)V
    .locals 4
    .param p1, "actions"    # I

    .prologue
    const/4 v3, 0x1

    .line 241
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

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

    .line 242
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$500(Lcom/android/camera/ManualModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$700(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v0, v1, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$800(Lcom/android/camera/ManualModule;)Lcom/android/camera/ManualAbstractUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ManualAbstractUI;->setSwipingEnabled(Z)V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 251
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$900(Lcom/android/camera/ManualModule;)V

    goto :goto_0
.end method

.method public onActionNotSupport(I)V
    .locals 4
    .param p1, "actions"    # I

    .prologue
    const/4 v3, 0x1

    .line 224
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

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

    .line 225
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$500(Lcom/android/camera/ManualModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$700(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v0, v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$800(Lcom/android/camera/ManualModule;)Lcom/android/camera/ManualAbstractUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ManualAbstractUI;->setSwipingEnabled(Z)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$900(Lcom/android/camera/ManualModule;)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/ManualModule$2;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$1000(Lcom/android/camera/ManualModule;)Lcom/android/camera/CameraActivity;

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

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
