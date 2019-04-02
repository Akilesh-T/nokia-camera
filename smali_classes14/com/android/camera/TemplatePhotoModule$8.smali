.class Lcom/android/camera/TemplatePhotoModule$8;
.super Ljava/lang/Object;
.source "TemplatePhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/TemplatePhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TemplatePhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 999
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule$8;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1002
    invoke-static {}, Lcom/android/camera/TemplatePhotoModule;->access$1200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "mDisplayAsFlashRunnable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$8;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$1100(Lcom/android/camera/TemplatePhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$8;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$3900(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$8;->this$0:Lcom/android/camera/TemplatePhotoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/TemplatePhotoModule;->access$4000(Lcom/android/camera/TemplatePhotoModule;Z)V

    goto :goto_0
.end method
