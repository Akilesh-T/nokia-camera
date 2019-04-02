.class Lcom/android/camera/BeautyModule$9;
.super Ljava/lang/Object;
.source "BeautyModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyModule;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionAbort(I)V
    .locals 4
    .param p1, "actions"    # I

    .prologue
    const/4 v3, 0x1

    .line 1173
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

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

    .line 1174
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$1100(Lcom/android/camera/BeautyModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    :goto_0
    return-void

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1176
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1177
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 1178
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$2900(Lcom/android/camera/BeautyModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v0, v1, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$3000(Lcom/android/camera/BeautyModule;)Lcom/android/camera/BeautyUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/BeautyUI;->setSwipingEnabled(Z)V

    .line 1181
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1183
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$3200(Lcom/android/camera/BeautyModule;)V

    goto :goto_0
.end method

.method public onActionNotSupport(I)V
    .locals 4
    .param p1, "actions"    # I

    .prologue
    const/4 v3, 0x1

    .line 1155
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

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

    .line 1156
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$1100(Lcom/android/camera/BeautyModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    :goto_0
    return-void

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1158
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1159
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 1160
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$2900(Lcom/android/camera/BeautyModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v0, v1, :cond_1

    .line 1161
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$3000(Lcom/android/camera/BeautyModule;)Lcom/android/camera/BeautyUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/BeautyUI;->setSwipingEnabled(Z)V

    .line 1163
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1165
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$3200(Lcom/android/camera/BeautyModule;)V

    .line 1167
    iget-object v0, p0, Lcom/android/camera/BeautyModule$9;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;

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

    .line 1168
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
