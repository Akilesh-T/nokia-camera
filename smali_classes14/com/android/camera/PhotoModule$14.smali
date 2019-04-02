.class Lcom/android/camera/PhotoModule$14;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2327
    iput-object p1, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2330
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "mDisplayAsFlashRunnable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2331
    iget-object v0, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2336
    :cond_0
    :goto_0
    return-void

    .line 2334
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1200(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2335
    iget-object v0, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$9400(Lcom/android/camera/PhotoModule;Z)V

    goto :goto_0
.end method
